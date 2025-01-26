VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan2e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL b(7:0)
        SIGNAL b(7)
        SIGNAL b(6)
        SIGNAL b(5)
        SIGNAL b(4)
        SIGNAL b(3)
        SIGNAL b(2)
        SIGNAL b(1)
        SIGNAL b(0)
        SIGNAL z(7)
        SIGNAL z(6)
        SIGNAL z(5)
        SIGNAL z(4)
        SIGNAL z(3)
        SIGNAL z(2)
        SIGNAL z(1)
        SIGNAL z(0)
        SIGNAL opr
        SIGNAL z(7:0)
        PORT Input b(7:0)
        PORT Input opr
        PORT Output z(7:0)
        BEGIN BLOCKDEF xor2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 60 -128 
            LINE N 256 -96 208 -96 
            ARC N -40 -152 72 -40 48 -48 44 -144 
            ARC N -24 -152 88 -40 64 -48 64 -144 
            LINE N 128 -144 64 -144 
            LINE N 128 -48 64 -48 
            ARC N 44 -144 220 32 208 -96 128 -144 
            ARC N 44 -224 220 -48 128 -48 208 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_9 xor2
            PIN I0 b(7)
            PIN I1 opr
            PIN O z(7)
        END BLOCK
        BEGIN BLOCK XLXI_10 xor2
            PIN I0 b(6)
            PIN I1 opr
            PIN O z(6)
        END BLOCK
        BEGIN BLOCK XLXI_11 xor2
            PIN I0 b(5)
            PIN I1 opr
            PIN O z(5)
        END BLOCK
        BEGIN BLOCK XLXI_12 xor2
            PIN I0 b(4)
            PIN I1 opr
            PIN O z(4)
        END BLOCK
        BEGIN BLOCK XLXI_13 xor2
            PIN I0 b(3)
            PIN I1 opr
            PIN O z(3)
        END BLOCK
        BEGIN BLOCK XLXI_14 xor2
            PIN I0 b(2)
            PIN I1 opr
            PIN O z(2)
        END BLOCK
        BEGIN BLOCK XLXI_15 xor2
            PIN I0 b(1)
            PIN I1 opr
            PIN O z(1)
        END BLOCK
        BEGIN BLOCK XLXI_16 xor2
            PIN I0 b(0)
            PIN I1 opr
            PIN O z(0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_9 896 400 R90
        INSTANCE XLXI_10 1056 400 R90
        INSTANCE XLXI_11 1216 400 R90
        INSTANCE XLXI_12 1376 400 R90
        INSTANCE XLXI_13 1536 400 R90
        INSTANCE XLXI_14 1696 400 R90
        INSTANCE XLXI_15 1856 400 R90
        INSTANCE XLXI_16 2016 400 R90
        BEGIN BRANCH b(7:0)
            WIRE 1040 160 1120 160
        END BRANCH
        BEGIN BRANCH b(7)
            WIRE 960 320 960 400
        END BRANCH
        BEGIN BRANCH b(6)
            WIRE 1120 320 1120 400
        END BRANCH
        BEGIN BRANCH b(5)
            WIRE 1280 320 1280 400
        END BRANCH
        BEGIN BRANCH b(4)
            WIRE 1440 320 1440 400
        END BRANCH
        BEGIN BRANCH b(3)
            WIRE 1600 320 1600 400
        END BRANCH
        BEGIN BRANCH b(2)
            WIRE 1760 320 1760 400
        END BRANCH
        BEGIN BRANCH b(1)
            WIRE 1920 320 1920 400
        END BRANCH
        BEGIN BRANCH b(0)
            WIRE 2080 320 2080 400
        END BRANCH
        BEGIN BRANCH z(7)
            WIRE 992 656 992 720
        END BRANCH
        BEGIN BRANCH z(6)
            WIRE 1152 656 1152 720
        END BRANCH
        BEGIN BRANCH z(5)
            WIRE 1312 656 1312 720
        END BRANCH
        BEGIN BRANCH z(4)
            WIRE 1472 656 1472 720
        END BRANCH
        BEGIN BRANCH z(3)
            WIRE 1632 656 1632 720
        END BRANCH
        BEGIN BRANCH z(2)
            WIRE 1792 656 1792 720
        END BRANCH
        BEGIN BRANCH z(1)
            WIRE 1952 656 1952 720
        END BRANCH
        BEGIN BRANCH z(0)
            WIRE 2112 656 2112 720
        END BRANCH
        BEGIN BRANCH opr
            WIRE 1024 368 1024 400
            WIRE 1024 368 1184 368
            WIRE 1184 368 1344 368
            WIRE 1344 368 1504 368
            WIRE 1504 368 1664 368
            WIRE 1664 368 1824 368
            WIRE 1824 368 1984 368
            WIRE 1984 368 2144 368
            WIRE 2144 368 2240 368
            WIRE 2144 368 2144 400
            WIRE 1984 368 1984 400
            WIRE 1824 368 1824 400
            WIRE 1664 368 1664 400
            WIRE 1504 368 1504 400
            WIRE 1344 368 1344 400
            WIRE 1184 368 1184 400
        END BRANCH
        BEGIN BRANCH z(7:0)
            WIRE 1360 160 1440 160
        END BRANCH
        IOMARKER 1040 160 b(7:0) R180 28
        IOMARKER 1440 160 z(7:0) R0 28
        IOMARKER 2240 368 opr R0 28
    END SHEET
END SCHEMATIC
