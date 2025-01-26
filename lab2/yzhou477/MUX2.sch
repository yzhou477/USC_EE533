VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan2e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL s
        SIGNAL a
        SIGNAL b
        SIGNAL XLXN_5
        SIGNAL XLXN_6
        SIGNAL z
        PORT Input s
        PORT Input a
        PORT Input b
        PORT Output z
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
        BEGIN BLOCKDEF inv
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -32 64 -32 
            LINE N 224 -32 160 -32 
            LINE N 64 -64 128 -32 
            LINE N 128 -32 64 0 
            LINE N 64 0 64 -64 
            CIRCLE N 128 -48 160 -16 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 and2
            PIN I0 XLXN_1
            PIN I1 a
            PIN O XLXN_5
        END BLOCK
        BEGIN BLOCK XLXI_2 and2
            PIN I0 s
            PIN I1 b
            PIN O XLXN_6
        END BLOCK
        BEGIN BLOCK XLXI_3 or2
            PIN I0 XLXN_6
            PIN I1 XLXN_5
            PIN O z
        END BLOCK
        BEGIN BLOCK XLXI_4 inv
            PIN I s
            PIN O XLXN_1
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1136 816 R0
        INSTANCE XLXI_2 1136 976 R0
        INSTANCE XLXI_3 1456 896 R0
        INSTANCE XLXI_4 1088 1216 R270
        BEGIN BRANCH XLXN_1
            WIRE 1056 752 1136 752
            WIRE 1056 752 1056 992
        END BRANCH
        BEGIN BRANCH s
            WIRE 896 912 960 912
            WIRE 960 912 960 1296
            WIRE 960 1296 1056 1296
            WIRE 960 912 1136 912
            WIRE 1056 1216 1056 1296
        END BRANCH
        BEGIN BRANCH a
            WIRE 896 688 1136 688
        END BRANCH
        BEGIN BRANCH b
            WIRE 896 848 1136 848
        END BRANCH
        BEGIN BRANCH XLXN_5
            WIRE 1392 720 1424 720
            WIRE 1424 720 1424 768
            WIRE 1424 768 1456 768
        END BRANCH
        BEGIN BRANCH XLXN_6
            WIRE 1392 880 1424 880
            WIRE 1424 832 1424 880
            WIRE 1424 832 1456 832
        END BRANCH
        BEGIN BRANCH z
            WIRE 1712 800 1760 800
        END BRANCH
        IOMARKER 896 688 a R180 28
        IOMARKER 896 848 b R180 28
        IOMARKER 896 912 s R180 28
        IOMARKER 1760 800 z R0 28
    END SHEET
END SCHEMATIC
