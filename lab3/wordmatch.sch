VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL datain(111:0)
        SIGNAL XLXN_2(55:0)
        SIGNAL XLXN_3(6:0)
        SIGNAL match
        SIGNAL XLXN_5
        SIGNAL XLXN_6
        SIGNAL XLXN_7
        SIGNAL XLXN_8
        SIGNAL XLXN_9
        SIGNAL XLXN_10
        SIGNAL XLXN_11
        SIGNAL XLXN_12
        SIGNAL datain(55:0)
        SIGNAL datain(63:8)
        SIGNAL XLXN_15(55:0)
        SIGNAL XLXN_16(55:0)
        SIGNAL XLXN_17(55:0)
        SIGNAL datain(71:16)
        SIGNAL datain(79:24)
        SIGNAL XLXN_20(6:0)
        SIGNAL XLXN_21(6:0)
        SIGNAL XLXN_22(6:0)
        SIGNAL XLXN_23(55:0)
        SIGNAL XLXN_24(55:0)
        SIGNAL XLXN_25(55:0)
        SIGNAL datacomp(55:0)
        SIGNAL datain(87:32)
        SIGNAL datain(95:40)
        SIGNAL datain(103:48)
        SIGNAL datain(111:56)
        SIGNAL XLXN_31(6:0)
        SIGNAL XLXN_32(6:0)
        SIGNAL XLXN_33(6:0)
        SIGNAL wildcard(6:0)
        PORT Input datain(111:0)
        PORT Output match
        PORT Input datacomp(55:0)
        PORT Input wildcard(6:0)
        BEGIN BLOCKDEF comparator
            TIMESTAMP 2025 1 29 23 52 56
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF or8
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 48 -128 
            LINE N 0 -192 48 -192 
            LINE N 0 -384 48 -384 
            LINE N 0 -448 48 -448 
            LINE N 0 -512 48 -512 
            LINE N 256 -288 192 -288 
            LINE N 0 -320 64 -320 
            LINE N 0 -256 64 -256 
            ARC N 28 -336 204 -160 192 -288 112 -336 
            LINE N 112 -240 48 -240 
            ARC N 28 -416 204 -240 112 -240 192 -288 
            ARC N -40 -344 72 -232 48 -240 48 -336 
            LINE N 112 -336 48 -336 
            LINE N 48 -336 48 -512 
            LINE N 48 -64 48 -240 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(111:56)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_12
        END BLOCK
        BEGIN BLOCK XLXI_2 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(103:48)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_11
        END BLOCK
        BEGIN BLOCK XLXI_3 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(95:40)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_10
        END BLOCK
        BEGIN BLOCK XLXI_4 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(87:32)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_9
        END BLOCK
        BEGIN BLOCK XLXI_5 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(79:24)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_8
        END BLOCK
        BEGIN BLOCK XLXI_6 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(71:16)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_7
        END BLOCK
        BEGIN BLOCK XLXI_7 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(63:8)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_6
        END BLOCK
        BEGIN BLOCK XLXI_8 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(55:0)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_5
        END BLOCK
        BEGIN BLOCK XLXI_9 or8
            PIN I0 XLXN_12
            PIN I1 XLXN_11
            PIN I2 XLXN_10
            PIN I3 XLXN_9
            PIN I4 XLXN_8
            PIN I5 XLXN_7
            PIN I6 XLXN_6
            PIN I7 XLXN_5
            PIN O match
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1104 2592 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1104 2336 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1104 2080 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 1104 1824 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_5 1104 1568 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_6 1104 1312 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_7 1104 1056 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_8 1104 800 R0
        END INSTANCE
        INSTANCE XLXI_9 1856 1792 R0
        BEGIN BRANCH datain(111:0)
            WIRE 944 432 1088 432
        END BRANCH
        BEGIN BRANCH match
            WIRE 2112 1504 2176 1504
        END BRANCH
        BEGIN BRANCH XLXN_5
            WIRE 1488 640 1856 640
            WIRE 1856 640 1856 1280
        END BRANCH
        BEGIN BRANCH XLXN_6
            WIRE 1488 896 1664 896
            WIRE 1664 896 1664 1344
            WIRE 1664 1344 1856 1344
        END BRANCH
        BEGIN BRANCH XLXN_7
            WIRE 1488 1152 1648 1152
            WIRE 1648 1152 1648 1408
            WIRE 1648 1408 1856 1408
        END BRANCH
        BEGIN BRANCH XLXN_8
            WIRE 1488 1408 1632 1408
            WIRE 1632 1408 1632 1472
            WIRE 1632 1472 1856 1472
        END BRANCH
        BEGIN BRANCH XLXN_9
            WIRE 1488 1664 1664 1664
            WIRE 1664 1536 1664 1664
            WIRE 1664 1536 1856 1536
        END BRANCH
        BEGIN BRANCH XLXN_10
            WIRE 1488 1920 1680 1920
            WIRE 1680 1600 1680 1920
            WIRE 1680 1600 1856 1600
        END BRANCH
        BEGIN BRANCH XLXN_11
            WIRE 1488 2176 1696 2176
            WIRE 1696 1664 1696 2176
            WIRE 1696 1664 1856 1664
        END BRANCH
        BEGIN BRANCH XLXN_12
            WIRE 1488 2432 1856 2432
            WIRE 1856 1728 1856 2432
        END BRANCH
        BEGIN BRANCH datain(55:0)
            WIRE 1024 704 1104 704
            BEGIN DISPLAY 1024 704 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(63:8)
            WIRE 1024 960 1104 960
            BEGIN DISPLAY 1024 960 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(71:16)
            WIRE 1040 1216 1104 1216
            BEGIN DISPLAY 1040 1216 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(79:24)
            WIRE 1040 1472 1104 1472
            BEGIN DISPLAY 1040 1472 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datacomp(55:0)
            WIRE 896 640 928 640
            WIRE 928 640 944 640
            WIRE 944 640 1104 640
            WIRE 944 640 944 896
            WIRE 944 896 1104 896
            WIRE 944 896 944 1152
            WIRE 944 1152 1104 1152
            WIRE 944 1152 944 1408
            WIRE 944 1408 1104 1408
            WIRE 944 1408 944 1664
            WIRE 944 1664 1104 1664
            WIRE 944 1664 944 1920
            WIRE 944 1920 1104 1920
            WIRE 944 1920 944 2176
            WIRE 944 2176 1104 2176
            WIRE 944 2176 944 2432
            WIRE 944 2432 1104 2432
        END BRANCH
        BEGIN BRANCH datain(87:32)
            WIRE 1040 1728 1104 1728
            BEGIN DISPLAY 1040 1728 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(95:40)
            WIRE 1040 1984 1104 1984
            BEGIN DISPLAY 1040 1984 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(103:48)
            WIRE 1040 2240 1104 2240
            BEGIN DISPLAY 1040 2240 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(111:56)
            WIRE 1040 2496 1104 2496
            BEGIN DISPLAY 1040 2496 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH wildcard(6:0)
            WIRE 912 768 976 768
            WIRE 976 768 1104 768
            WIRE 976 768 976 1024
            WIRE 976 1024 1104 1024
            WIRE 976 1024 976 1280
            WIRE 976 1280 1104 1280
            WIRE 976 1280 976 1536
            WIRE 976 1536 1104 1536
            WIRE 976 1536 976 1792
            WIRE 976 1792 1104 1792
            WIRE 976 1792 976 2048
            WIRE 976 2048 1104 2048
            WIRE 976 2048 976 2304
            WIRE 976 2304 1104 2304
            WIRE 976 2304 976 2560
            WIRE 976 2560 1104 2560
        END BRANCH
        IOMARKER 944 432 datain(111:0) R180 28
        IOMARKER 896 640 datacomp(55:0) R180 28
        IOMARKER 912 768 wildcard(6:0) R180 28
        IOMARKER 2176 1504 match R0 28
    END SHEET
END SCHEMATIC
