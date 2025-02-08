# Network Bandwidth Test Results

## Test Information
* Date: Sat Feb  8 06:39:29 PST 2025
* Team Number: 4
* Bitfile Type: nic
* Protocol: UDP
* Packet Size: 512 bytes
* Test Duration: 30 seconds
* Test Interval: 2 seconds

## Test Results

### Test: nf0 → nf1

```
------------------------------------------------------------
Client connecting to nf1.usc.edu, UDP port 5001
Sending 512 byte datagrams
UDP buffer size:  512 KByte (WARNING: requested  256 KByte)
------------------------------------------------------------
[  3] local 10.136.201.0 port 48184 connected with 10.136.200.254 port 5001
[ ID] Interval       Transfer     Bandwidth
[  3]  0.0- 2.0 sec  60.3 MBytes   253 Mbits/sec
[  3]  2.0- 4.0 sec  59.3 MBytes   249 Mbits/sec
[  3]  4.0- 6.0 sec  57.9 MBytes   243 Mbits/sec
[  3]  6.0- 8.0 sec  56.9 MBytes   239 Mbits/sec
[  3]  8.0-10.0 sec  60.0 MBytes   252 Mbits/sec
[  3] 10.0-12.0 sec  60.3 MBytes   253 Mbits/sec
[  3] 12.0-14.0 sec  59.3 MBytes   249 Mbits/sec
[  3] 14.0-16.0 sec  58.3 MBytes   244 Mbits/sec
[  3] 16.0-18.0 sec  56.9 MBytes   239 Mbits/sec
[  3] 18.0-20.0 sec  59.6 MBytes   250 Mbits/sec
[  3] 20.0-22.0 sec  60.3 MBytes   253 Mbits/sec
[  3] 22.0-24.0 sec  59.3 MBytes   249 Mbits/sec
[  3] 24.0-26.0 sec  58.3 MBytes   244 Mbits/sec
[  3] 26.0-28.0 sec  57.3 MBytes   240 Mbits/sec
[  3] 28.0-30.0 sec  59.2 MBytes   248 Mbits/sec
[  3]  0.0-30.0 sec   883 MBytes   247 Mbits/sec
[  3] Sent 1809220 datagrams
[  3] Server Report:
[  3]  0.0-30.0 sec   875 MBytes   244 Mbits/sec   0.681 ms 18216/1809219 (1%)
[  3]  0.0-30.0 sec  1 datagrams received out-of-order
```


### Test: nf1 → nf2

```
------------------------------------------------------------
Client connecting to nf2.usc.edu, UDP port 5001
Sending 512 byte datagrams
UDP buffer size:  512 KByte (WARNING: requested  256 KByte)
------------------------------------------------------------
[  3] local 10.136.200.254 port 37870 connected with 10.136.200.253 port 5001
[ ID] Interval       Transfer     Bandwidth
[  3]  0.0- 2.0 sec  59.6 MBytes   250 Mbits/sec
[  3]  2.0- 4.0 sec  58.6 MBytes   246 Mbits/sec
[  3]  4.0- 6.0 sec  57.7 MBytes   242 Mbits/sec
[  3]  6.0- 8.0 sec  57.3 MBytes   240 Mbits/sec
[  3]  8.0-10.0 sec  59.3 MBytes   249 Mbits/sec
[  3] 10.0-12.0 sec  60.0 MBytes   252 Mbits/sec
[  3] 12.0-14.0 sec  59.3 MBytes   249 Mbits/sec
[  3] 14.0-16.0 sec  58.9 MBytes   247 Mbits/sec
[  3] 16.0-18.0 sec  58.3 MBytes   244 Mbits/sec
[  3] 18.0-20.0 sec  57.3 MBytes   240 Mbits/sec
[  3] 20.0-22.0 sec  57.7 MBytes   242 Mbits/sec
[  3] 22.0-24.0 sec  60.9 MBytes   255 Mbits/sec
[  3] 24.0-26.0 sec  60.1 MBytes   252 Mbits/sec
[  3] 26.0-28.0 sec  59.2 MBytes   248 Mbits/sec
[  3] 28.0-30.0 sec  58.6 MBytes   246 Mbits/sec
[  3]  0.0-30.0 sec   883 MBytes   247 Mbits/sec
[  3] Sent 1807824 datagrams
[  3] Server Report:
[  3]  0.0-30.0 sec   871 MBytes   243 Mbits/sec   0.477 ms 24755/1807823 (1.4%)
[  3]  0.0-30.0 sec  1 datagrams received out-of-order
```


