VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan2e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_34
        SIGNAL XLXN_37
        SIGNAL XLXN_40
        SIGNAL XLXN_41
        SIGNAL XLXN_43
        SIGNAL dataout(0)
        SIGNAL dataout(1)
        SIGNAL XLXN_46
        SIGNAL XLXN_49
        SIGNAL dataout(2)
        SIGNAL dataout(3)
        SIGNAL XLXN_81
        SIGNAL XLXN_82
        SIGNAL XLXN_84
        SIGNAL dataout(4)
        SIGNAL dataout(5)
        SIGNAL XLXN_88
        SIGNAL XLXN_89
        SIGNAL XLXN_91
        SIGNAL dataout(6)
        SIGNAL dataout(7)
        SIGNAL XLXN_95
        SIGNAL XLXN_96
        SIGNAL XLXN_98
        SIGNAL dataout(8)
        SIGNAL dataout(9)
        SIGNAL XLXN_102
        SIGNAL XLXN_104
        SIGNAL dataout(10)
        SIGNAL dataout(11)
        SIGNAL XLXN_108
        SIGNAL XLXN_110
        SIGNAL dataout(12)
        SIGNAL dataout(13)
        SIGNAL XLXN_114
        SIGNAL XLXN_116
        SIGNAL XLXN_117
        SIGNAL dataout(14)
        SIGNAL dataout(15)
        SIGNAL XLXN_121
        SIGNAL XLXN_123
        SIGNAL dataout(16)
        SIGNAL dataout(17)
        SIGNAL XLXN_127
        SIGNAL XLXN_129
        SIGNAL dataout(18)
        SIGNAL dataout(19)
        SIGNAL XLXN_133
        SIGNAL XLXN_135
        SIGNAL dataout(20)
        SIGNAL dataout(21)
        SIGNAL XLXN_139
        SIGNAL XLXN_141
        SIGNAL dataout(22)
        SIGNAL dataout(23)
        SIGNAL XLXN_145
        SIGNAL XLXN_147
        SIGNAL dataout(24)
        SIGNAL dataout(25)
        SIGNAL XLXN_151
        SIGNAL XLXN_153
        SIGNAL dataout(26)
        SIGNAL dataout(27)
        SIGNAL XLXN_157
        SIGNAL XLXN_159
        SIGNAL dataout(28)
        SIGNAL dataout(29)
        SIGNAL XLXN_163
        SIGNAL XLXN_165
        SIGNAL XLXN_166
        SIGNAL dataout(30)
        SIGNAL dataout(31)
        SIGNAL XLXN_169
        SIGNAL XLXN_170
        SIGNAL XLXN_172
        SIGNAL XLXN_173
        SIGNAL XLXN_174
        SIGNAL XLXN_175
        SIGNAL XLXN_177
        SIGNAL XLXN_178
        SIGNAL XLXN_179
        SIGNAL XLXN_180
        SIGNAL d
        SIGNAL XLXN_182
        SIGNAL datain(31:0)
        SIGNAL dataout(31:0)
        SIGNAL datain(1)
        SIGNAL datain(0)
        SIGNAL datain(2)
        SIGNAL datain(3)
        SIGNAL datain(4)
        SIGNAL datain(5)
        SIGNAL datain(6)
        SIGNAL datain(7)
        SIGNAL datain(8)
        SIGNAL datain(9)
        SIGNAL datain(10)
        SIGNAL datain(11)
        SIGNAL datain(12)
        SIGNAL datain(13)
        SIGNAL datain(14)
        SIGNAL datain(15)
        SIGNAL datain(16)
        SIGNAL datain(17)
        SIGNAL datain(18)
        SIGNAL datain(19)
        SIGNAL datain(20)
        SIGNAL datain(21)
        SIGNAL datain(22)
        SIGNAL datain(24)
        SIGNAL datain(23)
        SIGNAL datain(25)
        SIGNAL datain(26)
        SIGNAL datain(27)
        SIGNAL datain(28)
        SIGNAL datain(29)
        SIGNAL datain(30)
        SIGNAL datain(31)
        PORT Input d
        PORT Input datain(31:0)
        PORT Output dataout(31:0)
        BEGIN BLOCKDEF MUX2
            TIMESTAMP 2025 1 25 21 0 11
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF gnd
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -64 64 -96 
            LINE N 76 -48 52 -48 
            LINE N 68 -32 60 -32 
            LINE N 88 -64 40 -64 
            LINE N 64 -64 64 -80 
            LINE N 64 -128 64 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_56 MUX2
            PIN s d
            PIN a XLXN_169
            PIN b datain(1)
            PIN z dataout(0)
        END BLOCK
        BEGIN BLOCK XLXI_57 MUX2
            PIN s d
            PIN a datain(0)
            PIN b datain(2)
            PIN z dataout(1)
        END BLOCK
        BEGIN BLOCK XLXI_102 MUX2
            PIN s d
            PIN a datain(1)
            PIN b datain(3)
            PIN z dataout(2)
        END BLOCK
        BEGIN BLOCK XLXI_103 MUX2
            PIN s d
            PIN a datain(2)
            PIN b datain(4)
            PIN z dataout(3)
        END BLOCK
        BEGIN BLOCK XLXI_112 MUX2
            PIN s d
            PIN a datain(3)
            PIN b datain(5)
            PIN z dataout(4)
        END BLOCK
        BEGIN BLOCK XLXI_113 MUX2
            PIN s d
            PIN a datain(4)
            PIN b datain(6)
            PIN z dataout(5)
        END BLOCK
        BEGIN BLOCK XLXI_114 MUX2
            PIN s d
            PIN a datain(5)
            PIN b datain(7)
            PIN z dataout(6)
        END BLOCK
        BEGIN BLOCK XLXI_115 MUX2
            PIN s d
            PIN a datain(6)
            PIN b datain(8)
            PIN z dataout(7)
        END BLOCK
        BEGIN BLOCK XLXI_116 MUX2
            PIN s d
            PIN a datain(7)
            PIN b datain(9)
            PIN z dataout(8)
        END BLOCK
        BEGIN BLOCK XLXI_117 MUX2
            PIN s d
            PIN a datain(8)
            PIN b datain(10)
            PIN z dataout(9)
        END BLOCK
        BEGIN BLOCK XLXI_118 MUX2
            PIN s d
            PIN a datain(9)
            PIN b datain(11)
            PIN z dataout(10)
        END BLOCK
        BEGIN BLOCK XLXI_119 MUX2
            PIN s d
            PIN a datain(10)
            PIN b datain(12)
            PIN z dataout(11)
        END BLOCK
        BEGIN BLOCK XLXI_120 MUX2
            PIN s d
            PIN a datain(11)
            PIN b datain(13)
            PIN z dataout(12)
        END BLOCK
        BEGIN BLOCK XLXI_121 MUX2
            PIN s d
            PIN a datain(12)
            PIN b datain(14)
            PIN z dataout(13)
        END BLOCK
        BEGIN BLOCK XLXI_122 MUX2
            PIN s d
            PIN a datain(13)
            PIN b datain(15)
            PIN z dataout(14)
        END BLOCK
        BEGIN BLOCK XLXI_123 MUX2
            PIN s d
            PIN a datain(14)
            PIN b datain(16)
            PIN z dataout(15)
        END BLOCK
        BEGIN BLOCK XLXI_124 MUX2
            PIN s d
            PIN a datain(15)
            PIN b datain(17)
            PIN z dataout(16)
        END BLOCK
        BEGIN BLOCK XLXI_125 MUX2
            PIN s d
            PIN a datain(16)
            PIN b datain(18)
            PIN z dataout(17)
        END BLOCK
        BEGIN BLOCK XLXI_126 MUX2
            PIN s d
            PIN a datain(17)
            PIN b datain(19)
            PIN z dataout(18)
        END BLOCK
        BEGIN BLOCK XLXI_127 MUX2
            PIN s d
            PIN a datain(18)
            PIN b datain(20)
            PIN z dataout(19)
        END BLOCK
        BEGIN BLOCK XLXI_128 MUX2
            PIN s d
            PIN a datain(19)
            PIN b datain(21)
            PIN z dataout(20)
        END BLOCK
        BEGIN BLOCK XLXI_129 MUX2
            PIN s d
            PIN a datain(20)
            PIN b datain(22)
            PIN z dataout(21)
        END BLOCK
        BEGIN BLOCK XLXI_130 MUX2
            PIN s d
            PIN a datain(21)
            PIN b datain(23)
            PIN z dataout(22)
        END BLOCK
        BEGIN BLOCK XLXI_131 MUX2
            PIN s d
            PIN a datain(22)
            PIN b datain(24)
            PIN z dataout(23)
        END BLOCK
        BEGIN BLOCK XLXI_132 MUX2
            PIN s d
            PIN a datain(23)
            PIN b datain(25)
            PIN z dataout(24)
        END BLOCK
        BEGIN BLOCK XLXI_133 MUX2
            PIN s d
            PIN a datain(24)
            PIN b datain(26)
            PIN z dataout(25)
        END BLOCK
        BEGIN BLOCK XLXI_134 MUX2
            PIN s d
            PIN a datain(25)
            PIN b datain(27)
            PIN z dataout(26)
        END BLOCK
        BEGIN BLOCK XLXI_135 MUX2
            PIN s d
            PIN a datain(26)
            PIN b datain(28)
            PIN z dataout(27)
        END BLOCK
        BEGIN BLOCK XLXI_136 MUX2
            PIN s d
            PIN a datain(27)
            PIN b datain(29)
            PIN z dataout(28)
        END BLOCK
        BEGIN BLOCK XLXI_137 MUX2
            PIN s d
            PIN a datain(28)
            PIN b datain(30)
            PIN z dataout(29)
        END BLOCK
        BEGIN BLOCK XLXI_138 MUX2
            PIN s d
            PIN a datain(29)
            PIN b datain(31)
            PIN z dataout(30)
        END BLOCK
        BEGIN BLOCK XLXI_139 MUX2
            PIN s d
            PIN a datain(30)
            PIN b XLXN_182
            PIN z dataout(31)
        END BLOCK
        BEGIN BLOCK XLXI_140 gnd
            PIN G XLXN_169
        END BLOCK
        BEGIN BLOCK XLXI_141 gnd
            PIN G XLXN_182
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 5440
        BEGIN INSTANCE XLXI_56 1552 336 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_57 1552 560 R0
        END INSTANCE
        BEGIN BRANCH dataout(0)
            WIRE 1936 176 1984 176
            BEGIN DISPLAY 1984 176 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dataout(1)
            WIRE 1936 400 2000 400
            BEGIN DISPLAY 2000 400 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_102 1552 784 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_103 1552 1008 R0
        END INSTANCE
        BEGIN BRANCH dataout(2)
            WIRE 1936 624 1984 624
            BEGIN DISPLAY 1984 624 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dataout(3)
            WIRE 1936 848 2000 848
            BEGIN DISPLAY 2000 848 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_112 1552 1232 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_113 1552 1456 R0
        END INSTANCE
        BEGIN BRANCH dataout(4)
            WIRE 1936 1072 1984 1072
            BEGIN DISPLAY 1984 1072 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dataout(5)
            WIRE 1936 1296 2000 1296
            BEGIN DISPLAY 2000 1296 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_114 1552 1680 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_115 1552 1904 R0
        END INSTANCE
        BEGIN BRANCH dataout(6)
            WIRE 1936 1520 1984 1520
            BEGIN DISPLAY 1984 1520 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dataout(7)
            WIRE 1936 1744 2000 1744
            BEGIN DISPLAY 2000 1744 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_116 1552 2128 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_117 1552 2352 R0
        END INSTANCE
        BEGIN BRANCH dataout(8)
            WIRE 1936 1968 1984 1968
            BEGIN DISPLAY 1984 1968 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dataout(9)
            WIRE 1936 2192 2000 2192
            BEGIN DISPLAY 2000 2192 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_118 1552 2576 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_119 1552 2800 R0
        END INSTANCE
        BEGIN BRANCH dataout(10)
            WIRE 1936 2416 1984 2416
            BEGIN DISPLAY 1984 2416 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dataout(11)
            WIRE 1936 2640 2000 2640
            BEGIN DISPLAY 2000 2640 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_120 1552 3024 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_121 1552 3248 R0
        END INSTANCE
        BEGIN BRANCH dataout(12)
            WIRE 1936 2864 1984 2864
            BEGIN DISPLAY 1984 2864 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dataout(13)
            WIRE 1936 3088 2000 3088
            BEGIN DISPLAY 2000 3088 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_122 1552 3472 R0
        END INSTANCE
        BEGIN BRANCH dataout(14)
            WIRE 1936 3312 1984 3312
            BEGIN DISPLAY 1984 3312 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_124 2304 336 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_125 2304 560 R0
        END INSTANCE
        BEGIN BRANCH dataout(16)
            WIRE 2688 176 2736 176
            BEGIN DISPLAY 2736 176 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dataout(17)
            WIRE 2688 400 2752 400
            BEGIN DISPLAY 2752 400 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_126 2304 784 R0
        END INSTANCE
        BEGIN BRANCH dataout(18)
            WIRE 2688 624 2736 624
            BEGIN DISPLAY 2736 624 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dataout(19)
            WIRE 2688 848 2736 848
            WIRE 2736 848 2752 848
            BEGIN DISPLAY 2752 848 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_128 2304 1232 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_129 2304 1456 R0
        END INSTANCE
        BEGIN BRANCH dataout(20)
            WIRE 2688 1072 2736 1072
            BEGIN DISPLAY 2736 1072 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dataout(21)
            WIRE 2688 1296 2752 1296
            BEGIN DISPLAY 2752 1296 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_130 2304 1680 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_131 2304 1904 R0
        END INSTANCE
        BEGIN BRANCH dataout(22)
            WIRE 2688 1520 2736 1520
            BEGIN DISPLAY 2736 1520 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dataout(23)
            WIRE 2688 1744 2752 1744
            BEGIN DISPLAY 2752 1744 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_132 2304 2128 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_133 2304 2352 R0
        END INSTANCE
        BEGIN BRANCH dataout(24)
            WIRE 2688 1968 2736 1968
            BEGIN DISPLAY 2736 1968 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dataout(25)
            WIRE 2688 2192 2752 2192
            BEGIN DISPLAY 2752 2192 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_134 2304 2576 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_135 2304 2800 R0
        END INSTANCE
        BEGIN BRANCH dataout(26)
            WIRE 2688 2416 2736 2416
            BEGIN DISPLAY 2736 2416 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dataout(27)
            WIRE 2688 2640 2752 2640
            BEGIN DISPLAY 2752 2640 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_136 2304 3024 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_137 2304 3248 R0
        END INSTANCE
        BEGIN BRANCH dataout(28)
            WIRE 2688 2864 2736 2864
            BEGIN DISPLAY 2736 2864 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dataout(29)
            WIRE 2688 3088 2752 3088
            BEGIN DISPLAY 2752 3088 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_138 2304 3472 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_139 2304 3696 R0
        END INSTANCE
        BEGIN BRANCH dataout(30)
            WIRE 2688 3312 2736 3312
            BEGIN DISPLAY 2736 3312 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH dataout(31)
            WIRE 2688 3536 2752 3536
            BEGIN DISPLAY 2752 3536 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_140 1232 368 R0
        BEGIN BRANCH XLXN_169
            WIRE 1296 208 1296 240
            WIRE 1296 208 1328 208
            WIRE 1328 208 1328 240
            WIRE 1328 240 1456 240
            WIRE 1456 240 1552 240
        END BRANCH
        BEGIN INSTANCE XLXI_123 1552 3696 R0
        END INSTANCE
        BEGIN BRANCH dataout(15)
            WIRE 1936 3536 2000 3536
            BEGIN DISPLAY 2000 3536 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d
            WIRE 1456 176 1536 176
            WIRE 1536 176 1552 176
            WIRE 1536 176 1536 400
            WIRE 1536 400 1552 400
            WIRE 1536 400 1536 624
            WIRE 1536 624 1552 624
            WIRE 1536 624 1536 848
            WIRE 1536 848 1552 848
            WIRE 1536 848 1536 1072
            WIRE 1536 1072 1552 1072
            WIRE 1536 1072 1536 1296
            WIRE 1536 1296 1552 1296
            WIRE 1536 1296 1536 1520
            WIRE 1536 1520 1552 1520
            WIRE 1536 1520 1536 1744
            WIRE 1536 1744 1552 1744
            WIRE 1536 1744 1536 1968
            WIRE 1536 1968 1552 1968
            WIRE 1536 1968 1536 2192
            WIRE 1536 2192 1552 2192
            WIRE 1536 2192 1536 2416
            WIRE 1536 2416 1552 2416
            WIRE 1536 2416 1536 2640
            WIRE 1536 2640 1552 2640
            WIRE 1536 2640 1536 2864
            WIRE 1536 2864 1552 2864
            WIRE 1536 2864 1536 3088
            WIRE 1536 3088 1552 3088
            WIRE 1536 3088 1536 3312
            WIRE 1536 3312 1552 3312
            WIRE 1536 3312 1536 3536
            WIRE 1536 3536 1552 3536
            WIRE 1536 3536 1536 3744
            WIRE 1536 3744 2288 3744
            WIRE 2288 176 2304 176
            WIRE 2288 176 2288 400
            WIRE 2288 400 2304 400
            WIRE 2288 400 2288 624
            WIRE 2288 624 2304 624
            WIRE 2288 624 2288 848
            WIRE 2288 848 2288 1072
            WIRE 2288 1072 2304 1072
            WIRE 2288 1072 2288 1296
            WIRE 2288 1296 2304 1296
            WIRE 2288 1296 2288 1520
            WIRE 2288 1520 2304 1520
            WIRE 2288 1520 2288 1744
            WIRE 2288 1744 2304 1744
            WIRE 2288 1744 2288 1968
            WIRE 2288 1968 2304 1968
            WIRE 2288 1968 2288 2192
            WIRE 2288 2192 2304 2192
            WIRE 2288 2192 2288 2416
            WIRE 2288 2416 2304 2416
            WIRE 2288 2416 2288 2640
            WIRE 2288 2640 2304 2640
            WIRE 2288 2640 2288 2864
            WIRE 2288 2864 2304 2864
            WIRE 2288 2864 2288 3088
            WIRE 2288 3088 2304 3088
            WIRE 2288 3088 2288 3312
            WIRE 2288 3312 2304 3312
            WIRE 2288 3312 2288 3536
            WIRE 2288 3536 2304 3536
            WIRE 2288 3536 2288 3744
            WIRE 2288 848 2304 848
        END BRANCH
        IOMARKER 1456 176 d R180 28
        INSTANCE XLXI_141 2080 3792 R0
        BEGIN BRANCH XLXN_182
            WIRE 2144 3632 2144 3664
            WIRE 2144 3632 2208 3632
            WIRE 2208 3632 2208 3664
            WIRE 2208 3664 2304 3664
        END BRANCH
        BEGIN BRANCH datain(31:0)
            WIRE 1040 240 1152 240
        END BRANCH
        BEGIN BRANCH dataout(31:0)
            WIRE 800 480 912 480
        END BRANCH
        IOMARKER 1040 240 datain(31:0) R180 28
        IOMARKER 912 480 dataout(31:0) R0 28
        BEGIN BRANCH datain(1)
            WIRE 1472 304 1552 304
            WIRE 1472 304 1472 368
            WIRE 1472 368 1472 688
            WIRE 1472 688 1552 688
            BEGIN DISPLAY 1472 304 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(0)
            WIRE 1440 464 1552 464
            BEGIN DISPLAY 1440 464 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(2)
            WIRE 1456 528 1552 528
            WIRE 1456 528 1456 912
            WIRE 1456 912 1552 912
            BEGIN DISPLAY 1456 528 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(3)
            WIRE 1520 752 1552 752
            WIRE 1520 752 1520 1136
            WIRE 1520 1136 1552 1136
            BEGIN DISPLAY 1520 752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(4)
            WIRE 1504 976 1552 976
            WIRE 1504 976 1504 1360
            WIRE 1504 1360 1552 1360
            BEGIN DISPLAY 1504 976 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(5)
            WIRE 1488 1200 1552 1200
            WIRE 1488 1200 1488 1584
            WIRE 1488 1584 1552 1584
            BEGIN DISPLAY 1488 1200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(6)
            WIRE 1472 1424 1552 1424
            WIRE 1472 1424 1472 1808
            WIRE 1472 1808 1552 1808
            BEGIN DISPLAY 1472 1424 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(7)
            WIRE 1456 1648 1552 1648
            WIRE 1456 1648 1456 2032
            WIRE 1456 2032 1552 2032
            BEGIN DISPLAY 1456 1648 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(8)
            WIRE 1520 1872 1552 1872
            WIRE 1520 1872 1520 2256
            WIRE 1520 2256 1552 2256
            BEGIN DISPLAY 1520 1872 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(9)
            WIRE 1504 2096 1552 2096
            WIRE 1504 2096 1504 2480
            WIRE 1504 2480 1552 2480
            BEGIN DISPLAY 1504 2096 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(10)
            WIRE 1488 2320 1552 2320
            WIRE 1488 2320 1488 2704
            WIRE 1488 2704 1552 2704
            BEGIN DISPLAY 1488 2320 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(11)
            WIRE 1472 2544 1552 2544
            WIRE 1472 2544 1472 2928
            WIRE 1472 2928 1552 2928
            BEGIN DISPLAY 1472 2544 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(12)
            WIRE 1456 2768 1552 2768
            WIRE 1456 2768 1456 3152
            WIRE 1456 3152 1552 3152
            BEGIN DISPLAY 1456 2768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(13)
            WIRE 1520 2992 1552 2992
            WIRE 1520 2992 1520 3376
            WIRE 1520 3376 1552 3376
            BEGIN DISPLAY 1520 2992 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(14)
            WIRE 1504 3216 1552 3216
            WIRE 1504 3216 1504 3600
            WIRE 1504 3600 1552 3600
            BEGIN DISPLAY 1504 3216 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(15)
            WIRE 1472 3440 1552 3440
            WIRE 1472 3440 1472 3488
            WIRE 1472 3488 2208 3488
            WIRE 2208 240 2304 240
            WIRE 2208 240 2208 3488
            BEGIN DISPLAY 2208 240 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(16)
            WIRE 1504 3664 1552 3664
            WIRE 1504 3664 1504 3776
            WIRE 1504 3776 2016 3776
            WIRE 2016 464 2304 464
            WIRE 2016 464 2016 512
            WIRE 2016 512 2016 896
            WIRE 2016 896 2016 3776
            BEGIN DISPLAY 2016 506 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(17)
            WIRE 2272 304 2304 304
            WIRE 2272 304 2272 688
            WIRE 2272 688 2304 688
            BEGIN DISPLAY 2272 304 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(18)
            WIRE 2256 528 2304 528
            WIRE 2256 528 2256 912
            WIRE 2256 912 2304 912
            BEGIN DISPLAY 2256 528 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(19)
            WIRE 2240 752 2304 752
            WIRE 2240 752 2240 1136
            WIRE 2240 1136 2304 1136
            BEGIN DISPLAY 2240 752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(20)
            WIRE 2224 976 2224 1360
            WIRE 2224 1360 2304 1360
            WIRE 2224 976 2304 976
            BEGIN DISPLAY 2224 976 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(21)
            WIRE 2272 1200 2304 1200
            WIRE 2272 1200 2272 1584
            WIRE 2272 1584 2304 1584
            BEGIN DISPLAY 2272 1200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(22)
            WIRE 2256 1424 2304 1424
            WIRE 2256 1424 2256 1808
            WIRE 2256 1808 2304 1808
            BEGIN DISPLAY 2256 1424 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(24)
            WIRE 2272 1872 2304 1872
            WIRE 2272 1872 2272 2256
            WIRE 2272 2256 2304 2256
            BEGIN DISPLAY 2272 1872 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(23)
            WIRE 2240 1648 2304 1648
            WIRE 2240 1648 2240 2032
            WIRE 2240 2032 2304 2032
            BEGIN DISPLAY 2240 1648 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(25)
            WIRE 2256 2096 2304 2096
            WIRE 2256 2096 2256 2480
            WIRE 2256 2480 2304 2480
            BEGIN DISPLAY 2256 2096 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(26)
            WIRE 2240 2320 2304 2320
            WIRE 2240 2320 2240 2704
            WIRE 2240 2704 2304 2704
            BEGIN DISPLAY 2240 2320 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(27)
            WIRE 2224 2544 2304 2544
            WIRE 2224 2544 2224 2928
            WIRE 2224 2928 2304 2928
            BEGIN DISPLAY 2224 2544 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(28)
            WIRE 2272 2768 2304 2768
            WIRE 2272 2768 2272 3152
            WIRE 2272 3152 2304 3152
            BEGIN DISPLAY 2272 2768 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(29)
            WIRE 2256 2992 2304 2992
            WIRE 2256 2992 2256 3376
            WIRE 2256 3376 2304 3376
            BEGIN DISPLAY 2256 2992 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(30)
            WIRE 2240 3216 2304 3216
            WIRE 2240 3216 2240 3600
            WIRE 2240 3600 2304 3600
            BEGIN DISPLAY 2240 3216 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(31)
            WIRE 2176 3440 2304 3440
            BEGIN DISPLAY 2176 3440 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_127 2304 1008 R0
        END INSTANCE
    END SHEET
END SCHEMATIC
