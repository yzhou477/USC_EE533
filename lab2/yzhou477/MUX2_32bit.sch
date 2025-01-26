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
        SIGNAL a(31:0)
        SIGNAL b(31:0)
        SIGNAL z(31:0)
        SIGNAL a(15:8)
        SIGNAL z(15:8)
        SIGNAL z(23:16)
        SIGNAL b(23:16)
        SIGNAL a(23:16)
        SIGNAL b(15:8)
        SIGNAL a(31:24)
        SIGNAL b(31:24)
        SIGNAL z(31:24)
        SIGNAL sel
        SIGNAL XLXN_38
        SIGNAL XLXN_39
        PORT Input a(31:0)
        PORT Input b(31:0)
        PORT Output z(31:0)
        PORT Input sel
        BEGIN BLOCKDEF MUX2_8bit
            TIMESTAMP 2025 1 26 2 35 5
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCK XLXI_9 MUX2_8bit
            PIN a(7:0) a(7:0)
            PIN b(7:0) b(7:0)
            PIN sel sel
            PIN z(7:0) z(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_10 MUX2_8bit
            PIN a(7:0) a(15:8)
            PIN b(7:0) b(15:8)
            PIN sel sel
            PIN z(7:0) z(15:8)
        END BLOCK
        BEGIN BLOCK XLXI_12 MUX2_8bit
            PIN a(7:0) a(31:24)
            PIN b(7:0) b(31:24)
            PIN sel sel
            PIN z(7:0) z(31:24)
        END BLOCK
        BEGIN BLOCK XLXI_11 MUX2_8bit
            PIN a(7:0) a(23:16)
            PIN b(7:0) b(23:16)
            PIN sel sel
            PIN z(7:0) z(23:16)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH a(7:0)
            WIRE 1376 1136 1456 1136
            BEGIN DISPLAY 1376 1136 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(7:0)
            WIRE 1376 1200 1456 1200
            BEGIN DISPLAY 1376 1200 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH z(7:0)
            WIRE 1840 1136 1904 1136
            BEGIN DISPLAY 1904 1136 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(31:0)
            WIRE 1152 1120 1248 1120
        END BRANCH
        BEGIN BRANCH b(31:0)
            WIRE 1152 1264 1248 1264
        END BRANCH
        BEGIN BRANCH z(31:0)
            WIRE 2032 1136 2144 1136
        END BRANCH
        IOMARKER 1152 1120 a(31:0) R180 28
        IOMARKER 1152 1264 b(31:0) R180 28
        IOMARKER 2144 1136 z(31:0) R0 28
        BEGIN INSTANCE XLXI_9 1456 1296 R0
        END INSTANCE
        BEGIN BRANCH a(15:8)
            WIRE 1376 1408 1456 1408
            BEGIN DISPLAY 1376 1408 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH z(15:8)
            WIRE 1840 1408 1904 1408
            BEGIN DISPLAY 1904 1408 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_10 1456 1568 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_11 1456 1760 R0
        END INSTANCE
        BEGIN BRANCH z(23:16)
            WIRE 1840 1600 1904 1600
            BEGIN DISPLAY 1904 1600 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(23:16)
            WIRE 1376 1664 1456 1664
            BEGIN DISPLAY 1376 1664 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(23:16)
            WIRE 1376 1600 1456 1600
            BEGIN DISPLAY 1376 1600 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(15:8)
            WIRE 1376 1472 1456 1472
            BEGIN DISPLAY 1376 1472 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(31:24)
            WIRE 1376 1792 1392 1792
            WIRE 1392 1792 1456 1792
            BEGIN DISPLAY 1376 1792 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH z(31:24)
            WIRE 1840 1792 1888 1792
            WIRE 1888 1792 1904 1792
            BEGIN DISPLAY 1904 1792 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(31:24)
            WIRE 1376 1856 1392 1856
            WIRE 1392 1856 1456 1856
            BEGIN DISPLAY 1376 1856 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_12 1456 1952 R0
        END INSTANCE
        BEGIN BRANCH sel
            WIRE 1248 1536 1360 1536
            WIRE 1360 1536 1456 1536
            WIRE 1360 1536 1360 1728
            WIRE 1360 1728 1456 1728
            WIRE 1360 1728 1360 1920
            WIRE 1360 1920 1456 1920
            WIRE 1360 1264 1456 1264
            WIRE 1360 1264 1360 1536
        END BRANCH
        IOMARKER 1248 1536 sel R180 28
    END SHEET
END SCHEMATIC
