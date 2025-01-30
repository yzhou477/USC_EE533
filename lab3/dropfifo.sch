VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL firstword
        SIGNAL XLXN_2
        SIGNAL XLXN_3
        SIGNAL XLXN_4
        SIGNAL XLXN_5
        SIGNAL XLXN_6
        SIGNAL clk
        SIGNAL XLXN_8
        SIGNAL XLXN_9
        SIGNAL XLXN_10
        SIGNAL XLXN_11
        SIGNAL XLXN_14
        SIGNAL XLXN_15
        SIGNAL XLXN_16
        SIGNAL XLXN_17
        SIGNAL rst
        SIGNAL XLXN_19
        SIGNAL waddr(7:0)
        SIGNAL raddr(7:0)
        SIGNAL XLXN_23(7:0)
        SIGNAL XLXN_24(7:0)
        SIGNAL XLXN_25(7:0)
        SIGNAL XLXN_27
        SIGNAL XLXN_28
        SIGNAL XLXN_29
        SIGNAL XLXN_30
        SIGNAL XLXN_31
        SIGNAL lastword
        SIGNAL XLXN_33
        SIGNAL drop_pkt
        SIGNAL valid_data
        SIGNAL XLXN_36
        SIGNAL XLXN_37
        SIGNAL in_fifo(71:0)
        SIGNAL fifowrite
        SIGNAL in_fifo0(71:0)
        SIGNAL XLXN_41
        SIGNAL XLXN_42(71:0)
        SIGNAL XLXN_43
        SIGNAL XLXN_44(7:0)
        SIGNAL out_fifo(71:0)
        SIGNAL fiforead
        PORT Input firstword
        PORT Input clk
        PORT Input rst
        PORT Input lastword
        PORT Input drop_pkt
        PORT Output valid_data
        PORT Input in_fifo(71:0)
        PORT Input fifowrite
        PORT Output out_fifo(71:0)
        PORT Input fiforead
        BEGIN BLOCKDEF fd
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
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
        BEGIN BLOCKDEF comp8
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -384 320 -64 
            LINE N 384 -224 320 -224 
            RECTANGLE N 0 -332 64 -308 
            LINE N 0 -320 64 -320 
            RECTANGLE N 0 -140 64 -116 
            LINE N 0 -128 64 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF fdc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            RECTANGLE N 64 -320 320 -64 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF cb8ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 384 -128 320 -128 
            RECTANGLE N 320 -268 384 -244 
            LINE N 384 -256 320 -256 
            LINE N 0 -192 64 -192 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 384 -192 320 -192 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF cb8cle
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -448 320 -64 
            LINE N 0 -192 64 -192 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 0 -384 64 -384 
            RECTANGLE N 0 -396 64 -372 
            LINE N 384 -384 320 -384 
            LINE N 384 -192 320 -192 
            RECTANGLE N 320 -396 384 -372 
            LINE N 384 -128 320 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF reg9B
            TIMESTAMP 2025 1 29 23 53 4
            RECTANGLE N 64 -256 320 0 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -236 384 -212 
            LINE N 320 -224 384 -224 
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
        BEGIN BLOCKDEF and2b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -48 64 -144 
            LINE N 64 -144 144 -144 
            LINE N 144 -48 64 -48 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 256 -96 192 -96 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
        END BLOCKDEF
        BEGIN BLOCKDEF and3b2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 40 -128 
            CIRCLE N 40 -140 64 -116 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -64 64 -192 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 144 -80 64 -80 
            LINE N 64 -176 144 -176 
        END BLOCKDEF
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF dual9Bmem
            TIMESTAMP 2025 1 30 1 0 34
            RECTANGLE N 32 0 256 496 
            BEGIN LINE W 0 48 32 48 
            END LINE
            BEGIN LINE W 0 80 32 80 
            END LINE
            LINE N 0 112 32 112 
            LINE N 0 240 32 240 
            BEGIN LINE W 0 272 32 272 
            END LINE
            LINE N 0 464 32 464 
            BEGIN LINE W 256 272 288 272 
            END LINE
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 fd
            PIN C clk
            PIN D firstword
            PIN Q XLXN_31
        END BLOCK
        BEGIN BLOCK XLXI_2 fd
            PIN C clk
            PIN D lastword
            PIN Q XLXN_30
        END BLOCK
        BEGIN BLOCK XLXI_3 fd
            PIN C clk
            PIN D drop_pkt
            PIN Q XLXN_28
        END BLOCK
        BEGIN BLOCK XLXI_4 fd
            PIN C clk
            PIN D fifowrite
            PIN Q XLXN_36
        END BLOCK
        BEGIN BLOCK XLXI_5 fd8ce
            PIN C clk
            PIN CE XLXN_33
            PIN CLR rst
            PIN D(7:0) waddr(7:0)
            PIN Q(7:0) XLXN_25(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_6 comp8
            PIN A(7:0) waddr(7:0)
            PIN B(7:0) raddr(7:0)
            PIN EQ XLXN_9
        END BLOCK
        BEGIN BLOCK XLXI_7 comp8
            PIN A(7:0) raddr(7:0)
            PIN B(7:0) XLXN_25(7:0)
            PIN EQ XLXN_19
        END BLOCK
        BEGIN BLOCK XLXI_8 fdc
            PIN C clk
            PIN CLR rst
            PIN D XLXN_10
            PIN Q valid_data
        END BLOCK
        BEGIN BLOCK XLXI_9 cb8ce
            PIN C clk
            PIN CE XLXN_10
            PIN CLR rst
            PIN CEO
            PIN Q(7:0) raddr(7:0)
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_10 cb8cle
            PIN C clk
            PIN CE XLXN_36
            PIN CLR rst
            PIN D(7:0) XLXN_25(7:0)
            PIN L XLXN_28
            PIN CEO
            PIN Q(7:0) waddr(7:0)
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_11 reg9B
            PIN d(71:0) in_fifo(71:0)
            PIN ce XLXN_37
            PIN clk clk
            PIN clr rst
            PIN q(71:0) in_fifo0(71:0)
        END BLOCK
        BEGIN BLOCK XLXI_12 or2
            PIN I0 XLXN_30
            PIN I1 XLXN_31
            PIN O XLXN_29
        END BLOCK
        BEGIN BLOCK XLXI_13 and2b1
            PIN I0 XLXN_28
            PIN I1 XLXN_29
            PIN O XLXN_33
        END BLOCK
        BEGIN BLOCK XLXI_14 and3b2
            PIN I0 XLXN_19
            PIN I1 XLXN_9
            PIN I2 fiforead
            PIN O XLXN_10
        END BLOCK
        BEGIN BLOCK XLXI_15 vcc
            PIN P XLXN_37
        END BLOCK
        BEGIN BLOCK XLXI_16 dual9Bmem
            PIN addra(7:0) waddr(7:0)
            PIN dina(71:0) in_fifo0(71:0)
            PIN wea XLXN_36
            PIN clka clk
            PIN addrb(7:0) raddr(7:0)
            PIN clkb clk
            PIN doutb(71:0) out_fifo(71:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 400 464 R0
        INSTANCE XLXI_2 400 832 R0
        INSTANCE XLXI_4 1232 448 R0
        INSTANCE XLXI_5 400 1232 R0
        INSTANCE XLXI_6 912 1568 R0
        INSTANCE XLXI_3 400 2336 R0
        INSTANCE XLXI_7 912 2048 R0
        INSTANCE XLXI_8 1888 1984 R0
        INSTANCE XLXI_9 1888 1504 R0
        INSTANCE XLXI_10 1888 1120 R0
        BEGIN INSTANCE XLXI_11 1888 400 R0
        END INSTANCE
        BEGIN BRANCH firstword
            WIRE 368 208 400 208
        END BRANCH
        INSTANCE XLXI_12 896 560 R0
        INSTANCE XLXI_13 1280 672 R0
        INSTANCE XLXI_14 1408 1472 R0
        BEGIN BRANCH clk
            WIRE 320 2208 352 2208
            WIRE 352 2208 400 2208
            WIRE 352 336 400 336
            WIRE 352 336 352 432
            WIRE 352 432 352 704
            WIRE 352 704 400 704
            WIRE 352 704 352 864
            WIRE 352 864 352 1104
            WIRE 352 1104 400 1104
            WIRE 352 1104 352 2208
            WIRE 352 864 1680 864
            WIRE 1680 864 1680 992
            WIRE 1680 992 1760 992
            WIRE 1760 992 1888 992
            WIRE 1760 992 1760 1136
            WIRE 1760 1136 1760 1376
            WIRE 1760 1376 1888 1376
            WIRE 1760 1376 1760 1856
            WIRE 1760 1856 1888 1856
            WIRE 1760 1136 2624 1136
            WIRE 2624 1136 2672 1136
            WIRE 2624 1136 2624 1152
            WIRE 2624 1152 2624 1168
            WIRE 2624 1168 2624 1360
            WIRE 2624 1360 2672 1360
            WIRE 352 432 800 432
            WIRE 800 320 800 432
            WIRE 800 320 1232 320
            WIRE 1680 304 1680 864
            WIRE 1680 304 1888 304
            BEGIN DISPLAY 2624 1167 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_9
            WIRE 1296 1344 1408 1344
        END BRANCH
        BEGIN BRANCH XLXN_10
            WIRE 1664 1344 1776 1344
            WIRE 1776 1344 1776 1728
            WIRE 1776 1728 1888 1728
            WIRE 1776 1312 1776 1344
            WIRE 1776 1312 1888 1312
        END BRANCH
        BEGIN BRANCH rst
            WIRE 400 1200 400 1264
            WIRE 400 1264 688 1264
            WIRE 688 1264 800 1264
            WIRE 800 1056 800 1264
            WIRE 800 1056 928 1056
            WIRE 928 1056 928 1088
            WIRE 928 1088 1840 1088
            WIRE 1840 1088 1888 1088
            WIRE 1840 1088 1840 1184
            WIRE 1840 1184 1840 1472
            WIRE 1840 1472 1888 1472
            WIRE 1840 1472 1840 1952
            WIRE 1840 1952 1888 1952
            WIRE 1680 1184 1840 1184
            WIRE 1840 368 1888 368
            WIRE 1840 368 1840 1088
        END BRANCH
        BEGIN BRANCH XLXN_19
            WIRE 1296 1824 1344 1824
            WIRE 1344 1408 1344 1824
            WIRE 1344 1408 1408 1408
        END BRANCH
        BEGIN BRANCH waddr(7:0)
            WIRE 384 976 400 976
            WIRE 384 976 384 1248
            WIRE 384 1248 832 1248
            WIRE 832 1248 912 1248
            WIRE 832 1120 832 1248
            WIRE 832 1120 2352 1120
            WIRE 2272 736 2336 736
            WIRE 2336 736 2352 736
            WIRE 2352 736 2352 944
            WIRE 2352 944 2352 1120
            WIRE 2352 944 2672 944
            BEGIN DISPLAY 384 976 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
            BEGIN DISPLAY 2336 736 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH raddr(7:0)
            WIRE 896 1440 912 1440
            WIRE 896 1440 896 1584
            WIRE 896 1584 896 1728
            WIRE 896 1728 912 1728
            WIRE 896 1584 2432 1584
            WIRE 2272 1248 2352 1248
            WIRE 2352 1248 2432 1248
            WIRE 2432 1248 2432 1568
            WIRE 2432 1568 2432 1584
            WIRE 2432 1248 2544 1248
            WIRE 2544 1168 2672 1168
            WIRE 2544 1168 2544 1248
            BEGIN DISPLAY 896 1440 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
            BEGIN DISPLAY 2351 1248 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
            BEGIN DISPLAY 2544 1168 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_25(7:0)
            WIRE 784 976 1328 976
            WIRE 1328 976 1328 2048
            WIRE 848 1920 912 1920
            WIRE 848 1920 848 2048
            WIRE 848 2048 1328 2048
            WIRE 1328 736 1328 976
            WIRE 1328 736 1888 736
        END BRANCH
        BEGIN BRANCH XLXN_28
            WIRE 784 2080 1744 2080
            WIRE 1216 496 1216 608
            WIRE 1216 608 1280 608
            WIRE 1216 496 1744 496
            WIRE 1744 496 1744 864
            WIRE 1744 864 1744 2080
            WIRE 1744 864 1888 864
        END BRANCH
        BEGIN BRANCH XLXN_29
            WIRE 1152 464 1200 464
            WIRE 1200 464 1200 544
            WIRE 1200 544 1280 544
        END BRANCH
        BEGIN BRANCH XLXN_30
            WIRE 784 576 832 576
            WIRE 832 496 832 576
            WIRE 832 496 896 496
        END BRANCH
        BEGIN BRANCH XLXN_31
            WIRE 784 208 832 208
            WIRE 832 208 832 432
            WIRE 832 432 896 432
        END BRANCH
        BEGIN BRANCH lastword
            WIRE 320 576 400 576
        END BRANCH
        BEGIN BRANCH XLXN_33
            WIRE 320 832 320 1040
            WIRE 320 1040 400 1040
            WIRE 320 832 1616 832
            WIRE 1536 576 1616 576
            WIRE 1616 576 1616 832
        END BRANCH
        BEGIN BRANCH drop_pkt
            WIRE 336 2080 400 2080
        END BRANCH
        BEGIN BRANCH valid_data
            WIRE 2272 1728 2336 1728
        END BRANCH
        BEGIN BRANCH XLXN_36
            WIRE 1616 192 1728 192
            WIRE 1728 192 1728 928
            WIRE 1728 928 1888 928
            WIRE 1728 928 1728 1104
            WIRE 1728 1104 2336 1104
            WIRE 2336 1008 2336 1104
            WIRE 2336 1008 2672 1008
        END BRANCH
        BEGIN BRANCH XLXN_37
            WIRE 1808 160 1808 240
            WIRE 1808 240 1888 240
        END BRANCH
        BEGIN BRANCH in_fifo(71:0)
            WIRE 1856 176 1888 176
        END BRANCH
        BEGIN BRANCH fifowrite
            WIRE 1184 192 1232 192
        END BRANCH
        INSTANCE XLXI_15 1744 160 R0
        IOMARKER 368 208 firstword R180 28
        IOMARKER 320 576 lastword R180 28
        IOMARKER 1184 192 fifowrite R180 28
        IOMARKER 1856 176 in_fifo(71:0) R180 28
        IOMARKER 1680 1184 rst R180 28
        IOMARKER 336 2080 drop_pkt R180 28
        IOMARKER 320 2208 clk R180 28
        IOMARKER 2336 1728 valid_data R0 28
        BEGIN BRANCH in_fifo0(71:0)
            WIRE 2272 176 2288 176
            WIRE 2288 176 2288 976
            WIRE 2288 976 2672 976
            BEGIN DISPLAY 2288 176 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_16 2672 896 R0
        END INSTANCE
        BEGIN BRANCH out_fifo(71:0)
            WIRE 2960 1168 3024 1168
        END BRANCH
        IOMARKER 3024 1168 out_fifo(71:0) R0 28
        BEGIN BRANCH fiforead
            WIRE 1376 1280 1408 1280
        END BRANCH
        IOMARKER 1376 1280 fiforead R180 28
    END SHEET
END SCHEMATIC
