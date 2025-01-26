VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan2e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL a
        SIGNAL b
        SIGNAL XLXN_3
        SIGNAL XLXN_4
        SIGNAL XLXN_11
        SIGNAL XLXN_12
        SIGNAL cin
        SIGNAL z
        SIGNAL cout
        PORT Input a
        PORT Input b
        PORT Input cin
        PORT Output z
        PORT Output cout
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
        BEGIN BLOCKDEF or3
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 72 -128 
            LINE N 0 -192 48 -192 
            LINE N 256 -128 192 -128 
            ARC N 28 -256 204 -80 112 -80 192 -128 
            ARC N -40 -184 72 -72 48 -80 48 -176 
            LINE N 48 -64 48 -80 
            LINE N 48 -192 48 -176 
            LINE N 112 -80 48 -80 
            ARC N 28 -176 204 0 192 -128 112 -176 
            LINE N 112 -176 48 -176 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 xor2
            PIN I0 b
            PIN I1 a
            PIN O XLXN_3
        END BLOCK
        BEGIN BLOCK XLXI_2 xor2
            PIN I0 cin
            PIN I1 XLXN_3
            PIN O z
        END BLOCK
        BEGIN BLOCK XLXI_3 and2
            PIN I0 b
            PIN I1 a
            PIN O XLXN_4
        END BLOCK
        BEGIN BLOCK XLXI_4 and2
            PIN I0 cin
            PIN I1 a
            PIN O XLXN_11
        END BLOCK
        BEGIN BLOCK XLXI_5 and2
            PIN I0 cin
            PIN I1 b
            PIN O XLXN_12
        END BLOCK
        BEGIN BLOCK XLXI_6 or3
            PIN I0 XLXN_12
            PIN I1 XLXN_11
            PIN I2 XLXN_4
            PIN O cout
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1392 1120 R0
        INSTANCE XLXI_2 1776 1152 R0
        INSTANCE XLXI_3 1392 1328 R0
        INSTANCE XLXI_4 1392 1504 R0
        INSTANCE XLXI_5 1392 1680 R0
        INSTANCE XLXI_6 1792 1536 R0
        BEGIN BRANCH a
            WIRE 1168 992 1216 992
            WIRE 1216 992 1216 1200
            WIRE 1216 1200 1216 1376
            WIRE 1216 1376 1392 1376
            WIRE 1216 1200 1392 1200
            WIRE 1216 992 1392 992
        END BRANCH
        BEGIN BRANCH b
            WIRE 1168 1056 1248 1056
            WIRE 1248 1056 1248 1264
            WIRE 1248 1264 1248 1552
            WIRE 1248 1552 1392 1552
            WIRE 1248 1264 1392 1264
            WIRE 1248 1056 1392 1056
        END BRANCH
        BEGIN BRANCH XLXN_3
            WIRE 1648 1024 1776 1024
        END BRANCH
        BEGIN BRANCH XLXN_4
            WIRE 1648 1232 1792 1232
            WIRE 1792 1232 1792 1344
        END BRANCH
        BEGIN BRANCH XLXN_11
            WIRE 1648 1408 1792 1408
        END BRANCH
        BEGIN BRANCH XLXN_12
            WIRE 1648 1584 1792 1584
            WIRE 1792 1472 1792 1584
        END BRANCH
        BEGIN BRANCH cin
            WIRE 1168 1136 1280 1136
            WIRE 1280 1136 1712 1136
            WIRE 1280 1136 1280 1440
            WIRE 1280 1440 1280 1616
            WIRE 1280 1616 1312 1616
            WIRE 1312 1616 1392 1616
            WIRE 1280 1440 1312 1440
            WIRE 1312 1440 1392 1440
            WIRE 1712 1088 1776 1088
            WIRE 1712 1088 1712 1136
        END BRANCH
        BEGIN BRANCH z
            WIRE 2032 1056 2096 1056
        END BRANCH
        BEGIN BRANCH cout
            WIRE 2048 1408 2096 1408
        END BRANCH
        IOMARKER 2096 1056 z R0 28
        IOMARKER 2096 1408 cout R0 28
        IOMARKER 1168 992 a R180 28
        IOMARKER 1168 1056 b R180 28
        IOMARKER 1168 1136 cin R180 28
    END SHEET
END SCHEMATIC
