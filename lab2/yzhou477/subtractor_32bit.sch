VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan2e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL b(31:0)
        SIGNAL XLXN_8(31:0)
        SIGNAL opr
        SIGNAL cout
        SIGNAL z(31:0)
        SIGNAL a(31:0)
        PORT Input b(31:0)
        PORT Input opr
        PORT Output cout
        PORT Output z(31:0)
        PORT Input a(31:0)
        BEGIN BLOCKDEF XOR1_32bit
            TIMESTAMP 2025 1 25 19 47 2
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF fadd_32bit
            TIMESTAMP 2025 1 25 17 48 5
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 XOR1_32bit
            PIN b(31:0) b(31:0)
            PIN opr opr
            PIN z(31:0) XLXN_8(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 fadd_32bit
            PIN a(31:0) a(31:0)
            PIN b(31:0) XLXN_8(31:0)
            PIN cin opr
            PIN z(31:0) z(31:0)
            PIN cout cout
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1360 976 R0
        END INSTANCE
        BEGIN BRANCH b(31:0)
            WIRE 1296 880 1360 880
        END BRANCH
        BEGIN INSTANCE XLXI_2 1776 976 R0
        END INSTANCE
        BEGIN BRANCH XLXN_8(31:0)
            WIRE 1744 880 1776 880
        END BRANCH
        BEGIN BRANCH opr
            WIRE 1248 944 1296 944
            WIRE 1296 944 1312 944
            WIRE 1312 944 1360 944
            WIRE 1312 944 1312 1040
            WIRE 1312 1040 1360 1040
            WIRE 1360 1040 1760 1040
            WIRE 1760 944 1776 944
            WIRE 1760 944 1760 1040
        END BRANCH
        BEGIN BRANCH cout
            WIRE 2160 944 2192 944
        END BRANCH
        BEGIN BRANCH z(31:0)
            WIRE 2160 816 2192 816
        END BRANCH
        BEGIN BRANCH a(31:0)
            WIRE 1760 720 1760 816
            WIRE 1760 816 1776 816
        END BRANCH
        IOMARKER 1296 880 b(31:0) R180 28
        IOMARKER 1248 944 opr R180 28
        IOMARKER 1760 720 a(31:0) R270 28
        IOMARKER 2192 816 z(31:0) R0 28
        IOMARKER 2192 944 cout R0 28
    END SHEET
END SCHEMATIC
