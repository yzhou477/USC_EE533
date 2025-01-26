VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan2e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL a(7:0)
        SIGNAL b(7:0)
        SIGNAL z(7:0)
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
        SIGNAL z(0)
        SIGNAL z(1)
        SIGNAL z(2)
        SIGNAL z(3)
        SIGNAL z(4)
        SIGNAL z(5)
        SIGNAL z(6)
        SIGNAL z(7)
        PORT Input a(7:0)
        PORT Input b(7:0)
        PORT Output z(7:0)
        BEGIN BLOCKDEF and2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 144 -48 64 -48 
            LINE N 64 -144 144 -144 
            LINE N 64 -48 64 -144 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 and2
            PIN I0 b(0)
            PIN I1 a(0)
            PIN O z(0)
        END BLOCK
        BEGIN BLOCK XLXI_2 and2
            PIN I0 b(1)
            PIN I1 a(1)
            PIN O z(1)
        END BLOCK
        BEGIN BLOCK XLXI_3 and2
            PIN I0 b(2)
            PIN I1 a(2)
            PIN O z(2)
        END BLOCK
        BEGIN BLOCK XLXI_4 and2
            PIN I0 b(3)
            PIN I1 a(3)
            PIN O z(3)
        END BLOCK
        BEGIN BLOCK XLXI_5 and2
            PIN I0 b(4)
            PIN I1 a(4)
            PIN O z(4)
        END BLOCK
        BEGIN BLOCK XLXI_6 and2
            PIN I0 b(5)
            PIN I1 a(5)
            PIN O z(5)
        END BLOCK
        BEGIN BLOCK XLXI_7 and2
            PIN I0 b(6)
            PIN I1 a(6)
            PIN O z(6)
        END BLOCK
        BEGIN BLOCK XLXI_8 and2
            PIN I0 b(7)
            PIN I1 a(7)
            PIN O z(7)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1344 592 R0
        INSTANCE XLXI_2 1344 736 R0
        INSTANCE XLXI_3 1344 880 R0
        INSTANCE XLXI_4 1344 1024 R0
        INSTANCE XLXI_5 1344 1168 R0
        INSTANCE XLXI_6 1344 1312 R0
        INSTANCE XLXI_7 1344 1456 R0
        INSTANCE XLXI_8 1344 1600 R0
        BEGIN BRANCH a(7:0)
            WIRE 1072 448 1200 448
        END BRANCH
        BEGIN BRANCH b(7:0)
            WIRE 1072 560 1200 560
        END BRANCH
        BEGIN BRANCH z(7:0)
            WIRE 1776 480 1904 480
        END BRANCH
        IOMARKER 1072 448 a(7:0) R180 28
        IOMARKER 1072 560 b(7:0) R180 28
        IOMARKER 1904 480 z(7:0) R0 28
        BEGIN BRANCH a(0)
            WIRE 1296 464 1344 464
            BEGIN DISPLAY 1296 464 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(0)
            WIRE 1296 528 1344 528
            BEGIN DISPLAY 1296 528 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(1)
            WIRE 1296 608 1344 608
            BEGIN DISPLAY 1296 608 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(1)
            WIRE 1296 672 1344 672
            BEGIN DISPLAY 1296 672 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(2)
            WIRE 1296 752 1344 752
            BEGIN DISPLAY 1296 752 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(2)
            WIRE 1296 816 1344 816
            BEGIN DISPLAY 1296 816 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(3)
            WIRE 1296 896 1344 896
            BEGIN DISPLAY 1296 896 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(3)
            WIRE 1296 960 1344 960
            BEGIN DISPLAY 1296 960 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(4)
            WIRE 1296 1040 1344 1040
            BEGIN DISPLAY 1296 1040 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(4)
            WIRE 1296 1104 1344 1104
            BEGIN DISPLAY 1296 1104 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(5)
            WIRE 1296 1184 1344 1184
            BEGIN DISPLAY 1296 1184 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(5)
            WIRE 1296 1248 1344 1248
            BEGIN DISPLAY 1296 1248 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(6)
            WIRE 1296 1328 1344 1328
            BEGIN DISPLAY 1296 1328 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(6)
            WIRE 1296 1392 1344 1392
            BEGIN DISPLAY 1296 1392 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(7)
            WIRE 1296 1472 1344 1472
            BEGIN DISPLAY 1296 1472 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(7)
            WIRE 1296 1520 1296 1536
            WIRE 1296 1536 1344 1536
            BEGIN DISPLAY 1296 1536 ATTR Name
                ALIGNMENT SOFT-TCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH z(0)
            WIRE 1600 496 1648 496
            BEGIN DISPLAY 1648 496 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH z(1)
            WIRE 1600 640 1648 640
            BEGIN DISPLAY 1648 640 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH z(2)
            WIRE 1600 784 1664 784
            BEGIN DISPLAY 1664 784 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH z(3)
            WIRE 1600 928 1664 928
            BEGIN DISPLAY 1664 928 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH z(4)
            WIRE 1600 1072 1648 1072
            BEGIN DISPLAY 1648 1072 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH z(5)
            WIRE 1600 1216 1664 1216
            BEGIN DISPLAY 1664 1216 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH z(6)
            WIRE 1600 1360 1664 1360
            BEGIN DISPLAY 1664 1360 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH z(7)
            WIRE 1600 1504 1664 1504
            BEGIN DISPLAY 1664 1504 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
