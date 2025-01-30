VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_4
        SIGNAL XLXN_5
        SIGNAL amask(6)
        SIGNAL amask(5)
        SIGNAL a(23:16)
        SIGNAL b(23:16)
        SIGNAL a(15:8)
        SIGNAL b(15:8)
        SIGNAL XLXN_12
        SIGNAL a(55:48)
        SIGNAL b(55:48)
        SIGNAL a(47:40)
        SIGNAL b(47:40)
        SIGNAL XLXN_17
        SIGNAL XLXN_18
        SIGNAL XLXN_19
        SIGNAL XLXN_20
        SIGNAL a(7:0)
        SIGNAL b(7:0)
        SIGNAL a(39:32)
        SIGNAL b(39:32)
        SIGNAL a(31:24)
        SIGNAL b(31:24)
        SIGNAL amask(2)
        SIGNAL XLXN_28
        SIGNAL XLXN_29
        SIGNAL XLXN_30
        SIGNAL XLXN_31
        SIGNAL amask(1)
        SIGNAL amask(0)
        SIGNAL amask(4)
        SIGNAL XLXN_35
        SIGNAL XLXN_36
        SIGNAL amask(3)
        SIGNAL XLXN_38
        SIGNAL match
        SIGNAL a(55:0)
        SIGNAL b(55:0)
        SIGNAL amask(6:0)
        PORT Output match
        PORT Input a(55:0)
        PORT Input b(55:0)
        PORT Input amask(6:0)
        BEGIN BLOCKDEF comp8
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -384 320 -64 
            LINE N 384 -224 320 -224 
            RECTANGLE N 0 -332 64 -308 
            LINE N 0 -320 64 -320 
            RECTANGLE N 0 -140 64 -116 
            LINE N 0 -128 64 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF or2b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 32 -64 
            CIRCLE N 32 -76 56 -52 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            LINE N 112 -48 48 -48 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -144 48 -144 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            ARC N 28 -224 204 -48 112 -48 192 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF and7
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -448 64 -64 
            ARC N 96 -304 192 -208 144 -208 144 -304 
            LINE N 64 -304 144 -304 
            LINE N 144 -208 64 -208 
            LINE N 256 -256 192 -256 
            LINE N 0 -448 64 -448 
            LINE N 0 -384 64 -384 
            LINE N 0 -320 64 -320 
            LINE N 0 -256 64 -256 
            LINE N 0 -192 64 -192 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 64 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 comp8
            PIN A(7:0) a(55:48)
            PIN B(7:0) b(55:48)
            PIN EQ XLXN_4
        END BLOCK
        BEGIN BLOCK XLXI_2 comp8
            PIN A(7:0) a(47:40)
            PIN B(7:0) b(47:40)
            PIN EQ XLXN_5
        END BLOCK
        BEGIN BLOCK XLXI_3 comp8
            PIN A(7:0) a(39:32)
            PIN B(7:0) b(39:32)
            PIN EQ XLXN_19
        END BLOCK
        BEGIN BLOCK XLXI_4 comp8
            PIN A(7:0) a(31:24)
            PIN B(7:0) b(31:24)
            PIN EQ XLXN_20
        END BLOCK
        BEGIN BLOCK XLXI_9 or2b1
            PIN I0 amask(6)
            PIN I1 XLXN_4
            PIN O XLXN_28
        END BLOCK
        BEGIN BLOCK XLXI_10 or2b1
            PIN I0 amask(5)
            PIN I1 XLXN_5
            PIN O XLXN_30
        END BLOCK
        BEGIN BLOCK XLXI_11 or2b1
            PIN I0 amask(4)
            PIN I1 XLXN_19
            PIN O XLXN_35
        END BLOCK
        BEGIN BLOCK XLXI_12 or2b1
            PIN I0 amask(3)
            PIN I1 XLXN_20
            PIN O XLXN_38
        END BLOCK
        BEGIN BLOCK XLXI_6 comp8
            PIN A(7:0) a(23:16)
            PIN B(7:0) b(23:16)
            PIN EQ XLXN_12
        END BLOCK
        BEGIN BLOCK XLXI_7 comp8
            PIN A(7:0) a(7:0)
            PIN B(7:0) b(7:0)
            PIN EQ XLXN_18
        END BLOCK
        BEGIN BLOCK XLXI_8 comp8
            PIN A(7:0) a(15:8)
            PIN B(7:0) b(15:8)
            PIN EQ XLXN_17
        END BLOCK
        BEGIN BLOCK XLXI_13 or2b1
            PIN I0 amask(2)
            PIN I1 XLXN_12
            PIN O XLXN_29
        END BLOCK
        BEGIN BLOCK XLXI_14 or2b1
            PIN I0 amask(1)
            PIN I1 XLXN_17
            PIN O XLXN_31
        END BLOCK
        BEGIN BLOCK XLXI_15 or2b1
            PIN I0 amask(0)
            PIN I1 XLXN_18
            PIN O XLXN_36
        END BLOCK
        BEGIN BLOCK XLXI_22 and7
            PIN I0 XLXN_38
            PIN I1 XLXN_36
            PIN I2 XLXN_35
            PIN I3 XLXN_31
            PIN I4 XLXN_30
            PIN I5 XLXN_29
            PIN I6 XLXN_28
            PIN O match
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 512 832 R0
        INSTANCE XLXI_4 512 2224 R0
        INSTANCE XLXI_3 512 1760 R0
        INSTANCE XLXI_2 512 1296 R0
        INSTANCE XLXI_9 992 736 R0
        INSTANCE XLXI_10 992 1200 R0
        INSTANCE XLXI_11 992 1664 R0
        INSTANCE XLXI_12 992 2128 R0
        INSTANCE XLXI_6 1408 832 R0
        INSTANCE XLXI_7 1408 1760 R0
        INSTANCE XLXI_8 1408 1296 R0
        INSTANCE XLXI_13 1872 736 R0
        INSTANCE XLXI_14 1872 1200 R0
        INSTANCE XLXI_15 1856 1664 R0
        INSTANCE XLXI_22 2352 1504 R0
        BEGIN BRANCH XLXN_4
            WIRE 896 608 992 608
        END BRANCH
        BEGIN BRANCH XLXN_5
            WIRE 896 1072 992 1072
        END BRANCH
        BEGIN BRANCH amask(6)
            WIRE 944 672 992 672
            BEGIN DISPLAY 944 672 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(5)
            WIRE 944 1136 992 1136
            BEGIN DISPLAY 944 1136 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(23:16)
            WIRE 1344 512 1408 512
            BEGIN DISPLAY 1344 512 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(23:16)
            WIRE 1344 704 1408 704
            BEGIN DISPLAY 1344 704 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(15:8)
            WIRE 1344 976 1408 976
            BEGIN DISPLAY 1344 976 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(15:8)
            WIRE 1344 1168 1408 1168
            BEGIN DISPLAY 1344 1168 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_12
            WIRE 1792 608 1840 608
            WIRE 1840 608 1872 608
        END BRANCH
        BEGIN BRANCH a(55:48)
            WIRE 448 512 512 512
            BEGIN DISPLAY 448 512 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(55:48)
            WIRE 448 704 512 704
            BEGIN DISPLAY 448 704 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(47:40)
            WIRE 448 976 512 976
            BEGIN DISPLAY 448 976 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(47:40)
            WIRE 448 1168 512 1168
            BEGIN DISPLAY 448 1168 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_17
            WIRE 1792 1072 1872 1072
        END BRANCH
        BEGIN BRANCH XLXN_18
            WIRE 1792 1536 1856 1536
        END BRANCH
        BEGIN BRANCH XLXN_19
            WIRE 896 1536 992 1536
        END BRANCH
        BEGIN BRANCH XLXN_20
            WIRE 896 2000 992 2000
        END BRANCH
        BEGIN BRANCH a(7:0)
            WIRE 1344 1440 1408 1440
            BEGIN DISPLAY 1344 1440 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(7:0)
            WIRE 1344 1632 1408 1632
            BEGIN DISPLAY 1344 1632 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(39:32)
            WIRE 448 1440 512 1440
            BEGIN DISPLAY 448 1440 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(39:32)
            WIRE 448 1632 512 1632
            BEGIN DISPLAY 448 1632 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(31:24)
            WIRE 448 1904 512 1904
            BEGIN DISPLAY 448 1904 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(31:24)
            WIRE 448 2096 512 2096
            BEGIN DISPLAY 448 2096 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(2)
            WIRE 1808 672 1872 672
            BEGIN DISPLAY 1808 672 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_28
            WIRE 1248 640 1328 640
            WIRE 1328 384 1328 640
            WIRE 1328 384 2352 384
            WIRE 2352 384 2352 1056
        END BRANCH
        BEGIN BRANCH XLXN_29
            WIRE 2128 640 2240 640
            WIRE 2240 640 2240 1120
            WIRE 2240 1120 2352 1120
        END BRANCH
        BEGIN BRANCH XLXN_30
            WIRE 1248 1104 1296 1104
            WIRE 1296 848 1296 1104
            WIRE 1296 848 1856 848
            WIRE 1856 848 1856 1184
            WIRE 1856 1184 2352 1184
        END BRANCH
        BEGIN BRANCH XLXN_31
            WIRE 2128 1104 2224 1104
            WIRE 2224 1104 2224 1248
            WIRE 2224 1248 2352 1248
        END BRANCH
        BEGIN BRANCH amask(1)
            WIRE 1808 1136 1872 1136
            BEGIN DISPLAY 1808 1136 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(0)
            WIRE 1808 1600 1856 1600
            BEGIN DISPLAY 1808 1600 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(4)
            WIRE 928 1600 992 1600
            BEGIN DISPLAY 928 1600 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_35
            WIRE 1248 1568 1328 1568
            WIRE 1328 1312 1328 1568
            WIRE 1328 1312 2352 1312
        END BRANCH
        BEGIN BRANCH XLXN_36
            WIRE 2112 1568 2224 1568
            WIRE 2224 1376 2224 1568
            WIRE 2224 1376 2352 1376
        END BRANCH
        BEGIN BRANCH amask(3)
            WIRE 928 2064 992 2064
            BEGIN DISPLAY 928 2064 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_38
            WIRE 1248 2032 2352 2032
            WIRE 2352 1440 2352 2032
        END BRANCH
        BEGIN BRANCH match
            WIRE 2608 1248 2688 1248
        END BRANCH
        IOMARKER 2688 1248 match R0 28
        BEGIN BRANCH a(55:0)
            WIRE 2624 416 2864 416
        END BRANCH
        BEGIN BRANCH b(55:0)
            WIRE 2624 512 2864 512
        END BRANCH
        BEGIN BRANCH amask(6:0)
            WIRE 3152 416 3408 416
        END BRANCH
        IOMARKER 2624 416 a(55:0) R180 28
        IOMARKER 2624 512 b(55:0) R180 28
        IOMARKER 3152 416 amask(6:0) R180 28
    END SHEET
END SCHEMATIC
