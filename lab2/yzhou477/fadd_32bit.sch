VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan2e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL z(31:0)
        SIGNAL a(31:0)
        SIGNAL b(31:0)
        SIGNAL a(7:0)
        SIGNAL b(7:0)
        SIGNAL a(15:8)
        SIGNAL b(15:8)
        SIGNAL a(23:16)
        SIGNAL b(23:16)
        SIGNAL a(31:24)
        SIGNAL b(31:24)
        SIGNAL z(7:0)
        SIGNAL z(15:8)
        SIGNAL z(23:16)
        SIGNAL z(31:24)
        SIGNAL cin
        SIGNAL cout
        SIGNAL XLXN_31
        SIGNAL XLXN_32
        SIGNAL XLXN_33
        PORT Output z(31:0)
        PORT Input a(31:0)
        PORT Input b(31:0)
        PORT Input cin
        PORT Output cout
        BEGIN BLOCKDEF fadd_8bit
            TIMESTAMP 2025 1 25 16 40 6
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
        BEGIN BLOCK XLXI_1 fadd_8bit
            PIN a(7:0) a(7:0)
            PIN b(7:0) b(7:0)
            PIN cin cin
            PIN z(7:0) z(7:0)
            PIN cout XLXN_31
        END BLOCK
        BEGIN BLOCK XLXI_2 fadd_8bit
            PIN a(7:0) a(15:8)
            PIN b(7:0) b(15:8)
            PIN cin XLXN_31
            PIN z(7:0) z(15:8)
            PIN cout XLXN_32
        END BLOCK
        BEGIN BLOCK XLXI_3 fadd_8bit
            PIN a(7:0) a(23:16)
            PIN b(7:0) b(23:16)
            PIN cin XLXN_32
            PIN z(7:0) z(23:16)
            PIN cout XLXN_33
        END BLOCK
        BEGIN BLOCK XLXI_4 fadd_8bit
            PIN a(7:0) a(31:24)
            PIN b(7:0) b(31:24)
            PIN cin XLXN_33
            PIN z(7:0) z(31:24)
            PIN cout cout
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1424 784 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1424 1056 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1424 1328 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 1424 1600 R0
        END INSTANCE
        BEGIN BRANCH z(31:0)
            WIRE 2208 608 2384 608
        END BRANCH
        IOMARKER 832 1024 cin R180 28
        IOMARKER 2384 608 z(31:0) R0 28
        IOMARKER 2384 816 cout R0 28
        BEGIN BRANCH a(31:0)
            WIRE 800 624 1008 624
        END BRANCH
        BEGIN BRANCH b(31:0)
            WIRE 800 816 816 816
            WIRE 816 816 832 816
            WIRE 832 816 880 816
            WIRE 880 816 912 816
            WIRE 912 816 960 816
            WIRE 960 816 976 816
            WIRE 976 816 1008 816
        END BRANCH
        IOMARKER 800 624 a(31:0) R180 28
        IOMARKER 800 816 b(31:0) R180 28
        BEGIN BRANCH a(7:0)
            WIRE 1312 624 1424 624
        END BRANCH
        BEGIN BRANCH b(7:0)
            WIRE 1312 688 1424 688
        END BRANCH
        BEGIN BRANCH a(15:8)
            WIRE 1360 896 1424 896
        END BRANCH
        BEGIN BRANCH b(15:8)
            WIRE 1360 960 1424 960
        END BRANCH
        BEGIN BRANCH a(23:16)
            WIRE 1360 1168 1424 1168
        END BRANCH
        BEGIN BRANCH b(23:16)
            WIRE 1360 1232 1424 1232
        END BRANCH
        BEGIN BRANCH a(31:24)
            WIRE 1360 1440 1424 1440
        END BRANCH
        BEGIN BRANCH b(31:24)
            WIRE 1360 1504 1424 1504
        END BRANCH
        BEGIN BRANCH z(7:0)
            WIRE 1808 624 1888 624
        END BRANCH
        BEGIN BRANCH z(15:8)
            WIRE 1808 896 1888 896
        END BRANCH
        BEGIN BRANCH z(23:16)
            WIRE 1808 1168 1888 1168
        END BRANCH
        BEGIN BRANCH z(31:24)
            WIRE 1808 1440 1888 1440
        END BRANCH
        BEGIN BRANCH cin
            WIRE 832 1024 1120 1024
            WIRE 1120 752 1424 752
            WIRE 1120 752 1120 1024
        END BRANCH
        BEGIN BRANCH cout
            WIRE 1808 1568 2096 1568
            WIRE 2096 816 2096 1568
            WIRE 2096 816 2384 816
        END BRANCH
        BEGIN BRANCH XLXN_31
            WIRE 1408 800 1408 1024
            WIRE 1408 1024 1424 1024
            WIRE 1408 800 1888 800
            WIRE 1808 752 1888 752
            WIRE 1888 752 1888 800
        END BRANCH
        BEGIN BRANCH XLXN_32
            WIRE 1376 1072 1376 1296
            WIRE 1376 1296 1424 1296
            WIRE 1376 1072 1888 1072
            WIRE 1808 1024 1888 1024
            WIRE 1888 1024 1888 1072
        END BRANCH
        BEGIN BRANCH XLXN_33
            WIRE 1360 1568 1424 1568
            WIRE 1360 1568 1360 1680
            WIRE 1360 1680 1872 1680
            WIRE 1808 1296 1872 1296
            WIRE 1872 1296 1872 1680
        END BRANCH
    END SHEET
END SCHEMATIC
