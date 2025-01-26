VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan2e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL a(7:0)
        SIGNAL clear
        SIGNAL b(7:0)
        SIGNAL zreg(7:0)
        SIGNAL coutreg
        SIGNAL enable
        SIGNAL clk
        SIGNAL cin
        SIGNAL XLXN_88(7:0)
        SIGNAL XLXN_89(7:0)
        SIGNAL XLXN_90
        SIGNAL XLXN_91(7:0)
        SIGNAL XLXN_92
        PORT Input a(7:0)
        PORT Input clear
        PORT Input b(7:0)
        PORT Output zreg(7:0)
        PORT Output coutreg
        PORT Input enable
        PORT Input clk
        PORT Input cin
        BEGIN BLOCKDEF fdce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
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
        BEGIN BLOCKDEF fadd_8bit
            TIMESTAMP 2025 1 25 16 40 6
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
        BEGIN BLOCK XLXI_43 fadd_8bit
            PIN a(7:0) XLXN_88(7:0)
            PIN b(7:0) XLXN_89(7:0)
            PIN cin XLXN_90
            PIN z(7:0) XLXN_91(7:0)
            PIN cout XLXN_92
        END BLOCK
        BEGIN BLOCK XLXI_36 fd8ce
            PIN C clk
            PIN CE enable
            PIN CLR clear
            PIN D(7:0) a(7:0)
            PIN Q(7:0) XLXN_88(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_37 fd8ce
            PIN C clk
            PIN CE enable
            PIN CLR clear
            PIN D(7:0) b(7:0)
            PIN Q(7:0) XLXN_89(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_42 fd8ce
            PIN C clk
            PIN CE enable
            PIN CLR clear
            PIN D(7:0) XLXN_91(7:0)
            PIN Q(7:0) zreg(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_40 fdce
            PIN C clk
            PIN CE enable
            PIN CLR clear
            PIN D XLXN_92
            PIN Q coutreg
        END BLOCK
        BEGIN BLOCK XLXI_35 fdce
            PIN C clk
            PIN CE enable
            PIN CLR clear
            PIN D cin
            PIN Q XLXN_90
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_43 1424 1392 R0
        END INSTANCE
        INSTANCE XLXI_36 880 1216 R0
        BEGIN BRANCH a(7:0)
            WIRE 720 960 880 960
        END BRANCH
        BEGIN BRANCH clk
            WIRE 816 1088 880 1088
            BEGIN DISPLAY 816 1088 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clear
            WIRE 816 1184 880 1184
            BEGIN DISPLAY 816 1184 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH enable
            WIRE 800 1024 880 1024
            BEGIN DISPLAY 800 1024 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 720 960 a(7:0) R180 28
        INSTANCE XLXI_37 880 1632 R0
        BEGIN BRANCH b(7:0)
            WIRE 720 1376 880 1376
        END BRANCH
        BEGIN BRANCH clear
            WIRE 800 1600 880 1600
            BEGIN DISPLAY 800 1600 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH enable
            WIRE 800 1440 880 1440
            BEGIN DISPLAY 800 1440 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 720 1376 b(7:0) R180 28
        INSTANCE XLXI_42 2064 1200 R0
        BEGIN BRANCH zreg(7:0)
            WIRE 2448 944 2592 944
        END BRANCH
        BEGIN BRANCH enable
            WIRE 1984 1008 2064 1008
            BEGIN DISPLAY 1984 1008 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 1984 1072 2064 1072
            BEGIN DISPLAY 1984 1072 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clear
            WIRE 1968 1168 2064 1168
            BEGIN DISPLAY 1968 1168 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 2592 944 zreg(7:0) R0 28
        INSTANCE XLXI_40 2064 1824 R0
        BEGIN BRANCH coutreg
            WIRE 2448 1568 2544 1568
        END BRANCH
        BEGIN BRANCH enable
            WIRE 1968 1632 2064 1632
            BEGIN DISPLAY 1968 1632 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 1968 1696 2064 1696
            BEGIN DISPLAY 1968 1696 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clear
            WIRE 1968 1792 2064 1792
            BEGIN DISPLAY 1968 1792 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 2544 1568 coutreg R0 28
        BEGIN BRANCH clk
            WIRE 1648 1952 1808 1952
        END BRANCH
        BEGIN BRANCH enable
            WIRE 1648 1856 1808 1856
        END BRANCH
        BEGIN BRANCH clear
            WIRE 1648 2048 1808 2048
        END BRANCH
        IOMARKER 1648 1952 clk R180 28
        IOMARKER 1648 1856 enable R180 28
        IOMARKER 1648 2048 clear R180 28
        INSTANCE XLXI_35 880 2048 R0
        BEGIN BRANCH cin
            WIRE 816 1792 880 1792
        END BRANCH
        BEGIN BRANCH enable
            WIRE 816 1856 880 1856
            BEGIN DISPLAY 816 1856 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 816 1920 880 1920
            BEGIN DISPLAY 816 1920 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clear
            WIRE 816 2016 880 2016
            BEGIN DISPLAY 816 2016 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 816 1792 cin R180 28
        BEGIN BRANCH clk
            WIRE 784 1504 880 1504
            BEGIN DISPLAY 784 1504 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_88(7:0)
            WIRE 1264 960 1344 960
            WIRE 1344 960 1344 1232
            WIRE 1344 1232 1424 1232
        END BRANCH
        BEGIN BRANCH XLXN_89(7:0)
            WIRE 1264 1376 1344 1376
            WIRE 1344 1296 1344 1376
            WIRE 1344 1296 1424 1296
        END BRANCH
        BEGIN BRANCH XLXN_90
            WIRE 1264 1792 1360 1792
            WIRE 1360 1360 1360 1792
            WIRE 1360 1360 1424 1360
        END BRANCH
        BEGIN BRANCH XLXN_91(7:0)
            WIRE 1808 1232 1936 1232
            WIRE 1936 944 1936 1232
            WIRE 1936 944 2064 944
        END BRANCH
        BEGIN BRANCH XLXN_92
            WIRE 1808 1360 1936 1360
            WIRE 1936 1360 1936 1568
            WIRE 1936 1568 2064 1568
        END BRANCH
    END SHEET
END SCHEMATIC
