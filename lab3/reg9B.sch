VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL d(71:0)
        SIGNAL q(71:0)
        SIGNAL XLXN_3
        SIGNAL XLXN_4
        SIGNAL XLXN_5
        SIGNAL ce
        SIGNAL XLXN_7
        SIGNAL XLXN_8
        SIGNAL clk
        SIGNAL XLXN_10
        SIGNAL XLXN_11
        SIGNAL clr
        SIGNAL XLXN_13
        SIGNAL XLXN_14
        SIGNAL q(15:0)
        SIGNAL d(15:0)
        SIGNAL q(31:16)
        SIGNAL d(31:16)
        SIGNAL q(47:32)
        SIGNAL d(47:32)
        SIGNAL q(63:48)
        SIGNAL d(63:48)
        SIGNAL q(71:64)
        SIGNAL d(71:64)
        PORT Input d(71:0)
        PORT Output q(71:0)
        PORT Input ce
        PORT Input clk
        PORT Input clr
        BEGIN BLOCKDEF fd16ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 320 -268 384 -244 
            RECTANGLE N 0 -268 64 -244 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF fd8ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 320 -268 384 -244 
            RECTANGLE N 0 -268 64 -244 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_2 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(63:48)
            PIN Q(15:0) q(63:48)
        END BLOCK
        BEGIN BLOCK XLXI_3 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(47:32)
            PIN Q(15:0) q(47:32)
        END BLOCK
        BEGIN BLOCK XLXI_4 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(31:16)
            PIN Q(15:0) q(31:16)
        END BLOCK
        BEGIN BLOCK XLXI_5 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(15:0)
            PIN Q(15:0) q(15:0)
        END BLOCK
        BEGIN BLOCK XLXI_6 fd8ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(7:0) d(71:64)
            PIN Q(7:0) q(71:64)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_2 1376 1104 R0
        INSTANCE XLXI_3 1376 1472 R0
        INSTANCE XLXI_4 1376 1824 R0
        INSTANCE XLXI_5 1376 2192 R0
        BEGIN BRANCH d(71:0)
            WIRE 1104 208 1280 208
        END BRANCH
        BEGIN BRANCH q(71:0)
            WIRE 1584 208 1808 208
        END BRANCH
        BEGIN BRANCH ce
            WIRE 1264 2000 1312 2000
            WIRE 1312 2000 1360 2000
            WIRE 1360 2000 1376 2000
            WIRE 1360 544 1376 544
            WIRE 1360 544 1360 912
            WIRE 1360 912 1376 912
            WIRE 1360 912 1360 1280
            WIRE 1360 1280 1376 1280
            WIRE 1360 1280 1360 1632
            WIRE 1360 1632 1376 1632
            WIRE 1360 1632 1360 2000
        END BRANCH
        BEGIN BRANCH clk
            WIRE 1264 2064 1312 2064
            WIRE 1312 2064 1344 2064
            WIRE 1344 2064 1376 2064
            WIRE 1344 608 1376 608
            WIRE 1344 608 1344 976
            WIRE 1344 976 1376 976
            WIRE 1344 976 1344 1344
            WIRE 1344 1344 1376 1344
            WIRE 1344 1344 1344 1696
            WIRE 1344 1696 1376 1696
            WIRE 1344 1696 1344 2064
        END BRANCH
        BEGIN BRANCH clr
            WIRE 1264 2160 1312 2160
            WIRE 1312 2160 1328 2160
            WIRE 1328 2160 1376 2160
            WIRE 1328 704 1376 704
            WIRE 1328 704 1328 1072
            WIRE 1328 1072 1376 1072
            WIRE 1328 1072 1328 1440
            WIRE 1328 1440 1376 1440
            WIRE 1328 1440 1328 1792
            WIRE 1328 1792 1376 1792
            WIRE 1328 1792 1328 2160
        END BRANCH
        BEGIN BRANCH q(15:0)
            WIRE 1760 1936 1840 1936
            BEGIN DISPLAY 1840 1936 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(15:0)
            WIRE 1264 1936 1376 1936
            BEGIN DISPLAY 1264 1936 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(31:16)
            WIRE 1760 1568 1824 1568
            BEGIN DISPLAY 1824 1568 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(31:16)
            WIRE 1264 1568 1376 1568
            BEGIN DISPLAY 1264 1568 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(47:32)
            WIRE 1760 1216 1840 1216
            BEGIN DISPLAY 1840 1216 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(47:32)
            WIRE 1280 1216 1376 1216
            BEGIN DISPLAY 1280 1216 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(63:48)
            WIRE 1760 848 1840 848
            BEGIN DISPLAY 1840 848 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(63:48)
            WIRE 1280 848 1376 848
            BEGIN DISPLAY 1280 848 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(71:64)
            WIRE 1760 480 1840 480
            BEGIN DISPLAY 1840 480 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(71:64)
            WIRE 1280 480 1376 480
            BEGIN DISPLAY 1280 480 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 1264 2000 ce R180 28
        IOMARKER 1264 2064 clk R180 28
        IOMARKER 1264 2160 clr R180 28
        IOMARKER 1104 208 d(71:0) R180 28
        IOMARKER 1808 208 q(71:0) R0 28
        INSTANCE XLXI_6 1376 736 R0
    END SHEET
END SCHEMATIC