### Test: nf2 → nf3

```
------------------------------------------------------------
Client connecting to nf3.usc.edu, UDP port 5001
Sending 512 byte datagrams
UDP buffer size:  512 KByte (WARNING: requested  256 KByte)
------------------------------------------------------------
[  3] local 10.136.200.253 port 48846 connected with 10.136.202.16 port 5001
[ ID] Interval       Transfer     Bandwidth
[  3]  0.0- 2.0 sec  26.0 MBytes   109 Mbits/sec
[  3]  2.0- 4.0 sec  57.6 MBytes   242 Mbits/sec
[  3]  4.0- 6.0 sec  60.8 MBytes   255 Mbits/sec
[  3]  6.0- 8.0 sec  59.8 MBytes   251 Mbits/sec
[  3]  8.0-10.0 sec  58.6 MBytes   246 Mbits/sec
[  3] 10.0-12.0 sec  57.9 MBytes   243 Mbits/sec
[  3] 12.0-14.0 sec  58.3 MBytes   244 Mbits/sec
[  3] 14.0-16.0 sec  60.3 MBytes   253 Mbits/sec
[  3] 16.0-18.0 sec  59.4 MBytes   249 Mbits/sec
[  3] 18.0-20.0 sec  58.2 MBytes   244 Mbits/sec
[  3] 20.0-22.0 sec  57.3 MBytes   240 Mbits/sec
[  3] 22.0-24.0 sec  58.9 MBytes   247 Mbits/sec
[  3] 24.0-26.0 sec  60.0 MBytes   252 Mbits/sec
[  3] 26.0-28.0 sec  59.0 MBytes   247 Mbits/sec
[  3] 28.0-30.0 sec  58.3 MBytes   244 Mbits/sec
[  3]  0.0-30.0 sec   850 MBytes   238 Mbits/sec
[  3] Sent 1741802 datagrams
[  3] Server Report:
[  3]  0.0-30.0 sec   832 MBytes   233 Mbits/sec   0.005 ms 37879/1741801 (2.2%)
[  3]  0.0-30.0 sec  1 datagrams received out-of-order
```


### Test: nf3 → nf0

```
------------------------------------------------------------
Client connecting to nf0.usc.edu, UDP port 5001
Sending 512 byte datagrams
UDP buffer size:  512 KByte (WARNING: requested  256 KByte)
------------------------------------------------------------
[  3] local 10.136.202.16 port 40317 connected with 10.136.201.0 port 5001
[ ID] Interval       Transfer     Bandwidth
[  3]  0.0- 2.0 sec  58.9 MBytes   247 Mbits/sec
[  3]  2.0- 4.0 sec  57.7 MBytes   242 Mbits/sec
[  3]  4.0- 6.0 sec  57.0 MBytes   239 Mbits/sec
[  3]  6.0- 8.0 sec  60.6 MBytes   254 Mbits/sec
[  3]  8.0-10.0 sec  59.5 MBytes   250 Mbits/sec
[  3] 10.0-12.0 sec  58.4 MBytes   245 Mbits/sec
[  3] 12.0-14.0 sec  57.6 MBytes   242 Mbits/sec
[  3] 14.0-16.0 sec  58.9 MBytes   247 Mbits/sec
[  3] 16.0-18.0 sec  60.0 MBytes   252 Mbits/sec
[  3] 18.0-20.0 sec  59.0 MBytes   247 Mbits/sec
[  3] 20.0-22.0 sec  57.9 MBytes   243 Mbits/sec
[  3] 22.0-24.0 sec  56.9 MBytes   239 Mbits/sec
[  3] 24.0-26.0 sec  60.8 MBytes   255 Mbits/sec
[  3] 26.0-28.0 sec  59.5 MBytes   250 Mbits/sec
[  3] 28.0-30.0 sec  58.6 MBytes   246 Mbits/sec
[  3]  0.0-30.0 sec   881 MBytes   246 Mbits/sec
[  3] Sent 1805032 datagrams
[  3] Server Report:
[  3]  0.0-30.0 sec   868 MBytes   243 Mbits/sec   0.004 ms 27399/1805031 (1.5%)
[  3]  0.0-30.0 sec  1 datagrams received out-of-order
```


## Average Bandwidth
Average bandwidth across all tests: 240.75 Mbits/sec

