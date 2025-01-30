VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_2(111:0)
        SIGNAL hwregA(55:0)
        BEGIN SIGNAL pipe0(47:0)
        END SIGNAL
        BEGIN SIGNAL pipe1(63:0)
        END SIGNAL
        SIGNAL pipe1(71:0)
        BEGIN SIGNAL pipe0(71:0)
        END SIGNAL
        SIGNAL hwregA(63:0)
        SIGNAL ce
        SIGNAL XLXN_11
        SIGNAL XLXN_12
        SIGNAL XLXN_13
        SIGNAL match_en
        SIGNAL XLXN_15
        SIGNAL match
        SIGNAL XLXN_17
        SIGNAL XLXN_18
        SIGNAL XLXN_19
        SIGNAL mrst
        SIGNAL clk
        SIGNAL XLXN_22(111:0)
        SIGNAL hwregA(62:56)
        PORT Input pipe1(71:0)
        PORT Input hwregA(63:0)
        PORT Input ce
        PORT Input match_en
        PORT Output match
        PORT Input mrst
        PORT Input clk
        BEGIN BLOCKDEF busmerge
            TIMESTAMP 2025 1 29 23 39 7
            RECTANGLE N 0 20 64 44 
            LINE N 64 32 0 32 
            RECTANGLE N 320 20 384 44 
            LINE N 320 32 384 32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 64 -64 320 64 
        END BLOCKDEF
        BEGIN BLOCKDEF reg9B
            TIMESTAMP 2025 1 29 23 53 4
            RECTANGLE N 64 -256 320 0 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -236 384 -212 
            LINE N 320 -224 384 -224 
        END BLOCKDEF
        BEGIN BLOCKDEF wordmatch
            TIMESTAMP 2025 1 30 0 2 43
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF and3b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -64 64 -192 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 144 -80 64 -80 
            LINE N 64 -176 144 -176 
        END BLOCKDEF
        BEGIN BLOCKDEF fd
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF fdce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_2 busmerge
            PIN da(47:0) pipe0(47:0)
            PIN db(63:0) pipe1(63:0)
            PIN q(111:0) XLXN_2(111:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 reg9B
            PIN d(71:0) pipe1(71:0)
            PIN ce clk
            PIN clk ce
            PIN clr XLXN_17
            PIN q(71:0) pipe0(71:0)
        END BLOCK
        BEGIN BLOCK XLXI_4 wordmatch
            PIN datain(111:0) XLXN_2(111:0)
            PIN datacomp(55:0) hwregA(55:0)
            PIN wildcard(6:0) hwregA(62:56)
            PIN match XLXN_13
        END BLOCK
        BEGIN BLOCK XLXI_5 and3b1
            PIN I0 match
            PIN I1 match_en
            PIN I2 XLXN_13
            PIN O XLXN_12
        END BLOCK
        BEGIN BLOCK XLXI_6 fd
            PIN C clk
            PIN D mrst
            PIN Q XLXN_17
        END BLOCK
        BEGIN BLOCK XLXI_7 fdce
            PIN C clk
            PIN CE XLXN_12
            PIN CLR XLXN_17
            PIN D XLXN_12
            PIN Q match
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_2 560 1280 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 576 928 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 1088 1344 R0
        END INSTANCE
        INSTANCE XLXI_5 1552 1376 R0
        INSTANCE XLXI_6 1456 1808 R0
        INSTANCE XLXI_7 1968 1504 R0
        BEGIN BRANCH XLXN_2(111:0)
            WIRE 944 1312 992 1312
            WIRE 992 1184 992 1312
            WIRE 992 1184 1040 1184
            WIRE 1040 1184 1088 1184
        END BRANCH
        BEGIN BRANCH hwregA(55:0)
            WIRE 1040 1248 1088 1248
            WIRE 1040 1248 1040 1328
            WIRE 1040 1328 1040 1360
            WIRE 1040 1360 1040 1376
            BEGIN DISPLAY 1040 1376 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pipe0(47:0)
            WIRE 464 1248 528 1248
            WIRE 528 1248 560 1248
            BEGIN DISPLAY 464 1248 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pipe1(63:0)
            WIRE 464 1312 528 1312
            WIRE 528 1312 560 1312
            BEGIN DISPLAY 464 1312 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pipe1(71:0)
            WIRE 512 704 576 704
        END BRANCH
        BEGIN BRANCH pipe0(71:0)
            WIRE 960 704 1040 704
            BEGIN DISPLAY 1040 704 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH hwregA(63:0)
            WIRE 1920 688 2064 688
        END BRANCH
        BEGIN BRANCH ce
            WIRE 528 832 576 832
        END BRANCH
        BEGIN BRANCH XLXN_12
            WIRE 1808 1248 1840 1248
            WIRE 1840 1248 1968 1248
            WIRE 1840 1248 1840 1312
            WIRE 1840 1312 1968 1312
        END BRANCH
        BEGIN BRANCH XLXN_13
            WIRE 1472 1184 1552 1184
        END BRANCH
        BEGIN BRANCH match_en
            WIRE 1376 1392 1488 1392
            WIRE 1488 1248 1488 1392
            WIRE 1488 1248 1552 1248
        END BRANCH
        BEGIN BRANCH match
            WIRE 1536 1104 1536 1312
            WIRE 1536 1312 1552 1312
            WIRE 1536 1104 2368 1104
            WIRE 2368 1104 2368 1248
            WIRE 2368 1248 2448 1248
            WIRE 2352 1248 2368 1248
        END BRANCH
        BEGIN BRANCH XLXN_17
            WIRE 496 896 576 896
            WIRE 496 896 496 1776
            WIRE 496 1776 1968 1776
            WIRE 1840 1552 1968 1552
            WIRE 1968 1552 1968 1776
            WIRE 1968 1472 1968 1552
        END BRANCH
        BEGIN BRANCH mrst
            WIRE 1376 1552 1456 1552
        END BRANCH
        BEGIN BRANCH clk
            WIRE 512 768 544 768
            WIRE 544 768 576 768
            WIRE 544 768 544 1008
            WIRE 544 1008 544 1040
            WIRE 544 1040 544 1056
            WIRE 544 1056 544 1680
            WIRE 544 1680 1456 1680
            WIRE 544 1056 1888 1056
            WIRE 1888 1056 1888 1376
            WIRE 1888 1376 1968 1376
        END BRANCH
        IOMARKER 512 704 pipe1(71:0) R180 28
        IOMARKER 512 768 clk R180 28
        IOMARKER 528 832 ce R180 28
        IOMARKER 1920 688 hwregA(63:0) R180 28
        IOMARKER 1376 1392 match_en R180 28
        IOMARKER 1376 1552 mrst R180 28
        IOMARKER 2448 1248 match R0 28
        BEGIN BRANCH hwregA(62:56)
            WIRE 1072 1312 1088 1312
            WIRE 1072 1312 1072 1440
            BEGIN DISPLAY 1072 1440 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
