VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan2e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL b(31:0)
        SIGNAL z(31:0)
        SIGNAL opr
        SIGNAL b(31:24)
        SIGNAL b(23:16)
        SIGNAL b(15:8)
        SIGNAL b(7:0)
        SIGNAL z(7:0)
        SIGNAL z(15:8)
        SIGNAL z(23:16)
        SIGNAL z(31:24)
        PORT Input b(31:0)
        PORT Output z(31:0)
        PORT Input opr
        BEGIN BLOCKDEF XOR1_8bit
            TIMESTAMP 2025 1 25 19 45 58
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_5 XOR1_8bit
            PIN b(7:0) b(31:24)
            PIN opr opr
            PIN z(7:0) z(31:24)
        END BLOCK
        BEGIN BLOCK XLXI_6 XOR1_8bit
            PIN b(7:0) b(23:16)
            PIN opr opr
            PIN z(7:0) z(23:16)
        END BLOCK
        BEGIN BLOCK XLXI_7 XOR1_8bit
            PIN b(7:0) b(15:8)
            PIN opr opr
            PIN z(7:0) z(15:8)
        END BLOCK
        BEGIN BLOCK XLXI_8 XOR1_8bit
            PIN b(7:0) b(7:0)
            PIN opr opr
            PIN z(7:0) z(7:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH b(31:0)
            WIRE 800 896 880 896
        END BRANCH
        BEGIN BRANCH z(31:0)
            WIRE 1120 896 1200 896
        END BRANCH
        IOMARKER 800 896 b(31:0) R180 28
        IOMARKER 1200 896 z(31:0) R0 28
        BEGIN BRANCH opr
            WIRE 704 1056 704 1104
            WIRE 704 1056 976 1056
            WIRE 976 1056 1232 1056
            WIRE 1232 1056 1488 1056
            WIRE 1488 1056 1680 1056
            WIRE 1488 1056 1488 1104
            WIRE 1232 1056 1232 1104
            WIRE 976 1056 976 1104
        END BRANCH
        BEGIN BRANCH b(31:24)
            WIRE 768 1008 768 1104
        END BRANCH
        BEGIN BRANCH b(23:16)
            WIRE 1040 1008 1040 1104
        END BRANCH
        BEGIN BRANCH b(15:8)
            WIRE 1296 1008 1296 1104
        END BRANCH
        BEGIN BRANCH b(7:0)
            WIRE 1552 1008 1552 1104
        END BRANCH
        BEGIN BRANCH z(7:0)
            WIRE 1552 1488 1552 1568
        END BRANCH
        BEGIN BRANCH z(15:8)
            WIRE 1296 1488 1296 1552
        END BRANCH
        BEGIN BRANCH z(23:16)
            WIRE 1040 1488 1040 1552
        END BRANCH
        BEGIN BRANCH z(31:24)
            WIRE 768 1488 768 1552
        END BRANCH
        IOMARKER 1680 1056 opr R0 28
        BEGIN INSTANCE XLXI_5 672 1104 R90
        END INSTANCE
        BEGIN INSTANCE XLXI_6 944 1104 R90
        END INSTANCE
        BEGIN INSTANCE XLXI_7 1200 1104 R90
        END INSTANCE
        BEGIN INSTANCE XLXI_8 1456 1104 R90
        END INSTANCE
    END SHEET
END SCHEMATIC
