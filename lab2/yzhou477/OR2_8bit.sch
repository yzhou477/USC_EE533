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
        BEGIN BLOCKDEF or2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 28 -224 204 -48 112 -48 192 -96 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            LINE N 112 -144 48 -144 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -48 48 -48 
        END BLOCKDEF
        BEGIN BLOCK XLXI_9 or2
            PIN I0 b(0)
            PIN I1 a(0)
            PIN O z(0)
        END BLOCK
        BEGIN BLOCK XLXI_10 or2
            PIN I0 b(1)
            PIN I1 a(1)
            PIN O z(1)
        END BLOCK
        BEGIN BLOCK XLXI_11 or2
            PIN I0 b(2)
            PIN I1 a(2)
            PIN O z(2)
        END BLOCK
        BEGIN BLOCK XLXI_12 or2
            PIN I0 b(3)
            PIN I1 a(3)
            PIN O z(3)
        END BLOCK
        BEGIN BLOCK XLXI_13 or2
            PIN I0 b(4)
            PIN I1 a(4)
            PIN O z(4)
        END BLOCK
        BEGIN BLOCK XLXI_14 or2
            PIN I0 b(5)
            PIN I1 a(5)
            PIN O z(5)
        END BLOCK
        BEGIN BLOCK XLXI_15 or2
            PIN I0 b(6)
            PIN I1 a(6)
            PIN O z(6)
        END BLOCK
        BEGIN BLOCK XLXI_16 or2
            PIN I0 b(7)
            PIN I1 a(7)
            PIN O z(7)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH a(7:0)
            WIRE 1312 848 1440 848
        END BRANCH
        BEGIN BRANCH b(7:0)
            WIRE 1312 960 1440 960
        END BRANCH
        BEGIN BRANCH z(7:0)
            WIRE 2016 880 2144 880
        END BRANCH
        BEGIN BRANCH a(0)
            WIRE 1536 864 1584 864
            BEGIN DISPLAY 1536 864 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(0)
            WIRE 1536 928 1584 928
            BEGIN DISPLAY 1536 928 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(1)
            WIRE 1536 1008 1584 1008
            BEGIN DISPLAY 1536 1008 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(1)
            WIRE 1536 1072 1584 1072
            BEGIN DISPLAY 1536 1072 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(2)
            WIRE 1536 1152 1584 1152
            BEGIN DISPLAY 1536 1152 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(2)
            WIRE 1536 1216 1584 1216
            BEGIN DISPLAY 1536 1216 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(3)
            WIRE 1536 1296 1584 1296
            BEGIN DISPLAY 1536 1296 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(3)
            WIRE 1536 1360 1584 1360
            BEGIN DISPLAY 1536 1360 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(4)
            WIRE 1536 1440 1584 1440
            BEGIN DISPLAY 1536 1440 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(4)
            WIRE 1536 1504 1584 1504
            BEGIN DISPLAY 1536 1504 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(5)
            WIRE 1536 1584 1584 1584
            BEGIN DISPLAY 1536 1584 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(5)
            WIRE 1536 1648 1584 1648
            BEGIN DISPLAY 1536 1648 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(6)
            WIRE 1536 1728 1584 1728
            BEGIN DISPLAY 1536 1728 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(6)
            WIRE 1536 1792 1584 1792
            BEGIN DISPLAY 1536 1792 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(7)
            WIRE 1536 1872 1584 1872
            BEGIN DISPLAY 1536 1872 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(7)
            WIRE 1520 1936 1584 1936
            BEGIN DISPLAY 1520 1936 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH z(0)
            WIRE 1840 896 1888 896
            BEGIN DISPLAY 1888 896 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH z(1)
            WIRE 1840 1040 1888 1040
            BEGIN DISPLAY 1888 1040 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH z(2)
            WIRE 1840 1184 1904 1184
            BEGIN DISPLAY 1904 1184 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH z(3)
            WIRE 1840 1328 1904 1328
            BEGIN DISPLAY 1904 1328 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH z(4)
            WIRE 1840 1472 1888 1472
            BEGIN DISPLAY 1888 1472 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH z(5)
            WIRE 1840 1616 1904 1616
            BEGIN DISPLAY 1904 1616 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH z(6)
            WIRE 1840 1760 1904 1760
            BEGIN DISPLAY 1904 1760 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH z(7)
            WIRE 1840 1904 1904 1904
            BEGIN DISPLAY 1904 1904 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        IOMARKER 1312 848 a(7:0) R180 28
        IOMARKER 1312 960 b(7:0) R180 28
        IOMARKER 2144 880 z(7:0) R0 28
        INSTANCE XLXI_9 1584 992 R0
        INSTANCE XLXI_10 1584 1136 R0
        INSTANCE XLXI_11 1584 1280 R0
        INSTANCE XLXI_12 1584 1424 R0
        INSTANCE XLXI_13 1584 1568 R0
        INSTANCE XLXI_14 1584 1712 R0
        INSTANCE XLXI_15 1584 1856 R0
        INSTANCE XLXI_16 1584 2000 R0
    END SHEET
END SCHEMATIC
