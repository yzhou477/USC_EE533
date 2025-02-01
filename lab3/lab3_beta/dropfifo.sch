VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL firstword
        SIGNAL XLXN_32
        SIGNAL clk
        SIGNAL XLXN_9
        SIGNAL XLXN_10
        SIGNAL XLXN_36
        SIGNAL rst
        SIGNAL XLXN_19
        SIGNAL waddr(7:0)
        SIGNAL XLXN_40(7:0)
        SIGNAL raddr(7:0)
        SIGNAL XLXN_42(7:0)
        SIGNAL XLXN_43(7:0)
        SIGNAL XLXN_25(7:0)
        SIGNAL XLXN_45(7:0)
        SIGNAL XLXN_46
        SIGNAL XLXN_28
        SIGNAL XLXN_29
        SIGNAL XLXN_30
        SIGNAL XLXN_31
        SIGNAL lastword
        SIGNAL XLXN_52
        SIGNAL XLXN_33
        SIGNAL drop_pkt
        SIGNAL valid_data
        SIGNAL XLXN_56
        SIGNAL XLXN_37
        SIGNAL in_fifo(71:0)
        SIGNAL fifowrite
        SIGNAL in_fifo0(71:0)
        SIGNAL fiforead
        SIGNAL out_fifo(71:0)
        PORT Input firstword
        PORT Input clk
        PORT Input rst
        PORT Input lastword
        PORT Input drop_pkt
        PORT Output valid_data
        PORT Input in_fifo(71:0)
        PORT Input fifowrite
        PORT Input fiforead
        PORT Output out_fifo(71:0)
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
            TIMESTAMP 2025 2 1 3 21 18
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
            TIMESTAMP 2025 2 1 3 30 38
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
        BEGIN BLOCK XLXI_4 fd
            PIN C clk
            PIN D fifowrite
            PIN Q XLXN_56
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
        BEGIN BLOCK XLXI_3 fd
            PIN C clk
            PIN D drop_pkt
            PIN Q XLXN_28
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
            PIN CE XLXN_56
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
        BEGIN BLOCK XLXI_31 dual9Bmem
            PIN addra(7:0) waddr(7:0)
            PIN dina(71:0) in_fifo0(71:0)
            PIN wea XLXN_56
            PIN clka clk
            PIN addrb(7:0) raddr(7:0)
            PIN clkb clk
            PIN doutb(71:0) out_fifo(71:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 624 736 R0
        INSTANCE XLXI_2 624 1104 R0
        INSTANCE XLXI_4 1456 720 R0
        INSTANCE XLXI_5 624 1504 R0
        INSTANCE XLXI_6 1136 1840 R0
        INSTANCE XLXI_3 624 2608 R0
        INSTANCE XLXI_7 1136 2320 R0
        INSTANCE XLXI_8 2112 2256 R0
        INSTANCE XLXI_9 2112 1776 R0
        INSTANCE XLXI_10 2112 1392 R0
        BEGIN INSTANCE XLXI_11 2112 672 R0
        END INSTANCE
        BEGIN BRANCH firstword
            WIRE 592 480 624 480
        END BRANCH
        INSTANCE XLXI_12 1120 832 R0
        INSTANCE XLXI_13 1504 944 R0
        INSTANCE XLXI_14 1632 1744 R0
        BEGIN BRANCH clk
            WIRE 544 2480 576 2480
            WIRE 576 2480 624 2480
            WIRE 576 608 624 608
            WIRE 576 608 576 704
            WIRE 576 704 576 976
            WIRE 576 976 624 976
            WIRE 576 976 576 1136
            WIRE 576 1136 576 1376
            WIRE 576 1376 624 1376
            WIRE 576 1376 576 2480
            WIRE 576 1136 1904 1136
            WIRE 1904 1136 1904 1264
            WIRE 1904 1264 1984 1264
            WIRE 1984 1264 2112 1264
            WIRE 1984 1264 1984 1408
            WIRE 1984 1408 1984 1648
            WIRE 1984 1648 2112 1648
            WIRE 1984 1648 1984 2128
            WIRE 1984 2128 2112 2128
            WIRE 1984 1408 2848 1408
            WIRE 2848 1408 2896 1408
            WIRE 2848 1408 2848 1440
            WIRE 2848 1440 2848 1632
            WIRE 2848 1632 2896 1632
            WIRE 576 704 1024 704
            WIRE 1024 592 1024 704
            WIRE 1024 592 1456 592
            WIRE 1904 576 1904 1136
            WIRE 1904 576 2112 576
            BEGIN DISPLAY 2848 1440 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_9
            WIRE 1520 1616 1632 1616
        END BRANCH
        BEGIN BRANCH XLXN_10
            WIRE 1888 1616 2000 1616
            WIRE 2000 1616 2000 2000
            WIRE 2000 2000 2112 2000
            WIRE 2000 1584 2000 1616
            WIRE 2000 1584 2112 1584
        END BRANCH
        BEGIN BRANCH rst
            WIRE 624 1472 624 1536
            WIRE 624 1536 912 1536
            WIRE 912 1536 1024 1536
            WIRE 1024 1328 1024 1536
            WIRE 1024 1328 1152 1328
            WIRE 1152 1328 1152 1360
            WIRE 1152 1360 2064 1360
            WIRE 2064 1360 2112 1360
            WIRE 2064 1360 2064 1456
            WIRE 2064 1456 2064 1744
            WIRE 2064 1744 2112 1744
            WIRE 2064 1744 2064 2224
            WIRE 2064 2224 2112 2224
            WIRE 1904 1456 2064 1456
            WIRE 2064 640 2112 640
            WIRE 2064 640 2064 1360
        END BRANCH
        BEGIN BRANCH XLXN_19
            WIRE 1520 2096 1568 2096
            WIRE 1568 1680 1568 2096
            WIRE 1568 1680 1632 1680
        END BRANCH
        BEGIN BRANCH waddr(7:0)
            WIRE 608 1248 624 1248
            WIRE 608 1248 608 1520
            WIRE 608 1520 1056 1520
            WIRE 1056 1520 1136 1520
            WIRE 1056 1392 1056 1520
            WIRE 1056 1392 2576 1392
            WIRE 2496 1008 2560 1008
            WIRE 2560 1008 2576 1008
            WIRE 2576 1008 2576 1216
            WIRE 2576 1216 2576 1392
            WIRE 2576 1216 2896 1216
            BEGIN DISPLAY 608 1248 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
            BEGIN DISPLAY 2560 1008 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH raddr(7:0)
            WIRE 1120 1712 1136 1712
            WIRE 1120 1712 1120 1856
            WIRE 1120 1856 1120 2000
            WIRE 1120 2000 1136 2000
            WIRE 1120 1856 2656 1856
            WIRE 2496 1520 2576 1520
            WIRE 2576 1520 2656 1520
            WIRE 2656 1520 2768 1520
            WIRE 2656 1520 2656 1856
            WIRE 2768 1440 2896 1440
            WIRE 2768 1440 2768 1520
            BEGIN DISPLAY 1120 1712 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
            BEGIN DISPLAY 2576 1520 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
            BEGIN DISPLAY 2768 1440 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_25(7:0)
            WIRE 1008 1248 1552 1248
            WIRE 1552 1248 1552 2320
            WIRE 1072 2192 1136 2192
            WIRE 1072 2192 1072 2320
            WIRE 1072 2320 1552 2320
            WIRE 1552 1008 1552 1248
            WIRE 1552 1008 2112 1008
        END BRANCH
        BEGIN BRANCH XLXN_28
            WIRE 1008 2352 1968 2352
            WIRE 1440 768 1440 880
            WIRE 1440 880 1504 880
            WIRE 1440 768 1968 768
            WIRE 1968 768 1968 1136
            WIRE 1968 1136 1968 2352
            WIRE 1968 1136 2112 1136
        END BRANCH
        BEGIN BRANCH XLXN_29
            WIRE 1376 736 1424 736
            WIRE 1424 736 1424 816
            WIRE 1424 816 1504 816
        END BRANCH
        BEGIN BRANCH XLXN_30
            WIRE 1008 848 1056 848
            WIRE 1056 768 1056 848
            WIRE 1056 768 1120 768
        END BRANCH
        BEGIN BRANCH XLXN_31
            WIRE 1008 480 1056 480
            WIRE 1056 480 1056 704
            WIRE 1056 704 1120 704
        END BRANCH
        BEGIN BRANCH lastword
            WIRE 544 848 624 848
        END BRANCH
        BEGIN BRANCH XLXN_33
            WIRE 544 1104 544 1312
            WIRE 544 1312 624 1312
            WIRE 544 1104 1840 1104
            WIRE 1760 848 1840 848
            WIRE 1840 848 1840 1104
        END BRANCH
        BEGIN BRANCH drop_pkt
            WIRE 560 2352 624 2352
        END BRANCH
        BEGIN BRANCH valid_data
            WIRE 2496 2000 2560 2000
        END BRANCH
        BEGIN BRANCH XLXN_56
            WIRE 1840 464 1952 464
            WIRE 1952 464 1952 1200
            WIRE 1952 1200 2112 1200
            WIRE 1952 1200 1952 1376
            WIRE 1952 1376 2560 1376
            WIRE 2560 1280 2560 1376
            WIRE 2560 1280 2896 1280
        END BRANCH
        BEGIN BRANCH XLXN_37
            WIRE 2032 432 2032 512
            WIRE 2032 512 2112 512
        END BRANCH
        BEGIN BRANCH in_fifo(71:0)
            WIRE 2080 448 2112 448
        END BRANCH
        BEGIN BRANCH fifowrite
            WIRE 1408 464 1456 464
        END BRANCH
        INSTANCE XLXI_15 1968 432 R0
        BEGIN BRANCH in_fifo0(71:0)
            WIRE 2496 448 2512 448
            WIRE 2512 448 2512 1248
            WIRE 2512 1248 2896 1248
            BEGIN DISPLAY 2512 448 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH fiforead
            WIRE 1600 1552 1632 1552
        END BRANCH
        IOMARKER 592 480 firstword R180 28
        IOMARKER 544 848 lastword R180 28
        IOMARKER 1408 464 fifowrite R180 28
        IOMARKER 2080 448 in_fifo(71:0) R180 28
        IOMARKER 1904 1456 rst R180 28
        IOMARKER 560 2352 drop_pkt R180 28
        IOMARKER 544 2480 clk R180 28
        IOMARKER 2560 2000 valid_data R0 28
        IOMARKER 1600 1552 fiforead R180 28
        BEGIN INSTANCE XLXI_31 2896 1168 R0
        END INSTANCE
        BEGIN BRANCH out_fifo(71:0)
            WIRE 3184 1440 3248 1440
        END BRANCH
        IOMARKER 3248 1440 out_fifo(71:0) R0 28
    END SHEET
END SCHEMATIC
