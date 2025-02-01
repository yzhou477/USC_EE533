# Lab3 report


* [Pattern Matching Algorithm](#1)
* [QA](#2)
* [Schematics](#3)
* [Generated Verilog](#4)
* [Testbench and Waveform](#5)


<h4 id="1"> Pattern Matching Algorithm </h4>

1. Get a 112 bits data block by concatenating the lower 48 bits of the previous packet data with the lower 64 bits of the current packet data;
2. Divide the 112 bits data block into 8 consecutive 56 bits segments;
3. Each segment is compared against a fixed 56-bit pattern, where bytes at positions where amask(x) equals 0 can be ignored during comparison;
4. hwregA[62:56] acts as the amask[6:0], the default of amask[6:0] is 7'b 1111111;
5. Only when a segment matches the pattern, match_en is 1, mrst is 0, and no match was found in the previous packet, the 'match' signal is set to 1;



<h4 id="2"> QA </h4>

1. amask[6:0] is a 7-bit mask. If amask[x] == 0, the corresponding xth byte in the data being compared can be ignored.
2. busmerge module concatenates the lower 48 bits of the previous packet data with the lower 64 bits of the current packet data.
3. The comp8 module compares two 8 bits data, and sets 'EQ' to 1 only when all bits between them match perfectly.
4. The dual9Bmem is used to store the packet data that is not dropped. And these data can be accessed.


<h4 id="3"> Schematics </h3>

Comparator

![comparator_sch](./Pictures/comparator_sch.png)

detect7B

![detect7B_sch](./Pictures/detect7B_sch.png)

dropfifo

![dropfifo_sch](./Pictures/dropfifo_sch.png)

wordmatch

![wordmatch_sch](./Pictures/wordmatch_sch.png)

reg9B

![reg9B_sch](./Pictures/reg9B_sch.png)

<h4 id="4"> Generated Verilog </h4>

comparator

![comparator_v01](./Pictures/comparator_v01.png)

![comparator_v02](./Pictures/comparator_v02.png)

![comparator_v03](./Pictures/comparator_v03.png)

![comparator_v04](./Pictures/comparator_v04.png)

![comparator_v05](./Pictures/comparator_v05.png)

![comparator_v06](./Pictures/comparator_v06.png)

![comparator_v07](./Pictures/comparator_v07.png)

reg9B

![reg9B_v01](./Pictures/reg9B_v01.png)

![reg9B_v02](./Pictures/reg9B_v02.png)

![reg9B_v03](./Pictures/reg9B_v03.png)

![reg9B_v04](./Pictures/reg9B_v04.png)

![reg9B_v05](./Pictures/reg9B_v05.png)

![reg9B_v06](./Pictures/reg9B_v06.png)

![reg9B_v07](./Pictures/reg9B_v07.png)

wordmatch

![wordmatch_v01](./Pictures/wordmatch_v01.png)

![wordmatch_v02](./Pictures/wordmatch_v02.png)

![wordmatch_v03](./Pictures/wordmatch_v03.png)

detect7B

![detect7B_v01](./Pictures/detect7B_v01.png)

dropfifo

![dropfifo_v01](./Pictures/dropfifo_v01.png)

![dropfifo_v02](./Pictures/dropfifo_v02.png)

![dropfifo_v03](./Pictures/dropfifo_v03.png)

![dropfifo_v04](./Pictures/dropfifo_v04.png)

![dropfifo_v05](./Pictures/dropfifo_v05.png)

![dropfifo_v06](./Pictures/dropfifo_v06.png)

![dropfifo_v07](./Pictures/dropfifo_v07.png)

![dropfifo_v08](./Pictures/dropfifo_v08.png)

![dropfifo_v09](./Pictures/dropfifo_v09.png)

![dropfifo_v10](./Pictures/dropfifo_v10.png)

![dropfifo_v11](./Pictures/dropfifo_v11.png)

![dropfifo_v12](./Pictures/dropfifo_v12.png)

![dropfifo_v13](./Pictures/dropfifo_v13.png)

![dropfifo_v14](./Pictures/dropfifo_v14.png)

![dropfifo_v15](./Pictures/dropfifo_v15.png)

![dropfifo_v16](./Pictures/dropfifo_v16.png)

![dropfifo_v17](./Pictures/dropfifo_v17.png)


<h4 id="5"> Testbench and Waveform </h4>

![wv01](./Pictures/wv01.png)

![wv02](./Pictures/wv02.png)

![wv03](./Pictures/wv03.png)

![wv04](./Pictures/wv04.png)

![wv05](./Pictures/wv05.png)

![wv06](./Pictures/wv06.png)

testbench mainly changes the values of in_data[63:0], in_ctrl[7:0], in_wr, and out_rdy to observe the changes in the output values. It can be seen that when in_wr == 0 and out_rdy == 0, the corresponding input value is not output (not stored); when the input value is 64'h 0000000000000007, the pattern matches and is not output.