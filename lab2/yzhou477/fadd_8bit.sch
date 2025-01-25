VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan2e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_2
        SIGNAL XLXN_1
        SIGNAL XLXN_5
        SIGNAL XLXN_6
        SIGNAL XLXN_12
        SIGNAL XLXN_14
        SIGNAL XLXN_16
        SIGNAL z(0)
        SIGNAL z(1)
        SIGNAL z(2)
        SIGNAL z(3)
        SIGNAL z(4)
        SIGNAL z(5)
        SIGNAL z(6)
        SIGNAL z(7)
        SIGNAL XLXN_25
        SIGNAL a_reg(0)
        SIGNAL b_reg(0)
        SIGNAL XLXN_28
        SIGNAL a_reg(1)
        SIGNAL b_reg(1)
        SIGNAL a_reg(2)
        SIGNAL b_reg(2)
        SIGNAL a_reg(3)
        SIGNAL b_reg(3)
        SIGNAL a_reg(4)
        SIGNAL b_reg(4)
        SIGNAL a_reg(5)
        SIGNAL b_reg(5)
        SIGNAL a_reg(6)
        SIGNAL b_reg(6)
        SIGNAL a_reg(7)
        SIGNAL b_reg(7)
        SIGNAL cin
        SIGNAL a(7:0)
        SIGNAL b(7:0)
        SIGNAL zreg(7:0)
        SIGNAL coutreg
        SIGNAL clk
        SIGNAL enable
        SIGNAL clear
        SIGNAL a_reg(7:0)
        SIGNAL b_reg(7:0)
        SIGNAL z(7:0)
        PORT Input cin
        PORT Input a(7:0)
        PORT Input b(7:0)
        PORT Output zreg(7:0)
        PORT Output coutreg
        PORT Input clk
        PORT Input enable
        PORT Input clear
        BEGIN BLOCKDEF fadd_1bit
            TIMESTAMP 2025 1 25 8 0 31
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
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
        BEGIN BLOCK XLXI_5 fadd_1bit
            PIN a a_reg(4)
            PIN b b_reg(4)
            PIN cin XLXN_6
            PIN z z(4)
            PIN cout XLXN_12
        END BLOCK
        BEGIN BLOCK XLXI_4 fadd_1bit
            PIN a a_reg(3)
            PIN b b_reg(3)
            PIN cin XLXN_5
            PIN z z(3)
            PIN cout XLXN_6
        END BLOCK
        BEGIN BLOCK XLXI_3 fadd_1bit
            PIN a a_reg(2)
            PIN b b_reg(2)
            PIN cin XLXN_2
            PIN z z(2)
            PIN cout XLXN_5
        END BLOCK
        BEGIN BLOCK XLXI_2 fadd_1bit
            PIN a a_reg(1)
            PIN b b_reg(1)
            PIN cin XLXN_1
            PIN z z(1)
            PIN cout XLXN_2
        END BLOCK
        BEGIN BLOCK XLXI_1 fadd_1bit
            PIN a a_reg(0)
            PIN b b_reg(0)
            PIN cin XLXN_28
            PIN z z(0)
            PIN cout XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_6 fadd_1bit
            PIN a a_reg(5)
            PIN b b_reg(5)
            PIN cin XLXN_12
            PIN z z(5)
            PIN cout XLXN_14
        END BLOCK
        BEGIN BLOCK XLXI_7 fadd_1bit
            PIN a a_reg(6)
            PIN b b_reg(6)
            PIN cin XLXN_14
            PIN z z(6)
            PIN cout XLXN_16
        END BLOCK
        BEGIN BLOCK XLXI_8 fadd_1bit
            PIN a a_reg(7)
            PIN b b_reg(7)
            PIN cin XLXN_16
            PIN z z(7)
            PIN cout XLXN_25
        END BLOCK
        BEGIN BLOCK XLXI_35 fdce
            PIN C clk
            PIN CE enable
            PIN CLR clear
            PIN D cin
            PIN Q XLXN_28
        END BLOCK
        BEGIN BLOCK XLXI_36 fd8ce
            PIN C clk
            PIN CE enable
            PIN CLR clear
            PIN D(7:0) a(7:0)
            PIN Q(7:0) a_reg(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_37 fd8ce
            PIN C clk
            PIN CE enable
            PIN CLR clear
            PIN D(7:0) b(7:0)
            PIN Q(7:0) b_reg(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_42 fd8ce
            PIN C clk
            PIN CE enable
            PIN CLR clear
            PIN D(7:0) z(7:0)
            PIN Q(7:0) zreg(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_40 fdce
            PIN C clk
            PIN CE enable
            PIN CLR clear
            PIN D XLXN_25
            PIN Q coutreg
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_5 1872 1536 R270
        END INSTANCE
        BEGIN INSTANCE XLXI_4 1536 1536 R270
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1216 1536 R270
        END INSTANCE
        BEGIN INSTANCE XLXI_2 896 1536 R270
        END INSTANCE
        BEGIN INSTANCE XLXI_1 576 1536 R270
        END INSTANCE
        BEGIN BRANCH XLXN_2
            WIRE 864 1072 864 1152
            WIRE 864 1072 960 1072
            WIRE 960 1072 960 1616
            WIRE 960 1616 1184 1616
            WIRE 1184 1536 1184 1616
        END BRANCH
        BEGIN BRANCH XLXN_1
            WIRE 320 1088 544 1088
            WIRE 544 1088 544 1152
            WIRE 320 1088 320 1616
            WIRE 320 1616 864 1616
            WIRE 864 1536 864 1616
        END BRANCH
        BEGIN BRANCH XLXN_5
            WIRE 1184 1088 1184 1152
            WIRE 1184 1088 1296 1088
            WIRE 1296 1088 1296 1616
            WIRE 1296 1616 1504 1616
            WIRE 1504 1536 1504 1616
        END BRANCH
        BEGIN BRANCH XLXN_6
            WIRE 1504 1088 1504 1152
            WIRE 1504 1088 1600 1088
            WIRE 1600 1088 1600 1616
            WIRE 1600 1616 1840 1616
            WIRE 1840 1536 1840 1616
        END BRANCH
        BEGIN INSTANCE XLXI_6 2208 1536 R270
        END INSTANCE
        BEGIN INSTANCE XLXI_7 2544 1536 R270
        END INSTANCE
        BEGIN INSTANCE XLXI_8 2880 1536 R270
        END INSTANCE
        BEGIN BRANCH XLXN_12
            WIRE 1840 1136 1840 1152
            WIRE 1840 1136 1920 1136
            WIRE 1920 1136 1920 1152
            WIRE 1920 1152 1920 1616
            WIRE 1920 1616 2176 1616
            WIRE 2176 1536 2176 1616
        END BRANCH
        BEGIN BRANCH XLXN_14
            WIRE 2176 1088 2176 1152
            WIRE 2176 1088 2272 1088
            WIRE 2272 1088 2272 1616
            WIRE 2272 1616 2512 1616
            WIRE 2512 1536 2512 1616
        END BRANCH
        BEGIN BRANCH XLXN_16
            WIRE 2512 1136 2512 1152
            WIRE 2512 1136 2592 1136
            WIRE 2592 1136 2592 1152
            WIRE 2592 1152 2592 1616
            WIRE 2592 1616 2848 1616
            WIRE 2848 1536 2848 1616
        END BRANCH
        BEGIN BRANCH z(0)
            WIRE 416 1024 416 1152
        END BRANCH
        BEGIN BRANCH z(1)
            WIRE 736 1024 736 1152
        END BRANCH
        BEGIN BRANCH z(2)
            WIRE 1056 1024 1056 1152
        END BRANCH
        BEGIN BRANCH z(3)
            WIRE 1376 1040 1376 1152
        END BRANCH
        BEGIN BRANCH z(4)
            WIRE 1712 1040 1712 1152
        END BRANCH
        BEGIN BRANCH z(5)
            WIRE 2048 1056 2048 1152
        END BRANCH
        BEGIN BRANCH z(6)
            WIRE 2384 1056 2384 1152
        END BRANCH
        BEGIN BRANCH z(7)
            WIRE 2720 1056 2720 1152
        END BRANCH
        BEGIN BRANCH a_reg(0)
            WIRE 416 1536 416 1680
        END BRANCH
        BEGIN BRANCH b_reg(0)
            WIRE 480 1536 480 1680
        END BRANCH
        BEGIN BRANCH XLXN_28
            WIRE 544 1536 544 1680
            WIRE 544 1680 544 1744
            WIRE 544 1744 864 1744
            WIRE 864 1744 864 1904
            WIRE 800 1904 864 1904
        END BRANCH
        BEGIN BRANCH a_reg(1)
            WIRE 736 1536 736 1680
        END BRANCH
        BEGIN BRANCH b_reg(1)
            WIRE 800 1536 800 1680
        END BRANCH
        BEGIN BRANCH a_reg(2)
            WIRE 1056 1536 1056 1680
        END BRANCH
        BEGIN BRANCH b_reg(2)
            WIRE 1120 1536 1120 1680
        END BRANCH
        BEGIN BRANCH a_reg(3)
            WIRE 1376 1536 1376 1680
        END BRANCH
        BEGIN BRANCH b_reg(3)
            WIRE 1440 1536 1440 1680
        END BRANCH
        BEGIN BRANCH a_reg(4)
            WIRE 1712 1536 1712 1680
        END BRANCH
        BEGIN BRANCH b_reg(4)
            WIRE 1776 1536 1776 1680
        END BRANCH
        BEGIN BRANCH a_reg(5)
            WIRE 2048 1536 2048 1680
        END BRANCH
        BEGIN BRANCH b_reg(5)
            WIRE 2112 1536 2112 1696
        END BRANCH
        BEGIN BRANCH a_reg(6)
            WIRE 2384 1536 2384 1680
        END BRANCH
        BEGIN BRANCH b_reg(6)
            WIRE 2448 1536 2448 1680
        END BRANCH
        BEGIN BRANCH a_reg(7)
            WIRE 2720 1536 2720 1680
        END BRANCH
        BEGIN BRANCH b_reg(7)
            WIRE 2784 1536 2784 1680
        END BRANCH
        INSTANCE XLXI_35 416 2160 R0
        BEGIN BRANCH cin
            WIRE 352 1904 416 1904
        END BRANCH
        IOMARKER 352 1904 cin R180 28
        INSTANCE XLXI_36 688 880 R0
        BEGIN BRANCH a(7:0)
            WIRE 528 624 688 624
        END BRANCH
        IOMARKER 528 624 a(7:0) R180 28
        INSTANCE XLXI_37 1552 880 R0
        BEGIN BRANCH b(7:0)
            WIRE 1392 624 1552 624
        END BRANCH
        IOMARKER 1392 624 b(7:0) R180 28
        INSTANCE XLXI_42 2176 880 R0
        BEGIN BRANCH zreg(7:0)
            WIRE 2560 624 2704 624
        END BRANCH
        IOMARKER 2704 624 zreg(7:0) R0 28
        INSTANCE XLXI_40 2224 2160 R0
        BEGIN BRANCH coutreg
            WIRE 2608 1904 2704 1904
        END BRANCH
        IOMARKER 2704 1904 coutreg R0 28
        BEGIN BRANCH XLXN_25
            WIRE 2208 1744 2224 1744
            WIRE 2224 1744 2944 1744
            WIRE 2208 1744 2208 1904
            WIRE 2208 1904 2224 1904
            WIRE 2848 1056 2848 1152
            WIRE 2848 1056 2944 1056
            WIRE 2944 1056 2944 1744
        END BRANCH
        BEGIN BRANCH enable
            WIRE 2128 1968 2224 1968
            BEGIN DISPLAY 2128 1968 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 2128 2032 2224 2032
            BEGIN DISPLAY 2128 2032 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 624 752 688 752
            BEGIN DISPLAY 624 752 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 1472 752 1552 752
            BEGIN DISPLAY 1472 752 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH enable
            WIRE 2096 688 2176 688
            BEGIN DISPLAY 2096 688 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 2096 752 2176 752
            BEGIN DISPLAY 2096 752 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH enable
            WIRE 352 1968 416 1968
            BEGIN DISPLAY 352 1968 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 352 2032 416 2032
            BEGIN DISPLAY 352 2032 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 1360 1984 1520 1984
        END BRANCH
        IOMARKER 1360 1984 clk R180 28
        BEGIN BRANCH enable
            WIRE 1360 1888 1520 1888
        END BRANCH
        IOMARKER 1360 1888 enable R180 28
        BEGIN BRANCH clear
            WIRE 624 848 688 848
            BEGIN DISPLAY 624 848 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH enable
            WIRE 608 688 688 688
            BEGIN DISPLAY 608 688 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clear
            WIRE 1472 848 1552 848
            BEGIN DISPLAY 1472 848 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH enable
            WIRE 1472 688 1552 688
            BEGIN DISPLAY 1472 688 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clear
            WIRE 2080 848 2176 848
            BEGIN DISPLAY 2080 848 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clear
            WIRE 1360 2080 1520 2080
        END BRANCH
        BEGIN BRANCH clear
            WIRE 352 2128 416 2128
            BEGIN DISPLAY 352 2128 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clear
            WIRE 2128 2128 2224 2128
            BEGIN DISPLAY 2128 2128 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 1360 2080 clear R180 28
        BEGIN BRANCH a_reg(7:0)
            WIRE 1072 624 1120 624
        END BRANCH
        BEGIN BRANCH b_reg(7:0)
            WIRE 1936 624 1984 624
        END BRANCH
        BEGIN BRANCH z(7:0)
            WIRE 2112 624 2176 624
        END BRANCH
    END SHEET
END SCHEMATIC
