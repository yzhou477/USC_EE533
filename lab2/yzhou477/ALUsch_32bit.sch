VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan2e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_4(31:0)
        SIGNAL XLXN_5(31:0)
        SIGNAL XLXN_6(31:0)
        SIGNAL XLXN_7(31:0)
        SIGNAL XLXN_8(31:0)
        SIGNAL XLXN_9(31:0)
        SIGNAL XLXN_10(31:0)
        SIGNAL XLXN_11(31:0)
        SIGNAL XLXN_12(31:0)
        SIGNAL XLXN_13(31:0)
        SIGNAL XLXN_14(31:0)
        SIGNAL XLXN_15(31:0)
        SIGNAL XLXN_16(31:0)
        SIGNAL XLXN_17(31:0)
        SIGNAL XLXN_18(31:0)
        SIGNAL z(31:0)
        SIGNAL cin
        SIGNAL opr(0)
        SIGNAL opr(1)
        SIGNAL opr(2)
        SIGNAL opr(2:0)
        SIGNAL shiftdir
        SIGNAL add_cout
        SIGNAL sub_cout
        SIGNAL b(31:0)
        SIGNAL a(31:0)
        SIGNAL XLXN_32
        PORT Output z(31:0)
        PORT Input cin
        PORT Input opr(2:0)
        PORT Input shiftdir
        PORT Output add_cout
        PORT Output sub_cout
        PORT Input b(31:0)
        PORT Input a(31:0)
        BEGIN BLOCKDEF fadd_32bit
            TIMESTAMP 2025 1 25 17 48 5
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF subtractor_32bit
            TIMESTAMP 2025 1 26 2 22 8
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF shifterlog1_32bit
            TIMESTAMP 2025 1 25 23 1 19
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF AND2_32bit
            TIMESTAMP 2025 1 25 23 16 49
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF OR2_32bit
            TIMESTAMP 2025 1 26 2 18 18
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF MUX2_32bit
            TIMESTAMP 2025 1 26 2 39 26
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 fadd_32bit
            PIN a(31:0) a(31:0)
            PIN b(31:0) b(31:0)
            PIN cin cin
            PIN z(31:0) XLXN_11(31:0)
            PIN cout add_cout
        END BLOCK
        BEGIN BLOCK XLXI_2 subtractor_32bit
            PIN b(31:0) b(31:0)
            PIN opr opr(0)
            PIN a(31:0) a(31:0)
            PIN cout sub_cout
            PIN z(31:0) XLXN_12(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 shifterlog1_32bit
            PIN d shiftdir
            PIN datain(31:0) a(31:0)
            PIN dataout(31:0) XLXN_13(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_4 AND2_32bit
            PIN a(31:0) a(31:0)
            PIN b(31:0) b(31:0)
            PIN z(31:0) XLXN_14(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_5 OR2_32bit
            PIN a(31:0) a(31:0)
            PIN b(31:0) b(31:0)
            PIN z(31:0) XLXN_15(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_14 MUX2_32bit
            PIN a(31:0) XLXN_11(31:0)
            PIN b(31:0) XLXN_12(31:0)
            PIN sel opr(0)
            PIN z(31:0) XLXN_16(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_15 MUX2_32bit
            PIN a(31:0) XLXN_13(31:0)
            PIN b(31:0) XLXN_14(31:0)
            PIN sel opr(0)
            PIN z(31:0) XLXN_17(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_17 MUX2_32bit
            PIN a(31:0) XLXN_16(31:0)
            PIN b(31:0) XLXN_17(31:0)
            PIN sel opr(1)
            PIN z(31:0) XLXN_18(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_23 MUX2_32bit
            PIN a(31:0) XLXN_18(31:0)
            PIN b(31:0) XLXN_15(31:0)
            PIN sel opr(2)
            PIN z(31:0) z(31:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 736 880 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 736 1152 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_14 1296 1040 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 736 1600 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 736 1376 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_5 736 1824 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_15 1296 1456 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_17 1872 1232 R0
        END INSTANCE
        BEGIN BRANCH XLXN_11(31:0)
            WIRE 1120 720 1200 720
            WIRE 1200 720 1200 880
            WIRE 1200 880 1296 880
        END BRANCH
        BEGIN BRANCH XLXN_12(31:0)
            WIRE 1120 1120 1200 1120
            WIRE 1200 944 1200 1120
            WIRE 1200 944 1296 944
        END BRANCH
        BEGIN BRANCH XLXN_13(31:0)
            WIRE 1120 1280 1200 1280
            WIRE 1200 1280 1200 1296
            WIRE 1200 1296 1296 1296
        END BRANCH
        BEGIN BRANCH XLXN_14(31:0)
            WIRE 1120 1504 1200 1504
            WIRE 1200 1360 1200 1504
            WIRE 1200 1360 1296 1360
        END BRANCH
        BEGIN BRANCH XLXN_15(31:0)
            WIRE 1120 1728 1760 1728
            WIRE 1760 1376 1760 1728
            WIRE 1760 1376 2400 1376
        END BRANCH
        BEGIN BRANCH XLXN_16(31:0)
            WIRE 1680 880 1776 880
            WIRE 1776 880 1776 1072
            WIRE 1776 1072 1872 1072
        END BRANCH
        BEGIN BRANCH XLXN_17(31:0)
            WIRE 1680 1296 1776 1296
            WIRE 1776 1136 1776 1296
            WIRE 1776 1136 1872 1136
        END BRANCH
        BEGIN BRANCH XLXN_18(31:0)
            WIRE 2256 1072 2320 1072
            WIRE 2320 1072 2320 1312
            WIRE 2320 1312 2400 1312
        END BRANCH
        BEGIN INSTANCE XLXI_23 2400 1472 R0
        END INSTANCE
        BEGIN BRANCH z(31:0)
            WIRE 2784 1312 2896 1312
        END BRANCH
        IOMARKER 2896 1312 z(31:0) R0 28
        BEGIN BRANCH cin
            WIRE 640 848 736 848
        END BRANCH
        BEGIN BRANCH opr(0)
            WIRE 672 1056 736 1056
            WIRE 672 1056 672 1424
            WIRE 672 1424 1280 1424
            WIRE 1280 1424 1296 1424
            WIRE 1280 1008 1296 1008
            WIRE 1280 1008 1280 1424
            BEGIN DISPLAY 1280 1008 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH opr(1)
            WIRE 1856 1200 1872 1200
            WIRE 1856 1200 1856 1280
            BEGIN DISPLAY 1856 1280 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH opr(2)
            WIRE 2384 1440 2400 1440
            WIRE 2384 1440 2384 1520
            BEGIN DISPLAY 2384 1520 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH opr(2:0)
            WIRE 2016 496 2160 496
        END BRANCH
        BEGIN BRANCH shiftdir
            WIRE 640 1280 736 1280
        END BRANCH
        BEGIN BRANCH add_cout
            WIRE 1120 848 1184 848
            WIRE 1184 608 1184 848
        END BRANCH
        BEGIN BRANCH sub_cout
            WIRE 1120 992 1264 992
            WIRE 1264 608 1264 992
        END BRANCH
        IOMARKER 640 848 cin R180 28
        IOMARKER 640 1280 shiftdir R180 28
        IOMARKER 1184 608 add_cout R270 28
        IOMARKER 1264 608 sub_cout R270 28
        IOMARKER 2016 496 opr(2:0) R180 28
        BEGIN BRANCH b(31:0)
            WIRE 480 992 576 992
            WIRE 576 992 704 992
            WIRE 704 992 736 992
            WIRE 704 992 704 1568
            WIRE 704 1568 736 1568
            WIRE 704 1568 704 1792
            WIRE 704 1792 736 1792
            WIRE 704 784 736 784
            WIRE 704 784 704 992
        END BRANCH
        IOMARKER 480 992 b(31:0) R180 28
        BEGIN BRANCH a(31:0)
            WIRE 480 720 576 720
            WIRE 576 720 720 720
            WIRE 720 720 736 720
            WIRE 720 720 720 1120
            WIRE 720 1120 736 1120
            WIRE 720 1120 720 1344
            WIRE 720 1344 736 1344
            WIRE 720 1344 720 1488
            WIRE 720 1488 720 1504
            WIRE 720 1504 736 1504
            WIRE 720 1504 720 1728
            WIRE 720 1728 736 1728
        END BRANCH
        IOMARKER 480 720 a(31:0) R180 28
    END SHEET
END SCHEMATIC
