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
        SIGNAL a(0)
        SIGNAL b(0)
        SIGNAL b(1)
        SIGNAL a(1)
        SIGNAL b(2)
        SIGNAL a(2)
        SIGNAL b(3)
        SIGNAL a(3)
        SIGNAL b(4)
        SIGNAL a(4)
        SIGNAL b(5)
        SIGNAL a(5)
        SIGNAL b(6)
        SIGNAL a(6)
        SIGNAL b(7)
        SIGNAL a(7)
        SIGNAL z(7)
        SIGNAL z(6)
        SIGNAL z(5)
        SIGNAL z(4)
        SIGNAL z(3)
        SIGNAL z(2)
        SIGNAL z(1)
        SIGNAL z(0)
        SIGNAL z(7:0)
        SIGNAL sel
        PORT Input a(7:0)
        PORT Input b(7:0)
        PORT Output z(7:0)
        PORT Input sel
        BEGIN BLOCKDEF MUX2
            TIMESTAMP 2025 1 25 21 0 11
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCK XLXI_19 MUX2
            PIN s sel
            PIN a a(1)
            PIN b b(1)
            PIN z z(1)
        END BLOCK
        BEGIN BLOCK XLXI_20 MUX2
            PIN s sel
            PIN a a(2)
            PIN b b(2)
            PIN z z(2)
        END BLOCK
        BEGIN BLOCK XLXI_21 MUX2
            PIN s sel
            PIN a a(3)
            PIN b b(3)
            PIN z z(3)
        END BLOCK
        BEGIN BLOCK XLXI_22 MUX2
            PIN s sel
            PIN a a(4)
            PIN b b(4)
            PIN z z(4)
        END BLOCK
        BEGIN BLOCK XLXI_23 MUX2
            PIN s sel
            PIN a a(5)
            PIN b b(5)
            PIN z z(5)
        END BLOCK
        BEGIN BLOCK XLXI_24 MUX2
            PIN s sel
            PIN a a(6)
            PIN b b(6)
            PIN z z(6)
        END BLOCK
        BEGIN BLOCK XLXI_25 MUX2
            PIN s sel
            PIN a a(7)
            PIN b b(7)
            PIN z z(7)
        END BLOCK
        BEGIN BLOCK XLXI_26 MUX2
            PIN s sel
            PIN a a(0)
            PIN b b(0)
            PIN z z(0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH a(7:0)
            WIRE 1216 1024 1344 1024
        END BRANCH
        BEGIN BRANCH b(7:0)
            WIRE 1216 1136 1344 1136
        END BRANCH
        IOMARKER 1216 1024 a(7:0) R180 28
        IOMARKER 1216 1136 b(7:0) R180 28
        BEGIN INSTANCE XLXI_19 1600 1200 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_20 1600 1392 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_21 1600 1584 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_22 1600 1776 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_23 1600 1968 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_24 1600 2160 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_25 1600 2352 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_26 1600 1008 R0
        END INSTANCE
        BEGIN BRANCH a(0)
            WIRE 1552 912 1600 912
            BEGIN DISPLAY 1552 912 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(0)
            WIRE 1552 976 1600 976
            BEGIN DISPLAY 1552 976 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(1)
            WIRE 1552 1168 1600 1168
            BEGIN DISPLAY 1552 1168 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(1)
            WIRE 1552 1104 1600 1104
            BEGIN DISPLAY 1552 1104 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(2)
            WIRE 1552 1360 1600 1360
            BEGIN DISPLAY 1552 1360 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(2)
            WIRE 1552 1296 1600 1296
            BEGIN DISPLAY 1552 1296 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(3)
            WIRE 1552 1552 1600 1552
            BEGIN DISPLAY 1552 1552 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(3)
            WIRE 1552 1488 1600 1488
            BEGIN DISPLAY 1552 1488 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(4)
            WIRE 1552 1744 1600 1744
            BEGIN DISPLAY 1552 1744 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(4)
            WIRE 1552 1680 1600 1680
            BEGIN DISPLAY 1552 1680 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(5)
            WIRE 1552 1936 1600 1936
            BEGIN DISPLAY 1552 1936 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(5)
            WIRE 1552 1872 1600 1872
            BEGIN DISPLAY 1552 1872 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(6)
            WIRE 1552 2128 1600 2128
            BEGIN DISPLAY 1552 2128 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(6)
            WIRE 1552 2064 1600 2064
            BEGIN DISPLAY 1552 2064 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(7)
            WIRE 1536 2320 1600 2320
            BEGIN DISPLAY 1536 2320 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(7)
            WIRE 1552 2256 1600 2256
            BEGIN DISPLAY 1552 2256 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH z(7)
            WIRE 1984 2192 2048 2192
            BEGIN DISPLAY 2048 2192 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH z(6)
            WIRE 1984 2000 2064 2000
            BEGIN DISPLAY 2064 2000 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH z(5)
            WIRE 1984 1808 2048 1808
            BEGIN DISPLAY 2048 1808 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH z(4)
            WIRE 1984 1616 2032 1616
            BEGIN DISPLAY 2032 1616 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH z(3)
            WIRE 1984 1424 2048 1424
            BEGIN DISPLAY 2048 1424 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH z(2)
            WIRE 1984 1232 2048 1232
            BEGIN DISPLAY 2048 1232 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH z(1)
            WIRE 1984 1040 2032 1040
            BEGIN DISPLAY 2032 1040 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH z(0)
            WIRE 1984 848 2032 848
            BEGIN DISPLAY 2032 848 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH z(7:0)
            WIRE 1104 1312 1232 1312
        END BRANCH
        IOMARKER 1232 1312 z(7:0) R0 28
        BEGIN BRANCH sel
            WIRE 1472 848 1568 848
            WIRE 1568 848 1600 848
            WIRE 1568 848 1568 1040
            WIRE 1568 1040 1568 1232
            WIRE 1568 1232 1568 1424
            WIRE 1568 1424 1568 1616
            WIRE 1568 1616 1568 1808
            WIRE 1568 1808 1568 2000
            WIRE 1568 2000 1568 2192
            WIRE 1568 2192 1600 2192
            WIRE 1568 2000 1600 2000
            WIRE 1568 1808 1600 1808
            WIRE 1568 1616 1600 1616
            WIRE 1568 1424 1600 1424
            WIRE 1568 1232 1600 1232
            WIRE 1568 1040 1600 1040
        END BRANCH
        IOMARKER 1472 848 sel R180 28
    END SHEET
END SCHEMATIC
