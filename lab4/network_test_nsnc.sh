# chmod a+x network_test_nsnc.sh
# ./network_test_nsnc.sh <TEAM #> <SSH_PASSWD>
#!/bin/bash
#!/bin/bash

# Function to show usage
usage() {
    echo "Usage: $0 [-b <nic|router>] [-t <packet_size>] [-l <test_duration>] [-i <interval>] [-u]"
    echo "Options:"
    echo "  -b    : Bitfile type (nic or router), default: nic"
    echo "  -t    : Packet size in bytes, default: 512"
    echo "  -l    : Test duration in seconds, default: 30"
    echo "  -i    : Test interval in seconds, default: 2"
    echo "  -u    : Use UDP mode (default: TCP)"
    exit 1
}

# Default values
TEAM_NUM=4
PASSWORD="4uq+azHY/RJv"
BITFILE_TYPE="nic"
PACKET_SIZE=512
TEST_DURATION=30
INTERVAL=2
UDP_MODE=0

# Parse optional parameters
while getopts "b:k:t:l:i:u" opt; do
    case $opt in
        b) BITFILE_TYPE=$OPTARG ;;
        t) PACKET_SIZE=$OPTARG ;;
        l) TEST_DURATION=$OPTARG ;;
        i) INTERVAL=$OPTARG ;;
        u) UDP_MODE=1 ;;
        *) usage ;;
    esac
done

OUTPUT_FILE="bandwidth_test_results.md"

# Compute node numbers
ND=$(($TEAM_NUM % 5))
CL=$(( $(($TEAM_NUM / 5)) * 5))
M0=$(($ND + $CL))  # netfpga node
M1=$(( $(( $(($ND + 1)) % 5)) + $CL))
M2=$(( $(( $(($ND + 2)) % 5)) + $CL))
M3=$(( $(( $(($ND + 3)) % 5)) + $CL))
M4=$(( $(( $(($ND + 4)) % 5)) + $CL))

# Create test results file
echo "# Network Bandwidth Test Results" > $OUTPUT_FILE
echo "" >> $OUTPUT_FILE
echo "## Test Information" >> $OUTPUT_FILE
echo "* Date: $(date)" >> $OUTPUT_FILE
echo "* Team Number: $TEAM_NUM" >> $OUTPUT_FILE
echo "* Bitfile Type: $BITFILE_TYPE" >> $OUTPUT_FILE
echo "* Protocol: $([ $UDP_MODE -eq 1 ] && echo "UDP" || echo "TCP")" >> $OUTPUT_FILE
echo "* Packet Size: $PACKET_SIZE bytes" >> $OUTPUT_FILE
echo "* Test Duration: $TEST_DURATION seconds" >> $OUTPUT_FILE
echo "* Test Interval: $INTERVAL seconds" >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE
echo "## Test Results" >> $OUTPUT_FILE

# Set bitfile path based on type
if [ "$BITFILE_TYPE" = "router" ]; then
    BITFILE="/home/netfpga/bitfiles/reference_router.bit"
else
    BITFILE="/home/netfpga/bitfiles/reference_nic.bit"
fi

# Download bit file on nf4
sshpass -p $PASSWORD ssh -o StrictHostKeyChecking=no netfpga@nf$M0.usc.edu "nf_download $BITFILE"

# Wait for bit file download to complete
sleep 5

# Start iperf servers on all nodes
for node in $M1 $M2 $M3 $M4; do
    UDP_FLAG=""
    [ $UDP_MODE -eq 1 ] && UDP_FLAG="-u"
    sshpass -p $PASSWORD ssh -o StrictHostKeyChecking=no node$ND@nf$node.usc.edu "iperf -s $UDP_FLAG" > /dev/null 2>&1 &
    sleep 1
done

# Function to extract bandwidth from iperf output
extract_bandwidth() {
    local output=$1
    if [ $UDP_MODE -eq 1 ]; then
        # For UDP, use the server report bandwidth
        echo "$output" | grep -i "Server Report" -A 1 | tail -n 1 | awk '{print $7}'
    else
        # For TCP, use the final bandwidth
        echo "$output" | tail -n 1 | awk '{print $7}'
    fi
}

# Create temporary files for results
TEMP_FILE1=$(mktemp)
TEMP_FILE2=$(mktemp)
TEMP_FILE3=$(mktemp)
TEMP_FILE4=$(mktemp)
BW_FILE=$(mktemp)

# Test function
run_iperf_test() {
    local server_node=$1
    local client_node=$2
    local output_file=$3
    local bw_file=$4
    
    echo "" >> $output_file
    echo "### Test: nf$client_node → nf$server_node" >> $output_file
    echo "" >> $output_file
    echo "\`\`\`" >> $output_file
    
    # Prepare UDP-specific parameters
    local PROTO_PARAMS=""
    if [ $UDP_MODE -eq 1 ]; then
        PROTO_PARAMS="-u -w 256K -l $PACKET_SIZE -b 1G"
    fi
    
    # Start client and collect results
    local result=$(sshpass -p $PASSWORD ssh -o StrictHostKeyChecking=no node$ND@nf$client_node.usc.edu \
        "iperf -c nf$server_node.usc.edu $PROTO_PARAMS -i $INTERVAL -t $TEST_DURATION")
    echo "$result" >> $output_file
    
    # Extract and store bandwidth
    local bw=$(extract_bandwidth "$result")
    echo "$bw" >> $bw_file
    
    echo "\`\`\`" >> $output_file
    echo "" >> $output_file
    
    # Print completion message
    echo "Completed: nf$client_node → nf$server_node (${bw} Mbits/sec)"
}

echo "Starting iperf clients..."

# Execute test combinations in background with separate output files
run_iperf_test $M2 $M1 $TEMP_FILE1 $BW_FILE &
PID1=$!
run_iperf_test $M3 $M2 $TEMP_FILE2 $BW_FILE &
PID2=$!
run_iperf_test $M4 $M3 $TEMP_FILE3 $BW_FILE &
PID3=$!
run_iperf_test $M1 $M4 $TEMP_FILE4 $BW_FILE &
PID4=$!

# Wait for all tests to complete
wait $PID1 $PID2 $PID3 $PID4

# Combine results in correct order
cat $TEMP_FILE1 >> $OUTPUT_FILE
cat $TEMP_FILE2 >> $OUTPUT_FILE
cat $TEMP_FILE3 >> $OUTPUT_FILE
cat $TEMP_FILE4 >> $OUTPUT_FILE

# Calculate average bandwidth
total=0
count=0
while read bw; do
    if [ ! -z "$bw" ]; then
        total=$(echo "$total + $bw" | bc)
        count=$((count + 1))
    fi
done < $BW_FILE

if [ $count -gt 0 ]; then
    average=$(echo "scale=2; $total / $count" | bc)
    echo "" >> $OUTPUT_FILE
    echo "## Average Bandwidth" >> $OUTPUT_FILE
	echo "Average bandwidth across all tests: $average Mbits/sec"
    echo "Average bandwidth across all tests: $average Mbits/sec" >> $OUTPUT_FILE
    echo "" >> $OUTPUT_FILE
fi

# Clean up temporary files
rm -f $TEMP_FILE1 $TEMP_FILE2 $TEMP_FILE3 $TEMP_FILE4 $BW_FILE

echo "All tests completed. Results saved in $OUTPUT_FILE"
