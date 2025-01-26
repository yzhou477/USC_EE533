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
        BEGIN BLOCKDEF AND2_8bit
            TIMESTAMP 2025 1 25 23 10 51
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 AND2_8bit
            PIN a(7:0) a(7:0)
            PIN b(7:0) b(7:0)
            PIN z(7:0) z(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 AND2_8bit
            PIN a(7:0) a(15:8)
            PIN b(7:0) b(15:8)
            PIN z(7:0) z(15:8)
        END BLOCK
        BEGIN BLOCK XLXI_3 AND2_8bit
            PIN a(7:0) a(23:16)
            PIN b(7:0) b(23:16)
            PIN z(7:0) z(23:16)
        END BLOCK
        BEGIN BLOCK XLXI_4 AND2_8bit
            PIN a(7:0) a(31:24)
            PIN b(7:0) b(31:24)
            PIN z(7:0) z(31:24)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1184 880 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1184 1088 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1184 1280 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 1184 1472 R0
        END INSTANCE
        BEGIN BRANCH a(7:0)
            WIRE 1104 784 1184 784
            BEGIN DISPLAY 1104 784 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(7:0)
            WIRE 1104 848 1184 848
            BEGIN DISPLAY 1104 848 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(15:8)
            WIRE 1104 992 1184 992
            BEGIN DISPLAY 1104 992 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(15:8)
            WIRE 1104 1056 1184 1056
            BEGIN DISPLAY 1104 1056 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(23:16)
            WIRE 1104 1184 1184 1184
            BEGIN DISPLAY 1104 1184 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(23:16)
            WIRE 1104 1248 1184 1248
            BEGIN DISPLAY 1104 1248 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(31:24)
            WIRE 1104 1376 1184 1376
            BEGIN DISPLAY 1104 1376 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(31:24)
            WIRE 1104 1440 1184 1440
            BEGIN DISPLAY 1104 1440 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH z(7:0)
            WIRE 1568 784 1632 784
            BEGIN DISPLAY 1632 784 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH z(15:8)
            WIRE 1568 992 1632 992
            BEGIN DISPLAY 1632 992 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH z(23:16)
            WIRE 1568 1184 1632 1184
            BEGIN DISPLAY 1632 1184 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH z(31:24)
            WIRE 1568 1376 1632 1376
            BEGIN DISPLAY 1632 1376 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(31:0)
            WIRE 880 768 976 768
        END BRANCH
        BEGIN BRANCH b(31:0)
            WIRE 880 912 976 912
        END BRANCH
        BEGIN BRANCH z(31:0)
            WIRE 1760 784 1872 784
        END BRANCH
        IOMARKER 880 768 a(31:0) R180 28
        IOMARKER 880 912 b(31:0) R180 28
        IOMARKER 1872 784 z(31:0) R0 28
    END SHEET
END SCHEMATIC
