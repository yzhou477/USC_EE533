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
        SIGNAL a(31:0)
        SIGNAL b(31:0)
        SIGNAL z(31:0)
        PORT Input a(31:0)
        PORT Input b(31:0)
        PORT Output z(31:0)
        BEGIN BLOCKDEF OR2_8bit
            TIMESTAMP 2025 1 26 2 16 59
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_5 OR2_8bit
            PIN a(7:0) a(7:0)
            PIN b(7:0) b(7:0)
            PIN z(7:0) z(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_6 OR2_8bit
            PIN a(7:0) a(15:8)
            PIN b(7:0) b(15:8)
            PIN z(7:0) z(15:8)
        END BLOCK
        BEGIN BLOCK XLXI_7 OR2_8bit
            PIN a(7:0) a(23:16)
            PIN b(7:0) b(23:16)
            PIN z(7:0) z(23:16)
        END BLOCK
        BEGIN BLOCK XLXI_8 OR2_8bit
            PIN a(7:0) a(31:24)
            PIN b(7:0) b(31:24)
            PIN z(7:0) z(31:24)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH a(7:0)
            WIRE 1344 992 1424 992
            BEGIN DISPLAY 1344 992 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(7:0)
            WIRE 1344 1056 1424 1056
            BEGIN DISPLAY 1344 1056 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(15:8)
            WIRE 1344 1200 1424 1200
            BEGIN DISPLAY 1344 1200 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(15:8)
            WIRE 1344 1264 1424 1264
            BEGIN DISPLAY 1344 1264 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(23:16)
            WIRE 1344 1392 1424 1392
            BEGIN DISPLAY 1344 1392 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(23:16)
            WIRE 1344 1456 1424 1456
            BEGIN DISPLAY 1344 1456 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(31:24)
            WIRE 1344 1584 1424 1584
            BEGIN DISPLAY 1344 1584 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(31:24)
            WIRE 1344 1648 1424 1648
            BEGIN DISPLAY 1344 1648 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH z(7:0)
            WIRE 1808 992 1872 992
            BEGIN DISPLAY 1872 992 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH z(15:8)
            WIRE 1808 1200 1872 1200
            BEGIN DISPLAY 1872 1200 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH z(23:16)
            WIRE 1808 1392 1872 1392
            BEGIN DISPLAY 1872 1392 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH z(31:24)
            WIRE 1808 1584 1872 1584
            BEGIN DISPLAY 1872 1584 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(31:0)
            WIRE 1120 976 1216 976
        END BRANCH
        BEGIN BRANCH b(31:0)
            WIRE 1120 1120 1216 1120
        END BRANCH
        BEGIN BRANCH z(31:0)
            WIRE 2000 992 2112 992
        END BRANCH
        IOMARKER 1120 976 a(31:0) R180 28
        IOMARKER 1120 1120 b(31:0) R180 28
        IOMARKER 2112 992 z(31:0) R0 28
        BEGIN INSTANCE XLXI_5 1424 1088 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_6 1424 1296 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_7 1424 1488 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_8 1424 1680 R0
        END INSTANCE
    END SHEET
END SCHEMATIC
