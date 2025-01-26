VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan2e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_2
        SIGNAL XLXN_1
        SIGNAL XLXN_5
        SIGNAL XLXN_6
        SIGNAL XLXN_12
        SIGNAL XLXN_14
        SIGNAL XLXN_16
        SIGNAL z(0)
        SIGNAL z(1)
        SIGNAL z(2)
        SIGNAL z(3)
        SIGNAL z(4)
        SIGNAL z(5)
        SIGNAL z(6)
        SIGNAL z(7)
        SIGNAL a(0)
        SIGNAL b(0)
        SIGNAL a(1)
        SIGNAL b(1)
        SIGNAL a(2)
        SIGNAL b(2)
        SIGNAL a(3)
        SIGNAL b(3)
        SIGNAL a(4)
        SIGNAL b(4)
        SIGNAL a(5)
        SIGNAL b(5)
        SIGNAL a(6)
        SIGNAL b(6)
        SIGNAL a(7)
        SIGNAL b(7)
        SIGNAL a(7:0)
        SIGNAL b(7:0)
        SIGNAL z(7:0)
        SIGNAL cin
        SIGNAL cout
        PORT Input a(7:0)
        PORT Input b(7:0)
        PORT Output z(7:0)
        PORT Input cin
        PORT Output cout
        BEGIN BLOCKDEF fadd_1bit
            TIMESTAMP 2025 1 25 8 0 31
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCK XLXI_5 fadd_1bit
            PIN a a(4)
            PIN b b(4)
            PIN cin XLXN_6
            PIN z z(4)
            PIN cout XLXN_12
        END BLOCK
        BEGIN BLOCK XLXI_4 fadd_1bit
            PIN a a(3)
            PIN b b(3)
            PIN cin XLXN_5
            PIN z z(3)
            PIN cout XLXN_6
        END BLOCK
        BEGIN BLOCK XLXI_3 fadd_1bit
            PIN a a(2)
            PIN b b(2)
            PIN cin XLXN_2
            PIN z z(2)
            PIN cout XLXN_5
        END BLOCK
        BEGIN BLOCK XLXI_2 fadd_1bit
            PIN a a(1)
            PIN b b(1)
            PIN cin XLXN_1
            PIN z z(1)
            PIN cout XLXN_2
        END BLOCK
        BEGIN BLOCK XLXI_1 fadd_1bit
            PIN a a(0)
            PIN b b(0)
            PIN cin cin
            PIN z z(0)
            PIN cout XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_6 fadd_1bit
            PIN a a(5)
            PIN b b(5)
            PIN cin XLXN_12
            PIN z z(5)
            PIN cout XLXN_14
        END BLOCK
        BEGIN BLOCK XLXI_7 fadd_1bit
            PIN a a(6)
            PIN b b(6)
            PIN cin XLXN_14
            PIN z z(6)
            PIN cout XLXN_16
        END BLOCK
        BEGIN BLOCK XLXI_8 fadd_1bit
            PIN a a(7)
            PIN b b(7)
            PIN cin XLXN_16
            PIN z z(7)
            PIN cout cout
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_5 1872 1536 R270
        END INSTANCE
        BEGIN INSTANCE XLXI_4 1536 1536 R270
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1216 1536 R270
        END INSTANCE
        BEGIN INSTANCE XLXI_2 896 1536 R270
        END INSTANCE
        BEGIN INSTANCE XLXI_1 576 1536 R270
        END INSTANCE
        BEGIN BRANCH XLXN_2
            WIRE 864 1072 864 1152
            WIRE 864 1072 960 1072
            WIRE 960 1072 960 1616
            WIRE 960 1616 1184 1616
            WIRE 1184 1536 1184 1616
        END BRANCH
        BEGIN BRANCH XLXN_1
            WIRE 320 1088 544 1088
            WIRE 544 1088 544 1152
            WIRE 320 1088 320 1616
            WIRE 320 1616 864 1616
            WIRE 864 1536 864 1616
        END BRANCH
        BEGIN BRANCH XLXN_5
            WIRE 1184 1088 1184 1152
            WIRE 1184 1088 1296 1088
            WIRE 1296 1088 1296 1616
            WIRE 1296 1616 1504 1616
            WIRE 1504 1536 1504 1616
        END BRANCH
        BEGIN BRANCH XLXN_6
            WIRE 1504 1088 1504 1152
            WIRE 1504 1088 1600 1088
            WIRE 1600 1088 1600 1616
            WIRE 1600 1616 1840 1616
            WIRE 1840 1536 1840 1616
        END BRANCH
        BEGIN INSTANCE XLXI_6 2208 1536 R270
        END INSTANCE
        BEGIN INSTANCE XLXI_7 2544 1536 R270
        END INSTANCE
        BEGIN INSTANCE XLXI_8 2880 1536 R270
        END INSTANCE
        BEGIN BRANCH XLXN_12
            WIRE 1840 1136 1840 1152
            WIRE 1840 1136 1920 1136
            WIRE 1920 1136 1920 1152
            WIRE 1920 1152 1920 1616
            WIRE 1920 1616 2176 1616
            WIRE 2176 1536 2176 1616
        END BRANCH
        BEGIN BRANCH XLXN_14
            WIRE 2176 1088 2176 1152
            WIRE 2176 1088 2272 1088
            WIRE 2272 1088 2272 1616
            WIRE 2272 1616 2512 1616
            WIRE 2512 1536 2512 1616
        END BRANCH
        BEGIN BRANCH XLXN_16
            WIRE 2512 1136 2512 1152
            WIRE 2512 1136 2592 1136
            WIRE 2592 1136 2592 1152
            WIRE 2592 1152 2592 1616
            WIRE 2592 1616 2848 1616
            WIRE 2848 1536 2848 1616
        END BRANCH
        BEGIN BRANCH z(0)
            WIRE 416 1024 416 1152
        END BRANCH
        BEGIN BRANCH z(1)
            WIRE 736 1024 736 1152
        END BRANCH
        BEGIN BRANCH z(2)
            WIRE 1056 1024 1056 1152
        END BRANCH
        BEGIN BRANCH z(3)
            WIRE 1376 1040 1376 1152
        END BRANCH
        BEGIN BRANCH z(4)
            WIRE 1712 1040 1712 1152
        END BRANCH
        BEGIN BRANCH z(5)
            WIRE 2048 1056 2048 1152
        END BRANCH
        BEGIN BRANCH z(6)
            WIRE 2384 1056 2384 1152
        END BRANCH
        BEGIN BRANCH z(7)
            WIRE 2720 1056 2720 1152
        END BRANCH
        BEGIN BRANCH a(0)
            WIRE 416 1536 416 1680
        END BRANCH
        BEGIN BRANCH b(0)
            WIRE 480 1536 480 1680
        END BRANCH
        BEGIN BRANCH a(1)
            WIRE 736 1536 736 1680
        END BRANCH
        BEGIN BRANCH b(1)
            WIRE 800 1536 800 1680
        END BRANCH
        BEGIN BRANCH a(2)
            WIRE 1056 1536 1056 1680
        END BRANCH
        BEGIN BRANCH b(2)
            WIRE 1120 1536 1120 1680
        END BRANCH
        BEGIN BRANCH a(3)
            WIRE 1376 1536 1376 1680
        END BRANCH
        BEGIN BRANCH b(3)
            WIRE 1440 1536 1440 1680
        END BRANCH
        BEGIN BRANCH a(4)
            WIRE 1712 1536 1712 1680
        END BRANCH
        BEGIN BRANCH b(4)
            WIRE 1776 1536 1776 1680
        END BRANCH
        BEGIN BRANCH a(5)
            WIRE 2048 1536 2048 1680
        END BRANCH
        BEGIN BRANCH b(5)
            WIRE 2112 1536 2112 1696
        END BRANCH
        BEGIN BRANCH a(6)
            WIRE 2384 1536 2384 1680
        END BRANCH
        BEGIN BRANCH b(6)
            WIRE 2448 1536 2448 1680
        END BRANCH
        BEGIN BRANCH a(7)
            WIRE 2720 1536 2720 1680
        END BRANCH
        BEGIN BRANCH b(7)
            WIRE 2784 1536 2784 1680
        END BRANCH
        BEGIN BRANCH a(7:0)
            WIRE 528 624 688 624
        END BRANCH
        IOMARKER 528 624 a(7:0) R180 28
        BEGIN BRANCH b(7:0)
            WIRE 528 720 688 720
        END BRANCH
        IOMARKER 528 720 b(7:0) R180 28
        BEGIN BRANCH z(7:0)
            WIRE 1008 624 1152 624
        END BRANCH
        IOMARKER 1152 624 z(7:0) R0 28
        BEGIN BRANCH cin
            WIRE 544 1536 544 1680
        END BRANCH
        BEGIN BRANCH cout
            WIRE 2848 1040 2848 1152
        END BRANCH
        IOMARKER 544 1680 cin R90 28
        IOMARKER 2848 1040 cout R270 28
    END SHEET
END SCHEMATIC
