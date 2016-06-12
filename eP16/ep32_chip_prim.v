// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.7.0.96.1
// Netlist written on Sat Jun 11 13:28:42 2016
//
// Verilog Description of module ep32_chip
//

module ep32_chip (aclk, arst, interrupt_i, uart_i, uart_o, acknowledge_o, 
            ioport);   // c:/lscc/ep16vhdl/ep16_chip.vhd(33[8:17])
    input aclk;   // c:/lscc/ep16vhdl/ep16_chip.vhd(36[2:6])
    input arst;   // c:/lscc/ep16vhdl/ep16_chip.vhd(37[2:6])
    input [4:0]interrupt_i;   // c:/lscc/ep16vhdl/ep16_chip.vhd(38[2:13])
    input uart_i;   // c:/lscc/ep16vhdl/ep16_chip.vhd(39[2:8])
    output uart_o;   // c:/lscc/ep16vhdl/ep16_chip.vhd(41[2:8])
    output acknowledge_o;   // c:/lscc/ep16vhdl/ep16_chip.vhd(42[2:15])
    inout [15:0]ioport;   // c:/lscc/ep16vhdl/ep16_chip.vhd(44[2:8])
    
    wire aclk_c /* synthesis SET_AS_NETWORK=aclk_c, is_clock=1 */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(36[2:6])
    wire aclk_N_55 /* synthesis is_clock=1 */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(121[9:14])
    
    wire GND_net, VCC_net, arst_c, interrupt_i_c_4, interrupt_i_c_3, 
        interrupt_i_c_2, interrupt_i_c_1, interrupt_i_c_0, uart_i_c, 
        uart_o_c, acknowledge_o_c, n7695;
    wire [15:0]memory_data_o;   // c:/lscc/ep16vhdl/ep16_chip.vhd(122[9:22])
    wire [15:0]memory_data_i;   // c:/lscc/ep16vhdl/ep16_chip.vhd(123[9:22])
    wire [11:0]memory_addr;   // c:/lscc/ep16vhdl/ep16_chip.vhd(124[9:20])
    wire [15:0]system_data_o;   // c:/lscc/ep16vhdl/ep16_chip.vhd(128[9:22])
    
    wire system_read, system_write, n7025, n1171, n1169, n1168, 
        n1167, n1166, n1165, n1164, n1163, n1162;
    wire [15:0]gpio_out;   // c:/lscc/ep16vhdl/ep16_chip.vhd(162[9:17])
    wire [15:0]gpio_dir;   // c:/lscc/ep16vhdl/ep16_chip.vhd(163[9:17])
    
    wire n7694, system_data_o_15__N_2, n7693, system_data_o_15__N_51, 
        system_data_o_15__N_7, system_data_o_15__N_10, system_data_o_15__N_13, 
        system_data_o_15__N_16, system_data_o_15__N_19, system_data_o_15__N_22, 
        system_data_o_15__N_25, system_data_o_15__N_28, n7692, system_data_o_15__N_31, 
        system_data_o_15__N_34, n7691, system_data_o_15__N_37, system_data_o_15__N_40, 
        n7690, system_data_o_15__N_43, system_data_o_15__N_46, system_data_o_15__N_49;
    wire [2:0]slot;   // c:/lscc/ep16vhdl/ep16.vhd(48[9:13])
    wire [4:0]sp;   // c:/lscc/ep16vhdl/ep16.vhd(49[9:11])
    wire [4:0]sp1;   // c:/lscc/ep16vhdl/ep16.vhd(49[12:15])
    wire [4:0]rp;   // c:/lscc/ep16vhdl/ep16.vhd(49[16:18])
    wire [4:0]rp1;   // c:/lscc/ep16vhdl/ep16.vhd(49[19:22])
    wire [16:0]t;   // c:/lscc/ep16vhdl/ep16.vhd(50[9:10])
    wire [16:0]a;   // c:/lscc/ep16vhdl/ep16.vhd(51[9:10])
    wire [16:0]r;   // c:/lscc/ep16vhdl/ep16.vhd(51[11:12])
    wire [2:0]p_sel;   // c:/lscc/ep16vhdl/ep16.vhd(55[9:14])
    wire [15:0]i;   // c:/lscc/ep16vhdl/ep16.vhd(62[9:10])
    wire [15:0]p;   // c:/lscc/ep16vhdl/ep16.vhd(62[11:12])
    wire [15:0]p_in;   // c:/lscc/ep16vhdl/ep16.vhd(62[13:17])
    wire [15:0]p_in_15__N_282;
    
    wire n8631, n7689, n7688, n7687, n7686, n19, n26, n28, n6903, 
        n1411, n6901, n1406, n1401, n1396, n7685, n1391, n1386, 
        n7684, n7683, n1381, n7682, n1376, n7680, n7679, n1371, 
        n1366, n1361, n1356, n1351, n1346, n7678, aclk_c_enable_37, 
        n1341, n7677, n1336, n1335, n1334, n1333, n1332, n1331, 
        n1330, n1329, n1328, n1327, n1326, n1325, n1324, n1323, 
        n1322, n1321, n1317, n1314, n1519, n1518, n1517, n1516, 
        n1515, n1514, n1513, n1512, n1511, n1510, n1509, n1508, 
        n1507, n1506, n1505, n1504, n1503, n1502, n1501, n1500, 
        n1530, n1529, n78, n1424, n7676, n1528, n7675, n1498, 
        n1312, n1309, n1497, n1495, n1494, n1493, n1492, n1491, 
        n1490, n1489, n1488, n1487, n1486, n1485, n1484, n1483, 
        n1482, n1527, n1526, n1525, n1524, n1523, n1416, n1419, 
        n1522, n1521, n1520, n963, n1305, n1481, n1480, n1479, 
        n1478, n1477;
    wire [15:0]baudrate_reg;   // c:/lscc/ep16vhdl/uart16.vhd(50[9:21])
    
    wire hw_xonoff_ff, tx_en;
    wire [15:0]tx_counter;   // c:/lscc/ep16vhdl/uart16.vhd(57[9:19])
    wire [7:0]rx_buffer_reg;   // c:/lscc/ep16vhdl/uart16.vhd(61[9:22])
    
    wire rxb_full, rx_en, rxd_ff, data_o_15__N_441, n1463, n1462, 
        n7161, n6893, n6891, n7674, n7673, n7672, n7671, n1301, 
        n1304, n7670, n1296, aclk_c_enable_21, n1291, n1286, n1281, 
        n1276, n1271, tx_en_N_533, n7407, n7011, n1091, n1093, 
        n1094, n1095, n1096, n1097, n1098, n1099, n7669, n1476, 
        n1475, n6376, n7668, n7667, n8630, rx_irq_o_N_643, n1474, 
        n1536, n1534, n1533, n1532;
    wire [15:0]rx_counter_15__N_609;
    
    wire n1537, n1531, n1473, n1266, n8245, n1261, n1256, n1251, 
        n1246, n1241, n1236, n1231, n1226, n1435, n1432, n1429, 
        n1427, n7411, n6655, n5, n3860, n1084, n9433, n1465, 
        n1464, n1178, n1468, n1466, n1467, n1469, n1470, n1471, 
        n1472, n7001, n8629, n780, n8628, n66, n63, n1996, n8744, 
        n8743, n8741, n8627, n8740, n8738, aclk_c_enable_123, n8626, 
        n8737, n75, n8735, n72, n8734, n8732, n69, n66_adj_901, 
        n69_adj_902, n72_adj_903, n75_adj_904, n78_adj_905, n81, n8731, 
        n7405, aclk_c_enable_16, n8625, n8624, n8623, n8622, n8698, 
        n7611, n7, n3, n1, ioport_out_15, n1853, ioport_out_14, 
        n1855, ioport_out_13, n1857, ioport_out_12, n1859, ioport_out_11, 
        n1861, ioport_out_10, n1863, ioport_out_9, n1865, ioport_out_8, 
        n1867, ioport_out_7, n1869, ioport_out_6, n1871, ioport_out_5, 
        n1873, ioport_out_4, n1875, ioport_out_3, n1877, ioport_out_2, 
        n1879, ioport_out_1, n1881, ioport_out_0, n1883, n8621, 
        n8620, n7595, n8619, n8618, n8617, n8616, n8615, n8614, 
        n8613, n8612, aclk_c_enable_78, n8608, n6835, n8607, n8606, 
        n6833, n8604, n8603, n8602, n8601, n8599, n6537, n8596, 
        n7105, n6010, n30, n4113, n4114, n19_adj_906, n26_adj_907, 
        n28_adj_908, n4, n6, n30_adj_909, n4083, n4084, n19_adj_910, 
        aclk_c_enable_29, n26_adj_911, n1_adj_912, n28_adj_913, n3_adj_914, 
        n30_adj_915, n4053, n4054, n19_adj_916, n26_adj_917, n28_adj_918, 
        n30_adj_919, n4023, n4024, n8675, n7570, n19_adj_920, n7569, 
        n8674, n26_adj_921, n28_adj_922, n8673, n8671, n30_adj_923, 
        n7568, n3993, n3994, n7567, n19_adj_924, n7566, n26_adj_925, 
        n28_adj_926, n7565, n7564, n30_adj_927, n3963, n3964, n8668, 
        n8667, aclk_c_enable_15, n7403, n8666, n8664, n8663, n8592, 
        n8699, n7563, n7562, n8661, n8660, n7561, n7560, aclk_c_enable_18, 
        n7559, n7558, n7557, n7556, n8653, n7555, n7554, n7553, 
        n7552, n7551, n7550, n8651, n7549, n7548, n7547, n7546, 
        n7545, n7544, n7543, n7542, n8640, n18, n7541, n7540, 
        n7733, n7732, n7539, n8637, n7731, n7730, n7729, n7728, 
        n7727, n7726, n7725, n7724, n7723, n8634, n7043, n7722, 
        n8633, n6766, n7721, n7720, n7719, n7717, n7716, n7715, 
        n7714, n7713, n7712, n7711, n7401, n7710, n7709, n7708, 
        n7027, n7707, n7706, n7705, n7704, n8632;
    
    VHI i2 (.Z(VCC_net));
    INV i8039 (.A(aclk_c), .Z(aclk_N_55));   // c:/lscc/ep16vhdl/ep16_chip.vhd(36[2:6])
    FD1P3AX creset_712 (.D(n7539), .SP(aclk_c_enable_16), .CK(aclk_c), 
            .Q(n1301));   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam creset_712.GSR = "ENABLED";
    FD1P3AX creset_724 (.D(n7540), .SP(aclk_c_enable_78), .CK(aclk_c), 
            .Q(n1351));   // c:/lscc/ep16vhdl/ep16.vhd(47[17:24])
    defparam creset_724.GSR = "ENABLED";
    FD1P3AX creset_720 (.D(n7541), .SP(aclk_c_enable_78), .CK(aclk_c), 
            .Q(n1346));   // c:/lscc/ep16vhdl/ep16.vhd(47[17:24])
    defparam creset_720.GSR = "ENABLED";
    FD1P3AX creset_716 (.D(n7542), .SP(aclk_c_enable_78), .CK(aclk_c), 
            .Q(n1341));   // c:/lscc/ep16vhdl/ep16.vhd(47[17:24])
    defparam creset_716.GSR = "ENABLED";
    DPR16X4B n13130 (.DI0(n8674), .DI1(GND_net), .DI2(GND_net), .DI3(GND_net), 
            .WAD0(sp1[0]), .WAD1(sp1[1]), .WAD2(sp1[2]), .WAD3(sp1[3]), 
            .WCK(aclk_c), .WRE(n1309), .RAD0(sp[0]), .RAD1(sp[1]), .RAD2(sp[2]), 
            .RAD3(sp[3]), .DO0(n1314));
    defparam n13130.initval = 64'h0000000000000000;
    DPR16X4B n14310 (.DI0(rp1[4]), .DI1(GND_net), .DI2(GND_net), .DI3(GND_net), 
            .WAD0(rp1[0]), .WAD1(rp1[1]), .WAD2(rp1[2]), .WAD3(rp1[3]), 
            .WCK(aclk_c), .WRE(n1427), .RAD0(rp[0]), .RAD1(rp[1]), .RAD2(rp[2]), 
            .RAD3(rp[3]), .DO0(n1432));
    defparam n14310.initval = 64'h0000000000000000;
    FD1P3AX creset_688 (.D(n7543), .SP(aclk_c_enable_16), .CK(aclk_c), 
            .Q(n1291));   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam creset_688.GSR = "ENABLED";
    FD1P3AX creset_684 (.D(n7544), .SP(aclk_c_enable_16), .CK(aclk_c), 
            .Q(n1286));   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam creset_684.GSR = "ENABLED";
    FD1P3AX creset_640 (.D(n7545), .SP(aclk_c_enable_21), .CK(aclk_c), 
            .Q(n1231));   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam creset_640.GSR = "ENABLED";
    FD1P3AX creset_680 (.D(n7546), .SP(aclk_c_enable_37), .CK(aclk_c), 
            .Q(n1281));   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam creset_680.GSR = "ENABLED";
    FD1P3AX creset_644 (.D(n7547), .SP(aclk_c_enable_21), .CK(aclk_c), 
            .Q(n1236));   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam creset_644.GSR = "ENABLED";
    BB ioport_pad_15 (.I(gpio_out[15]), .T(n1853), .B(ioport[15]), .O(ioport_out_15));   // c:/lscc/ep16vhdl/ep16_chip.vhd(44[2:8])
    FD1P3AX creset (.D(n7548), .SP(aclk_c_enable_78), .CK(aclk_c), .Q(n1416));   // c:/lscc/ep16vhdl/ep16.vhd(47[17:24])
    defparam creset.GSR = "ENABLED";
    DPR16X4B r_stack1 (.DI0(r[13]), .DI1(r[14]), .DI2(r[15]), .DI3(r[16]), 
            .WAD0(rp1[0]), .WAD1(rp1[1]), .WAD2(rp1[2]), .WAD3(rp1[3]), 
            .WCK(aclk_c), .WRE(n1536), .RAD0(rp[0]), .RAD1(rp[1]), .RAD2(rp[2]), 
            .RAD3(rp[3]), .DO0(n1514), .DO1(n1515), .DO2(n1516), .DO3(n1517));
    defparam r_stack1.initval = 64'h0000000000000000;
    FD1P3AX creset_740 (.D(n7549), .SP(aclk_c_enable_78), .CK(aclk_c), 
            .Q(n1371));   // c:/lscc/ep16vhdl/ep16.vhd(47[17:24])
    defparam creset_740.GSR = "ENABLED";
    FD1P3AX creset_772 (.D(n7550), .SP(aclk_c_enable_78), .CK(aclk_c), 
            .Q(n1411));   // c:/lscc/ep16vhdl/ep16.vhd(47[17:24])
    defparam creset_772.GSR = "ENABLED";
    DPR16X4B s_stack1 (.DI0(memory_data_i[13]), .DI1(memory_data_i[14]), 
            .DI2(memory_data_i[15]), .DI3(t[16]), .WAD0(sp1[0]), .WAD1(sp1[1]), 
            .WAD2(sp1[2]), .WAD3(sp1[3]), .WCK(aclk_c), .WRE(n1497), 
            .RAD0(sp[0]), .RAD1(sp[1]), .RAD2(sp[2]), .RAD3(sp[3]), 
            .DO0(n1475), .DO1(n1476), .DO2(n1477), .DO3(n1478));
    defparam s_stack1.initval = 64'h0000000000000000;
    PFUMX i17 (.BLUT(n19_adj_910), .ALUT(n26_adj_911), .C0(data_o_15__N_441), 
          .Z(n28_adj_913));
    ORCALUT4 mux_595_i1_3_lut (.A(gpio_out[0]), .B(baudrate_reg[0]), .C(data_o_15__N_441), 
            .Z(n1178)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(80[2] 95[9])
    defparam mux_595_i1_3_lut.init = 16'hcaca;
    FD1P3AX creset_656 (.D(n7551), .SP(aclk_c_enable_15), .CK(aclk_c), 
            .Q(n1251));   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam creset_656.GSR = "ENABLED";
    FD1P3AX creset_692 (.D(n7552), .SP(aclk_c_enable_16), .CK(aclk_c), 
            .Q(n1296));   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam creset_692.GSR = "ENABLED";
    FD1P3AX creset_648 (.D(n7553), .SP(aclk_c_enable_21), .CK(aclk_c), 
            .Q(n1241));   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam creset_648.GSR = "ENABLED";
    FD1P3AX creset_664 (.D(n7554), .SP(aclk_c_enable_18), .CK(aclk_c), 
            .Q(n1261));   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam creset_664.GSR = "ENABLED";
    FD1P3AX creset_676 (.D(n7555), .SP(aclk_c_enable_37), .CK(aclk_c), 
            .Q(n1276));   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam creset_676.GSR = "ENABLED";
    FD1P3AX creset_768 (.D(n7556), .SP(aclk_c_enable_78), .CK(aclk_c), 
            .Q(n1406));   // c:/lscc/ep16vhdl/ep16.vhd(47[17:24])
    defparam creset_768.GSR = "ENABLED";
    PFUMX i17_adj_206 (.BLUT(n19_adj_906), .ALUT(n26_adj_907), .C0(data_o_15__N_441), 
          .Z(n28_adj_908));
    FD1P3AX creset_636 (.D(n7557), .SP(aclk_c_enable_21), .CK(aclk_c), 
            .Q(n1226));   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam creset_636.GSR = "ENABLED";
    FD1P3AX creset_652 (.D(n7558), .SP(aclk_c_enable_29), .CK(aclk_c), 
            .Q(n1246));   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam creset_652.GSR = "ENABLED";
    gpio gpio1 (.\memory_addr[1] (memory_addr[1]), .tx_en(tx_en), .hw_xonoff_ff(hw_xonoff_ff), 
         .n8616(n8616), .\memory_addr[4] (memory_addr[4]), .n8617(n8617), 
         .\memory_addr[5] (memory_addr[5]), .n7401(n7401), .n8615(n8615), 
         .n7405(n7405), .n8622(n8622), .gpio_out({gpio_out}), .gpio_dir({gpio_dir}), 
         .\baudrate_reg[8] (baudrate_reg[8]), .rxb_full(rxb_full), .ioport_out_8(ioport_out_8), 
         .aclk_c(aclk_c), .aclk_c_enable_123(aclk_c_enable_123), .system_data_o({system_data_o}), 
         .data_o_15__N_441(data_o_15__N_441), .n8245(n8245), .n8603(n8603), 
         .n8602(n8602), .n8618(n8618), .n18(n18), .n8604(n8604), .n8608(n8608), 
         .ioport_out_13(ioport_out_13), .n8592(n8592), .n1084(n1084), 
         .ioport_out_15(ioport_out_15), .ioport_out_14(ioport_out_14), .\rx_buffer_reg[0] (rx_buffer_reg[0]), 
         .n1163(n1163), .n7611(n7611), .n1099(n1099), .n1164(n1164), 
         .n1098(n1098), .n1165(n1165), .n1097(n1097), .n1166(n1166), 
         .n1096(n1096), .n1167(n1167), .n1095(n1095), .n1168(n1168), 
         .n1094(n1094), .n1169(n1169), .n1093(n1093), .n1091(n1091), 
         .n1178(n1178), .n1162(n1162), .ioport_out_12(ioport_out_12), 
         .n7407(n7407), .ioport_out_11(ioport_out_11), .ioport_out_10(ioport_out_10), 
         .ioport_out_9(ioport_out_9), .n1171(n1171), .ioport_out_7(ioport_out_7), 
         .\rx_buffer_reg[7] (rx_buffer_reg[7]), .ioport_out_0(ioport_out_0));   // c:/lscc/ep16vhdl/ep16_chip.vhd(252[11:15])
    ORCALUT4 i3516_2_lut_rep_250_3_lut (.A(n8664), .B(n1305), .C(n1334), 
            .Z(n8630)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam i3516_2_lut_rep_250_3_lut.init = 16'h8080;
    FD1P3AX creset_660 (.D(n7559), .SP(aclk_c_enable_29), .CK(aclk_c), 
            .Q(n1256));   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam creset_660.GSR = "ENABLED";
    FD1P3AX creset_672 (.D(n7560), .SP(aclk_c_enable_37), .CK(aclk_c), 
            .Q(n1271));   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam creset_672.GSR = "ENABLED";
    ORCALUT4 i1188_4_lut (.A(system_data_o_15__N_13), .B(system_data_o_15__N_51), 
            .C(memory_data_i[12]), .D(system_write), .Z(system_data_o[12])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(198[2:15])
    defparam i1188_4_lut.init = 16'hc088;
    ORCALUT4 mux_470_i13_4_lut (.A(memory_data_o[12]), .B(n1096), .C(n8618), 
            .D(n6537), .Z(system_data_o_15__N_13)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(80[2] 95[9])
    defparam mux_470_i13_4_lut.init = 16'hcafa;
    ORCALUT4 i3404_4_lut_then_4_lut (.A(n8660), .B(n66_adj_901), .C(rx_irq_o_N_643), 
            .D(baudrate_reg[5]), .Z(n8732)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(39[3:11])
    defparam i3404_4_lut_then_4_lut.init = 16'hcac0;
    ORCALUT4 i3404_4_lut_else_4_lut (.A(baudrate_reg[6]), .B(rxd_ff), .Z(n8731)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(39[3:11])
    defparam i3404_4_lut_else_4_lut.init = 16'h2222;
    ORCALUT4 i3373_4_lut_then_4_lut (.A(n8660), .B(n69_adj_902), .C(rx_irq_o_N_643), 
            .D(baudrate_reg[4]), .Z(n8735)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(39[3:11])
    defparam i3373_4_lut_then_4_lut.init = 16'hcac0;
    ORCALUT4 i3373_4_lut_else_4_lut (.A(baudrate_reg[5]), .B(rxd_ff), .Z(n8734)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(39[3:11])
    defparam i3373_4_lut_else_4_lut.init = 16'h2222;
    ORCALUT4 i3342_4_lut_then_4_lut (.A(n8660), .B(n72_adj_903), .C(rx_irq_o_N_643), 
            .D(baudrate_reg[3]), .Z(n8738)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(39[3:11])
    defparam i3342_4_lut_then_4_lut.init = 16'hcac0;
    ORCALUT4 i3342_4_lut_else_4_lut (.A(baudrate_reg[4]), .B(rxd_ff), .Z(n8737)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(39[3:11])
    defparam i3342_4_lut_else_4_lut.init = 16'h2222;
    ORCALUT4 i3514_2_lut_rep_249_3_lut (.A(n8664), .B(n1305), .C(n1336), 
            .Z(n8629)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam i3514_2_lut_rep_249_3_lut.init = 16'h8080;
    ORCALUT4 i3311_4_lut_then_4_lut (.A(n8660), .B(n75_adj_904), .C(rx_irq_o_N_643), 
            .D(baudrate_reg[2]), .Z(n8741)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(39[3:11])
    defparam i3311_4_lut_then_4_lut.init = 16'hcac0;
    FD1P3AX creset_668 (.D(n7561), .SP(aclk_c_enable_37), .CK(aclk_c), 
            .Q(n1266));   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam creset_668.GSR = "ENABLED";
    FD1P3AX creset_764 (.D(n7562), .SP(aclk_c_enable_78), .CK(aclk_c), 
            .Q(n1401));   // c:/lscc/ep16vhdl/ep16.vhd(47[17:24])
    defparam creset_764.GSR = "ENABLED";
    ORCALUT4 i3311_4_lut_else_4_lut (.A(baudrate_reg[3]), .B(rxd_ff), .Z(n8740)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(39[3:11])
    defparam i3311_4_lut_else_4_lut.init = 16'h2222;
    ORCALUT4 i1190_4_lut (.A(system_data_o_15__N_7), .B(system_data_o_15__N_51), 
            .C(memory_data_i[14]), .D(system_write), .Z(system_data_o[14])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(198[2:15])
    defparam i1190_4_lut.init = 16'hc088;
    FD1P3AX creset_760 (.D(n7563), .SP(aclk_c_enable_78), .CK(aclk_c), 
            .Q(n1396));   // c:/lscc/ep16vhdl/ep16.vhd(47[17:24])
    defparam creset_760.GSR = "ENABLED";
    FD1P3AX creset_736 (.D(n7564), .SP(aclk_c_enable_78), .CK(aclk_c), 
            .Q(n1366));   // c:/lscc/ep16vhdl/ep16.vhd(47[17:24])
    defparam creset_736.GSR = "ENABLED";
    FD1P3AX creset_732 (.D(n7565), .SP(aclk_c_enable_78), .CK(aclk_c), 
            .Q(n1361));   // c:/lscc/ep16vhdl/ep16.vhd(47[17:24])
    defparam creset_732.GSR = "ENABLED";
    FD1P3AX creset_756 (.D(n7566), .SP(aclk_c_enable_78), .CK(aclk_c), 
            .Q(n1391));   // c:/lscc/ep16vhdl/ep16.vhd(47[17:24])
    defparam creset_756.GSR = "ENABLED";
    FD1P3AX creset_752 (.D(n7567), .SP(aclk_c_enable_78), .CK(aclk_c), 
            .Q(n1386));   // c:/lscc/ep16vhdl/ep16.vhd(47[17:24])
    defparam creset_752.GSR = "ENABLED";
    ORCALUT4 mux_470_i15_4_lut (.A(memory_data_o[14]), .B(n1098), .C(n8618), 
            .D(n6537), .Z(system_data_o_15__N_7)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(80[2] 95[9])
    defparam mux_470_i15_4_lut.init = 16'hcafa;
    FD1P3AX creset_748 (.D(n7568), .SP(aclk_c_enable_78), .CK(aclk_c), 
            .Q(n1381));   // c:/lscc/ep16vhdl/ep16.vhd(47[17:24])
    defparam creset_748.GSR = "ENABLED";
    FD1P3AX creset_744 (.D(n7569), .SP(aclk_c_enable_78), .CK(aclk_c), 
            .Q(n1376));   // c:/lscc/ep16vhdl/ep16.vhd(47[17:24])
    defparam creset_744.GSR = "ENABLED";
    DPR16X4B n14280 (.DI0(n1500), .DI1(GND_net), .DI2(GND_net), .DI3(GND_net), 
            .WAD0(rp1[0]), .WAD1(rp1[1]), .WAD2(rp1[2]), .WAD3(rp1[3]), 
            .WCK(aclk_c), .WRE(n1424), .RAD0(rp[0]), .RAD1(rp[1]), .RAD2(rp[2]), 
            .RAD3(rp[3]), .DO0(n1429));
    defparam n14280.initval = 64'h0000000000000000;
    ORCALUT4 i3280_4_lut_then_4_lut (.A(n8660), .B(n78_adj_905), .C(rx_irq_o_N_643), 
            .D(baudrate_reg[1]), .Z(n8744)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(39[3:11])
    defparam i3280_4_lut_then_4_lut.init = 16'hcac0;
    DPR16X4B s_stack0 (.DI0(memory_data_i[13]), .DI1(memory_data_i[14]), 
            .DI2(memory_data_i[15]), .DI3(t[16]), .WAD0(sp1[0]), .WAD1(sp1[1]), 
            .WAD2(sp1[2]), .WAD3(sp1[3]), .WCK(aclk_c), .WRE(n1498), 
            .RAD0(sp[0]), .RAD1(sp[1]), .RAD2(sp[2]), .RAD3(sp[3]), 
            .DO0(n1492), .DO1(n1493), .DO2(n1494), .DO3(n1495));
    defparam s_stack0.initval = 64'h0000000000000000;
    ORCALUT4 i3280_4_lut_else_4_lut (.A(baudrate_reg[2]), .B(rxd_ff), .Z(n8743)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(39[3:11])
    defparam i3280_4_lut_else_4_lut.init = 16'h2222;
    DPR16X4B s_stack2 (.DI0(memory_data_i[9]), .DI1(memory_data_i[10]), 
            .DI2(memory_data_i[11]), .DI3(memory_data_i[12]), .WAD0(sp1[0]), 
            .WAD1(sp1[1]), .WAD2(sp1[2]), .WAD3(sp1[3]), .WCK(aclk_c), 
            .WRE(n1497), .RAD0(sp[0]), .RAD1(sp[1]), .RAD2(sp[2]), .RAD3(sp[3]), 
            .DO0(n1471), .DO1(n1472), .DO2(n1473), .DO3(n1474));
    defparam s_stack2.initval = 64'h0000000000000000;
    DPR16X4B s_stack3 (.DI0(memory_data_i[5]), .DI1(memory_data_i[6]), .DI2(memory_data_i[7]), 
            .DI3(memory_data_i[8]), .WAD0(sp1[0]), .WAD1(sp1[1]), .WAD2(sp1[2]), 
            .WAD3(sp1[3]), .WCK(aclk_c), .WRE(n1497), .RAD0(sp[0]), 
            .RAD1(sp[1]), .RAD2(sp[2]), .RAD3(sp[3]), .DO0(n1467), .DO1(n1468), 
            .DO2(n1469), .DO3(n1470));
    defparam s_stack3.initval = 64'h0000000000000000;
    DPR16X4B s_stack4 (.DI0(memory_data_i[1]), .DI1(memory_data_i[2]), .DI2(memory_data_i[3]), 
            .DI3(memory_data_i[4]), .WAD0(sp1[0]), .WAD1(sp1[1]), .WAD2(sp1[2]), 
            .WAD3(sp1[3]), .WCK(aclk_c), .WRE(n1497), .RAD0(sp[0]), 
            .RAD1(sp[1]), .RAD2(sp[2]), .RAD3(sp[3]), .DO0(n1463), .DO1(n1464), 
            .DO2(n1465), .DO3(n1466));
    defparam s_stack4.initval = 64'h0000000000000000;
    DPR16X4B s_stack5 (.DI0(memory_data_i[0]), .DI1(GND_net), .DI2(GND_net), 
            .DI3(GND_net), .WAD0(sp1[0]), .WAD1(sp1[1]), .WAD2(sp1[2]), 
            .WAD3(sp1[3]), .WCK(aclk_c), .WRE(n1497), .RAD0(sp[0]), 
            .RAD1(sp[1]), .RAD2(sp[2]), .RAD3(sp[3]), .DO0(n1462));
    defparam s_stack5.initval = 64'h0000000000000000;
    DPR16X4B s_stack6 (.DI0(memory_data_i[9]), .DI1(memory_data_i[10]), 
            .DI2(memory_data_i[11]), .DI3(memory_data_i[12]), .WAD0(sp1[0]), 
            .WAD1(sp1[1]), .WAD2(sp1[2]), .WAD3(sp1[3]), .WCK(aclk_c), 
            .WRE(n1498), .RAD0(sp[0]), .RAD1(sp[1]), .RAD2(sp[2]), .RAD3(sp[3]), 
            .DO0(n1488), .DO1(n1489), .DO2(n1490), .DO3(n1491));
    defparam s_stack6.initval = 64'h0000000000000000;
    DPR16X4B s_stack7 (.DI0(memory_data_i[5]), .DI1(memory_data_i[6]), .DI2(memory_data_i[7]), 
            .DI3(memory_data_i[8]), .WAD0(sp1[0]), .WAD1(sp1[1]), .WAD2(sp1[2]), 
            .WAD3(sp1[3]), .WCK(aclk_c), .WRE(n1498), .RAD0(sp[0]), 
            .RAD1(sp[1]), .RAD2(sp[2]), .RAD3(sp[3]), .DO0(n1484), .DO1(n1485), 
            .DO2(n1486), .DO3(n1487));
    defparam s_stack7.initval = 64'h0000000000000000;
    DPR16X4B s_stack8 (.DI0(memory_data_i[1]), .DI1(memory_data_i[2]), .DI2(memory_data_i[3]), 
            .DI3(memory_data_i[4]), .WAD0(sp1[0]), .WAD1(sp1[1]), .WAD2(sp1[2]), 
            .WAD3(sp1[3]), .WCK(aclk_c), .WRE(n1498), .RAD0(sp[0]), 
            .RAD1(sp[1]), .RAD2(sp[2]), .RAD3(sp[3]), .DO0(n1480), .DO1(n1481), 
            .DO2(n1482), .DO3(n1483));
    defparam s_stack8.initval = 64'h0000000000000000;
    DPR16X4B r_stack0 (.DI0(r[13]), .DI1(r[14]), .DI2(r[15]), .DI3(r[16]), 
            .WAD0(rp1[0]), .WAD1(rp1[1]), .WAD2(rp1[2]), .WAD3(rp1[3]), 
            .WCK(aclk_c), .WRE(n1537), .RAD0(rp[0]), .RAD1(rp[1]), .RAD2(rp[2]), 
            .RAD3(rp[3]), .DO0(n1531), .DO1(n1532), .DO2(n1533), .DO3(n1534));
    defparam r_stack0.initval = 64'h0000000000000000;
    DPR16X4B s_stack9 (.DI0(memory_data_i[0]), .DI1(GND_net), .DI2(GND_net), 
            .DI3(GND_net), .WAD0(sp1[0]), .WAD1(sp1[1]), .WAD2(sp1[2]), 
            .WAD3(sp1[3]), .WCK(aclk_c), .WRE(n1498), .RAD0(sp[0]), 
            .RAD1(sp[1]), .RAD2(sp[2]), .RAD3(sp[3]), .DO0(n1479));
    defparam s_stack9.initval = 64'h0000000000000000;
    DPR16X4B n13160 (.DI0(sp1[4]), .DI1(GND_net), .DI2(GND_net), .DI3(GND_net), 
            .WAD0(sp1[0]), .WAD1(sp1[1]), .WAD2(sp1[2]), .WAD3(sp1[3]), 
            .WCK(aclk_c), .WRE(n1312), .RAD0(sp[0]), .RAD1(sp[1]), .RAD2(sp[2]), 
            .RAD3(sp[3]), .DO0(n1317));
    defparam n13160.initval = 64'h0000000000000000;
    DPR16X4B r_stack2 (.DI0(r[9]), .DI1(r[10]), .DI2(r[11]), .DI3(r[12]), 
            .WAD0(rp1[0]), .WAD1(rp1[1]), .WAD2(rp1[2]), .WAD3(rp1[3]), 
            .WCK(aclk_c), .WRE(n1536), .RAD0(rp[0]), .RAD1(rp[1]), .RAD2(rp[2]), 
            .RAD3(rp[3]), .DO0(n1510), .DO1(n1511), .DO2(n1512), .DO3(n1513));
    defparam r_stack2.initval = 64'h0000000000000000;
    DPR16X4B r_stack3 (.DI0(r[5]), .DI1(r[6]), .DI2(r[7]), .DI3(r[8]), 
            .WAD0(rp1[0]), .WAD1(rp1[1]), .WAD2(rp1[2]), .WAD3(rp1[3]), 
            .WCK(aclk_c), .WRE(n1536), .RAD0(rp[0]), .RAD1(rp[1]), .RAD2(rp[2]), 
            .RAD3(rp[3]), .DO0(n1506), .DO1(n1507), .DO2(n1508), .DO3(n1509));
    defparam r_stack3.initval = 64'h0000000000000000;
    DPR16X4B r_stack4 (.DI0(r[1]), .DI1(r[2]), .DI2(r[3]), .DI3(r[4]), 
            .WAD0(rp1[0]), .WAD1(rp1[1]), .WAD2(rp1[2]), .WAD3(rp1[3]), 
            .WCK(aclk_c), .WRE(n1536), .RAD0(rp[0]), .RAD1(rp[1]), .RAD2(rp[2]), 
            .RAD3(rp[3]), .DO0(n1502), .DO1(n1503), .DO2(n1504), .DO3(n1505));
    defparam r_stack4.initval = 64'h0000000000000000;
    DPR16X4B r_stack5 (.DI0(r[0]), .DI1(GND_net), .DI2(GND_net), .DI3(GND_net), 
            .WAD0(rp1[0]), .WAD1(rp1[1]), .WAD2(rp1[2]), .WAD3(rp1[3]), 
            .WCK(aclk_c), .WRE(n1536), .RAD0(rp[0]), .RAD1(rp[1]), .RAD2(rp[2]), 
            .RAD3(rp[3]), .DO0(n1501));
    defparam r_stack5.initval = 64'h0000000000000000;
    DPR16X4B r_stack6 (.DI0(r[9]), .DI1(r[10]), .DI2(r[11]), .DI3(r[12]), 
            .WAD0(rp1[0]), .WAD1(rp1[1]), .WAD2(rp1[2]), .WAD3(rp1[3]), 
            .WCK(aclk_c), .WRE(n1537), .RAD0(rp[0]), .RAD1(rp[1]), .RAD2(rp[2]), 
            .RAD3(rp[3]), .DO0(n1527), .DO1(n1528), .DO2(n1529), .DO3(n1530));
    defparam r_stack6.initval = 64'h0000000000000000;
    DPR16X4B r_stack7 (.DI0(r[5]), .DI1(r[6]), .DI2(r[7]), .DI3(r[8]), 
            .WAD0(rp1[0]), .WAD1(rp1[1]), .WAD2(rp1[2]), .WAD3(rp1[3]), 
            .WCK(aclk_c), .WRE(n1537), .RAD0(rp[0]), .RAD1(rp[1]), .RAD2(rp[2]), 
            .RAD3(rp[3]), .DO0(n1523), .DO1(n1524), .DO2(n1525), .DO3(n1526));
    defparam r_stack7.initval = 64'h0000000000000000;
    DPR16X4B r_stack8 (.DI0(r[1]), .DI1(r[2]), .DI2(r[3]), .DI3(r[4]), 
            .WAD0(rp1[0]), .WAD1(rp1[1]), .WAD2(rp1[2]), .WAD3(rp1[3]), 
            .WCK(aclk_c), .WRE(n1537), .RAD0(rp[0]), .RAD1(rp[1]), .RAD2(rp[2]), 
            .RAD3(rp[3]), .DO0(n1519), .DO1(n1520), .DO2(n1521), .DO3(n1522));
    defparam r_stack8.initval = 64'h0000000000000000;
    DPR16X4B r_stack9 (.DI0(r[0]), .DI1(GND_net), .DI2(GND_net), .DI3(GND_net), 
            .WAD0(rp1[0]), .WAD1(rp1[1]), .WAD2(rp1[2]), .WAD3(rp1[3]), 
            .WCK(aclk_c), .WRE(n1537), .RAD0(rp[0]), .RAD1(rp[1]), .RAD2(rp[2]), 
            .RAD3(rp[3]), .DO0(n1518));
    defparam r_stack9.initval = 64'h0000000000000000;
    ORCALUT4 i6747_4_lut (.A(n8617), .B(memory_addr[5]), .C(n8615), .D(n8616), 
            .Z(n7411)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6747_4_lut.init = 16'hfffe;
    ORCALUT4 i7214_3_lut (.A(n30_adj_909), .B(ioport_out_5), .C(memory_addr[1]), 
            .Z(n19_adj_910)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(37[3:9])
    defparam i7214_3_lut.init = 16'hcaca;
    ORCALUT4 i1191_4_lut (.A(system_data_o_15__N_2), .B(system_data_o_15__N_51), 
            .C(memory_data_i[15]), .D(system_write), .Z(system_data_o[15])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(198[2:15])
    defparam i1191_4_lut.init = 16'hc088;
    PFUMX i17_adj_207 (.BLUT(n19_adj_924), .ALUT(n26_adj_925), .C0(data_o_15__N_441), 
          .Z(n28_adj_926));
    ORCALUT4 i3525_2_lut_rep_232_3_lut (.A(n8664), .B(n1305), .C(n1325), 
            .Z(n8612)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam i3525_2_lut_rep_232_3_lut.init = 16'h8080;
    ORCALUT4 i29_3_lut (.A(gpio_out[5]), .B(gpio_dir[5]), .C(n8622), .Z(n30_adj_909)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(124[9:20])
    defparam i29_3_lut.init = 16'hcaca;
    ORCALUT4 mux_470_i16_4_lut (.A(memory_data_o[15]), .B(n1099), .C(n8618), 
            .D(n6537), .Z(system_data_o_15__N_2)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(80[2] 95[9])
    defparam mux_470_i16_4_lut.init = 16'hcafa;
    ORCALUT4 i1161_1_lut (.A(gpio_dir[14]), .Z(n1855)) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(44[2:8])
    defparam i1161_1_lut.init = 16'h5555;
    ORCALUT4 i1162_1_lut (.A(gpio_dir[13]), .Z(n1857)) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(44[2:8])
    defparam i1162_1_lut.init = 16'h5555;
    PFUMX i17_adj_208 (.BLUT(n19), .ALUT(n26), .C0(data_o_15__N_441), 
          .Z(n28));
    ORCALUT4 i6906_3_lut (.A(n1356), .B(n7161), .Z(n7570)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6906_3_lut.init = 16'heeee;
    PFUMX i29 (.BLUT(n6766), .ALUT(n6655), .C0(n8637), .Z(n18));
    ORCALUT4 i1163_1_lut (.A(gpio_dir[12]), .Z(n1859)) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(44[2:8])
    defparam i1163_1_lut.init = 16'h5555;
    ORCALUT4 i1164_1_lut (.A(gpio_dir[11]), .Z(n1861)) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(44[2:8])
    defparam i1164_1_lut.init = 16'h5555;
    ORCALUT4 i1165_1_lut (.A(gpio_dir[10]), .Z(n1863)) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(44[2:8])
    defparam i1165_1_lut.init = 16'h5555;
    ORCALUT4 i15_4_lut (.A(memory_addr[1]), .B(rx_buffer_reg[5]), .C(n8622), 
            .D(baudrate_reg[5]), .Z(n26_adj_911)) /* synthesis lut_function=(A (B (C))+!A !(C+!(D))) */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(124[9:20])
    defparam i15_4_lut.init = 16'h8580;
    ORCALUT4 i1166_1_lut (.A(gpio_dir[9]), .Z(n1865)) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(44[2:8])
    defparam i1166_1_lut.init = 16'h5555;
    ORCALUT4 i1167_1_lut (.A(gpio_dir[8]), .Z(n1867)) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(44[2:8])
    defparam i1167_1_lut.init = 16'h5555;
    ORCALUT4 i1168_1_lut (.A(gpio_dir[7]), .Z(n1869)) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(44[2:8])
    defparam i1168_1_lut.init = 16'h5555;
    ORCALUT4 i1169_1_lut (.A(gpio_dir[6]), .Z(n1871)) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(44[2:8])
    defparam i1169_1_lut.init = 16'h5555;
    ORCALUT4 i1170_1_lut (.A(gpio_dir[5]), .Z(n1873)) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(44[2:8])
    defparam i1170_1_lut.init = 16'h5555;
    ORCALUT4 i1171_1_lut (.A(gpio_dir[4]), .Z(n1875)) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(44[2:8])
    defparam i1171_1_lut.init = 16'h5555;
    ORCALUT4 i1172_1_lut (.A(gpio_dir[3]), .Z(n1877)) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(44[2:8])
    defparam i1172_1_lut.init = 16'h5555;
    ORCALUT4 i1173_1_lut (.A(gpio_dir[2]), .Z(n1879)) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(44[2:8])
    defparam i1173_1_lut.init = 16'h5555;
    ORCALUT4 i1174_1_lut (.A(gpio_dir[1]), .Z(n1881)) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(44[2:8])
    defparam i1174_1_lut.init = 16'h5555;
    ORCALUT4 i1175_1_lut (.A(gpio_dir[0]), .Z(n1883)) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(44[2:8])
    defparam i1175_1_lut.init = 16'h5555;
    ORCALUT4 i1189_4_lut (.A(system_data_o_15__N_10), .B(system_data_o_15__N_51), 
            .C(memory_data_i[13]), .D(system_write), .Z(system_data_o[13])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(198[2:15])
    defparam i1189_4_lut.init = 16'hc088;
    ORCALUT4 mux_470_i14_4_lut (.A(memory_data_o[13]), .B(n1097), .C(n8618), 
            .D(n6537), .Z(system_data_o_15__N_10)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(80[2] 95[9])
    defparam mux_470_i14_4_lut.init = 16'hcafa;
    ORCALUT4 mux_595_i16_3_lut (.A(gpio_out[15]), .B(baudrate_reg[15]), 
            .C(data_o_15__N_441), .Z(n1163)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(80[2] 95[9])
    defparam mux_595_i16_3_lut.init = 16'hcaca;
    ORCALUT4 i3248_3_lut (.A(n3963), .B(baudrate_reg[1]), .C(n780), .Z(n3964)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3248_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut (.A(n7403), .B(n8621), .C(n8615), .D(n6835), .Z(data_o_15__N_441)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut.init = 16'h0100;
    ORCALUT4 i3247_4_lut (.A(tx_counter[1]), .B(n78), .C(n8651), .D(tx_en_N_533), 
            .Z(n3963)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i3247_4_lut.init = 16'hca0a;
    ORCALUT4 i6739_4_lut (.A(n8616), .B(memory_addr[5]), .C(n8617), .D(memory_addr[4]), 
            .Z(n7403)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6739_4_lut.init = 16'hfffe;
    ORCALUT4 i3279_3_lut (.A(n3993), .B(baudrate_reg[2]), .C(n780), .Z(n3994)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3279_3_lut.init = 16'hcaca;
    ORCALUT4 i3278_4_lut (.A(tx_counter[2]), .B(n75), .C(n8651), .D(tx_en_N_533), 
            .Z(n3993)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i3278_4_lut.init = 16'hca0a;
    ORCALUT4 i3310_3_lut (.A(n4023), .B(baudrate_reg[3]), .C(n780), .Z(n4024)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3310_3_lut.init = 16'hcaca;
    ORCALUT4 i3309_4_lut (.A(tx_counter[3]), .B(n72), .C(n8651), .D(tx_en_N_533), 
            .Z(n4023)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i3309_4_lut.init = 16'hca0a;
    ORCALUT4 i3341_3_lut (.A(n4053), .B(baudrate_reg[4]), .C(n780), .Z(n4054)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3341_3_lut.init = 16'hcaca;
    ORCALUT4 i3340_4_lut (.A(tx_counter[4]), .B(n69), .C(n8651), .D(tx_en_N_533), 
            .Z(n4053)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i3340_4_lut.init = 16'hca0a;
    ORCALUT4 i3372_3_lut (.A(n4083), .B(baudrate_reg[5]), .C(n780), .Z(n4084)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3372_3_lut.init = 16'hcaca;
    ORCALUT4 i3371_4_lut (.A(tx_counter[5]), .B(n66), .C(n8651), .D(tx_en_N_533), 
            .Z(n4083)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i3371_4_lut.init = 16'hca0a;
    ORCALUT4 i3523_2_lut_rep_233_3_lut (.A(n8664), .B(n1305), .C(n1327), 
            .Z(n8613)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam i3523_2_lut_rep_233_3_lut.init = 16'h8080;
    ORCALUT4 i3403_3_lut (.A(n4113), .B(baudrate_reg[6]), .C(n780), .Z(n4114)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i3403_3_lut.init = 16'hcaca;
    ORCALUT4 i3402_4_lut (.A(tx_counter[6]), .B(n63), .C(n8651), .D(tx_en_N_533), 
            .Z(n4113)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i3402_4_lut.init = 16'hca0a;
    ORCALUT4 i7212_3_lut (.A(n30), .B(ioport_out_6), .C(memory_addr[1]), 
            .Z(n19_adj_906)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(37[3:9])
    defparam i7212_3_lut.init = 16'hcaca;
    ORCALUT4 i29_3_lut_adj_209 (.A(gpio_out[6]), .B(gpio_dir[6]), .C(n8622), 
            .Z(n30)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(124[9:20])
    defparam i29_3_lut_adj_209.init = 16'hcaca;
    ORCALUT4 i15_4_lut_adj_210 (.A(memory_addr[1]), .B(rx_buffer_reg[6]), 
            .C(n8622), .D(baudrate_reg[6]), .Z(n26_adj_907)) /* synthesis lut_function=(A (B (C))+!A !(C+!(D))) */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(124[9:20])
    defparam i15_4_lut_adj_210.init = 16'h8580;
    L6MUX21 i7054 (.D0(n7716), .D1(n7717), .SD(rp1[3]), .Z(n1419));
    L6MUX21 i7069 (.D0(n7731), .D1(n7732), .SD(rp[3]), .Z(n7733));
    ORCALUT4 i7003_3_lut (.A(n1226), .B(n1231), .C(sp1[0]), .Z(n7667)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7003_3_lut.init = 16'hcaca;
    L6MUX21 i7017 (.D0(n7679), .D1(n7680), .SD(sp1[3]), .Z(n1304));
    BB ioport_pad_14 (.I(gpio_out[14]), .T(n1855), .B(ioport[14]), .O(ioport_out_14));   // c:/lscc/ep16vhdl/ep16_chip.vhd(44[2:8])
    BB ioport_pad_13 (.I(gpio_out[13]), .T(n1857), .B(ioport[13]), .O(ioport_out_13));   // c:/lscc/ep16vhdl/ep16_chip.vhd(44[2:8])
    BB ioport_pad_12 (.I(gpio_out[12]), .T(n1859), .B(ioport[12]), .O(ioport_out_12));   // c:/lscc/ep16vhdl/ep16_chip.vhd(44[2:8])
    BB ioport_pad_11 (.I(gpio_out[11]), .T(n1861), .B(ioport[11]), .O(ioport_out_11));   // c:/lscc/ep16vhdl/ep16_chip.vhd(44[2:8])
    BB ioport_pad_10 (.I(gpio_out[10]), .T(n1863), .B(ioport[10]), .O(ioport_out_10));   // c:/lscc/ep16vhdl/ep16_chip.vhd(44[2:8])
    BB ioport_pad_9 (.I(gpio_out[9]), .T(n1865), .B(ioport[9]), .O(ioport_out_9));   // c:/lscc/ep16vhdl/ep16_chip.vhd(44[2:8])
    BB ioport_pad_8 (.I(gpio_out[8]), .T(n1867), .B(ioport[8]), .O(ioport_out_8));   // c:/lscc/ep16vhdl/ep16_chip.vhd(44[2:8])
    BB ioport_pad_7 (.I(gpio_out[7]), .T(n1869), .B(ioport[7]), .O(ioport_out_7));   // c:/lscc/ep16vhdl/ep16_chip.vhd(44[2:8])
    BB ioport_pad_6 (.I(gpio_out[6]), .T(n1871), .B(ioport[6]), .O(ioport_out_6));   // c:/lscc/ep16vhdl/ep16_chip.vhd(44[2:8])
    BB ioport_pad_5 (.I(gpio_out[5]), .T(n1873), .B(ioport[5]), .O(ioport_out_5));   // c:/lscc/ep16vhdl/ep16_chip.vhd(44[2:8])
    BB ioport_pad_4 (.I(gpio_out[4]), .T(n1875), .B(ioport[4]), .O(ioport_out_4));   // c:/lscc/ep16vhdl/ep16_chip.vhd(44[2:8])
    BB ioport_pad_3 (.I(gpio_out[3]), .T(n1877), .B(ioport[3]), .O(ioport_out_3));   // c:/lscc/ep16vhdl/ep16_chip.vhd(44[2:8])
    BB ioport_pad_2 (.I(gpio_out[2]), .T(n1879), .B(ioport[2]), .O(ioport_out_2));   // c:/lscc/ep16vhdl/ep16_chip.vhd(44[2:8])
    BB ioport_pad_1 (.I(gpio_out[1]), .T(n1881), .B(ioport[1]), .O(ioport_out_1));   // c:/lscc/ep16vhdl/ep16_chip.vhd(44[2:8])
    BB ioport_pad_0 (.I(gpio_out[0]), .T(n1883), .B(ioport[0]), .O(ioport_out_0));   // c:/lscc/ep16vhdl/ep16_chip.vhd(44[2:8])
    OB uart_o_pad (.I(uart_o_c), .O(uart_o));   // c:/lscc/ep16vhdl/ep16_chip.vhd(41[2:8])
    OB acknowledge_o_pad (.I(acknowledge_o_c), .O(acknowledge_o));   // c:/lscc/ep16vhdl/ep16_chip.vhd(42[2:15])
    IB aclk_pad (.I(aclk), .O(aclk_c));   // c:/lscc/ep16vhdl/ep16_chip.vhd(36[2:6])
    IB arst_pad (.I(arst), .O(arst_c));   // c:/lscc/ep16vhdl/ep16_chip.vhd(37[2:6])
    IB interrupt_i_pad_4 (.I(interrupt_i[4]), .O(interrupt_i_c_4));   // c:/lscc/ep16vhdl/ep16_chip.vhd(38[2:13])
    IB interrupt_i_pad_3 (.I(interrupt_i[3]), .O(interrupt_i_c_3));   // c:/lscc/ep16vhdl/ep16_chip.vhd(38[2:13])
    IB interrupt_i_pad_2 (.I(interrupt_i[2]), .O(interrupt_i_c_2));   // c:/lscc/ep16vhdl/ep16_chip.vhd(38[2:13])
    IB interrupt_i_pad_1 (.I(interrupt_i[1]), .O(interrupt_i_c_1));   // c:/lscc/ep16vhdl/ep16_chip.vhd(38[2:13])
    IB interrupt_i_pad_0 (.I(interrupt_i[0]), .O(interrupt_i_c_0));   // c:/lscc/ep16vhdl/ep16_chip.vhd(38[2:13])
    IB uart_i_pad (.I(uart_i), .O(uart_i_c));   // c:/lscc/ep16vhdl/ep16_chip.vhd(39[2:8])
    ORCALUT4 i3249_4_lut_then_4_lut (.A(baudrate_reg[0]), .B(n81), .C(rx_irq_o_N_643), 
            .D(n8660), .Z(n8699)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(39[3:11])
    defparam i3249_4_lut_then_4_lut.init = 16'hcac0;
    ORCALUT4 i3249_4_lut_else_4_lut (.A(baudrate_reg[1]), .B(rxd_ff), .Z(n8698)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(39[3:11])
    defparam i3249_4_lut_else_4_lut.init = 16'h2222;
    ORCALUT4 equal_762_i5_2_lut_rep_281 (.A(rp1[0]), .B(rp1[1]), .Z(n8661)) /* synthesis lut_function=((B)+!A) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[17:24])
    defparam equal_762_i5_2_lut_rep_281.init = 16'hdddd;
    L6MUX21 i7030 (.D0(n7690), .D1(n7691), .SD(sp[2]), .Z(n7694));
    FD1P3AX creset_728 (.D(n7570), .SP(aclk_c_enable_78), .CK(aclk_c), 
            .Q(n1356));   // c:/lscc/ep16vhdl/ep16.vhd(47[17:24])
    defparam creset_728.GSR = "ENABLED";
    L6MUX21 i7031 (.D0(n7692), .D1(n7693), .SD(sp[2]), .Z(n7695));
    L6MUX21 i7052 (.D0(n7712), .D1(n7713), .SD(rp1[2]), .Z(n7716));
    ORCALUT4 i7004_3_lut (.A(n1236), .B(n1241), .C(sp1[0]), .Z(n7668)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7004_3_lut.init = 16'hcaca;
    ORCALUT4 i6877_4_lut_4_lut (.A(rp1[0]), .B(rp1[1]), .C(n7105), .D(n1346), 
            .Z(n7541)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (D)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[17:24])
    defparam i6877_4_lut_4_lut.init = 16'hff20;
    ORCALUT4 i1_4_lut_adj_211 (.A(n7407), .B(n8602), .C(n7027), .D(n8616), 
            .Z(aclk_c_enable_123)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i1_4_lut_adj_211.init = 16'h0040;
    ORCALUT4 i8_3_lut (.A(i[0]), .B(n3_adj_914), .C(p_sel[1]), .Z(n4)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(55[9:14])
    defparam i8_3_lut.init = 16'hcaca;
    ORCALUT4 m1_lut (.Z(n9433)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    GSR GSR_INST (.GSR(arst_c));
    L6MUX21 i7053 (.D0(n7714), .D1(n7715), .SD(rp1[2]), .Z(n7717));
    ORCALUT4 equal_718_i5_2_lut_rep_283 (.A(rp1[0]), .B(rp1[1]), .Z(n8663)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[17:24])
    defparam equal_718_i5_2_lut_rep_283.init = 16'hbbbb;
    ORCALUT4 i6876_4_lut_4_lut (.A(rp1[0]), .B(rp1[1]), .C(n7105), .D(n1351), 
            .Z(n7540)) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B (D))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[17:24])
    defparam i6876_4_lut_4_lut.init = 16'hff40;
    ORCALUT4 Mux_707_i1_3_lut_rep_284 (.A(n1314), .B(n1317), .C(sp[4]), 
            .Z(n8664)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam Mux_707_i1_3_lut_rep_284.init = 16'hcaca;
    ORCALUT4 i709_2_lut_rep_260_4_lut (.A(n1314), .B(n1317), .C(sp[4]), 
            .D(n1305), .Z(n8640)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam i709_2_lut_rep_260_4_lut.init = 16'hca00;
    ORCALUT4 i3427_2_lut_rep_286 (.A(rp1[0]), .B(rp1[1]), .Z(n8666)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3427_2_lut_rep_286.init = 16'h8888;
    L6MUX21 i7067 (.D0(n7727), .D1(n7728), .SD(rp[2]), .Z(n7731));
    ORCALUT4 i7018_3_lut (.A(n1226), .B(n1231), .C(sp[0]), .Z(n7682)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7018_3_lut.init = 16'hcaca;
    ORCALUT4 i7019_3_lut (.A(n1236), .B(n1241), .C(sp[0]), .Z(n7683)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7019_3_lut.init = 16'hcaca;
    ORCALUT4 i7020_3_lut (.A(n1246), .B(n1251), .C(sp[0]), .Z(n7684)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7020_3_lut.init = 16'hcaca;
    ORCALUT4 i7021_3_lut (.A(n1256), .B(n1261), .C(sp[0]), .Z(n7685)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7021_3_lut.init = 16'hcaca;
    ORCALUT4 i7022_3_lut (.A(n1266), .B(n1271), .C(sp[0]), .Z(n7686)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7022_3_lut.init = 16'hcaca;
    ORCALUT4 i7023_3_lut (.A(n1276), .B(n1281), .C(sp[0]), .Z(n7687)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7023_3_lut.init = 16'hcaca;
    ORCALUT4 i7024_3_lut (.A(n1286), .B(n1291), .C(sp[0]), .Z(n7688)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7024_3_lut.init = 16'hcaca;
    ORCALUT4 equal_638_i5_2_lut_rep_287 (.A(sp1[0]), .B(sp1[1]), .Z(n8667)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam equal_638_i5_2_lut_rep_287.init = 16'hbbbb;
    ORCALUT4 i1187_4_lut (.A(system_data_o_15__N_16), .B(system_data_o_15__N_51), 
            .C(memory_data_i[11]), .D(system_write), .Z(system_data_o[11])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(198[2:15])
    defparam i1187_4_lut.init = 16'hc088;
    ORCALUT4 i7025_3_lut (.A(n1296), .B(n1301), .C(sp[0]), .Z(n7689)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7025_3_lut.init = 16'hcaca;
    L6MUX21 i7068 (.D0(n7729), .D1(n7730), .SD(rp[2]), .Z(n7732));
    L6MUX21 i7015 (.D0(n7675), .D1(n7676), .SD(sp1[2]), .Z(n7679));
    ORCALUT4 mux_470_i12_4_lut (.A(memory_data_o[11]), .B(n1095), .C(n8618), 
            .D(n6537), .Z(system_data_o_15__N_16)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(80[2] 95[9])
    defparam mux_470_i12_4_lut.init = 16'hcafa;
    L6MUX21 i7016 (.D0(n7677), .D1(n7678), .SD(sp1[2]), .Z(n7680));
    ORCALUT4 i6888_3_lut_3_lut (.A(sp1[0]), .B(sp1[1]), .C(n1296), .Z(n7552)) /* synthesis lut_function=(A (C)+!A (B+(C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam i6888_3_lut_3_lut.init = 16'hf4f4;
    ORCALUT4 i1_2_lut_rep_288 (.A(sp1[0]), .B(sp1[1]), .Z(n8668)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_288.init = 16'h8888;
    ORCALUT4 i6875_3_lut_3_lut (.A(sp1[0]), .B(sp1[1]), .C(n1301), .Z(n7539)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i6875_3_lut_3_lut.init = 16'hf8f8;
    ORCALUT4 i1_2_lut_rep_214_3_lut_4_lut (.A(sp1[0]), .B(sp1[1]), .C(arst_c), 
            .D(n8614), .Z(aclk_c_enable_18)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_214_3_lut_4_lut.init = 16'h8000;
    ORCALUT4 i1186_4_lut (.A(system_data_o_15__N_19), .B(system_data_o_15__N_51), 
            .C(memory_data_i[10]), .D(system_write), .Z(system_data_o[10])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(198[2:15])
    defparam i1186_4_lut.init = 16'hc088;
    PFUMX i7026 (.BLUT(n7682), .ALUT(n7683), .C0(sp[1]), .Z(n7690));
    ORCALUT4 mux_470_i11_4_lut (.A(memory_data_o[10]), .B(n1094), .C(n8618), 
            .D(n6537), .Z(system_data_o_15__N_19)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(80[2] 95[9])
    defparam mux_470_i11_4_lut.init = 16'hcafa;
    ORCALUT4 equal_678_i5_2_lut_rep_291 (.A(sp1[0]), .B(sp1[1]), .Z(n8671)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam equal_678_i5_2_lut_rep_291.init = 16'heeee;
    ORCALUT4 i6880_3_lut_3_lut (.A(sp1[0]), .B(sp1[1]), .C(n1286), .Z(n7544)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam i6880_3_lut_3_lut.init = 16'hf1f1;
    ORCALUT4 i872_3_lut_rep_219_4_lut (.A(sp1[0]), .B(sp1[1]), .C(n963), 
            .D(n6010), .Z(n8599)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam i872_3_lut_rep_219_4_lut.init = 16'hffe0;
    PFUMX i7027 (.BLUT(n7684), .ALUT(n7685), .C0(sp[1]), .Z(n7691));
    ORCALUT4 i1_4_lut_adj_212 (.A(n7043), .B(memory_addr[5]), .C(n8601), 
            .D(n6835), .Z(n6537)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_212.init = 16'h0100;
    ORCALUT4 i1_2_lut (.A(n18), .B(system_read), .Z(n6833)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    PFUMX i7028 (.BLUT(n7686), .ALUT(n7687), .C0(sp[1]), .Z(n7692));
    ORCALUT4 i7040_3_lut (.A(n1341), .B(n1346), .C(rp1[0]), .Z(n7704)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7040_3_lut.init = 16'hcaca;
    ORCALUT4 i1185_4_lut (.A(system_data_o_15__N_22), .B(system_data_o_15__N_51), 
            .C(memory_data_i[9]), .D(system_write), .Z(system_data_o[9])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(198[2:15])
    defparam i1185_4_lut.init = 16'hc088;
    ORCALUT4 i7041_3_lut (.A(n1351), .B(n1356), .C(rp1[0]), .Z(n7705)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7041_3_lut.init = 16'hcaca;
    ORCALUT4 i7042_3_lut (.A(n1361), .B(n1366), .C(rp1[0]), .Z(n7706)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7042_3_lut.init = 16'hcaca;
    ORCALUT4 i7043_3_lut (.A(n1371), .B(n1376), .C(rp1[0]), .Z(n7707)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7043_3_lut.init = 16'hcaca;
    ORCALUT4 equal_682_i5_2_lut_rep_293 (.A(sp1[0]), .B(sp1[1]), .Z(n8673)) /* synthesis lut_function=((B)+!A) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam equal_682_i5_2_lut_rep_293.init = 16'hdddd;
    ORCALUT4 mux_470_i10_4_lut (.A(memory_data_o[9]), .B(n1093), .C(n8618), 
            .D(n6537), .Z(system_data_o_15__N_22)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(80[2] 95[9])
    defparam mux_470_i10_4_lut.init = 16'hcafa;
    ORCALUT4 i1184_4_lut (.A(system_data_o_15__N_25), .B(system_data_o_15__N_51), 
            .C(memory_data_i[8]), .D(system_write), .Z(system_data_o[8])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(198[2:15])
    defparam i1184_4_lut.init = 16'hc088;
    ORCALUT4 mux_470_i9_4_lut (.A(memory_data_o[8]), .B(n8245), .C(n8618), 
            .D(n6537), .Z(system_data_o_15__N_25)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(80[2] 95[9])
    defparam mux_470_i9_4_lut.init = 16'hcafa;
    ORCALUT4 i1183_4_lut (.A(system_data_o_15__N_28), .B(system_data_o_15__N_51), 
            .C(memory_data_i[7]), .D(system_write), .Z(system_data_o[7])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(198[2:15])
    defparam i1183_4_lut.init = 16'hc088;
    ORCALUT4 mux_470_i8_4_lut (.A(memory_data_o[7]), .B(n1091), .C(n8618), 
            .D(n6537), .Z(system_data_o_15__N_28)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(80[2] 95[9])
    defparam mux_470_i8_4_lut.init = 16'hcafa;
    PFUMX i7029 (.BLUT(n7688), .ALUT(n7689), .C0(sp[1]), .Z(n7693));
    ORCALUT4 i1_2_lut_rep_215_3_lut_4_lut (.A(sp1[0]), .B(sp1[1]), .C(arst_c), 
            .D(n8614), .Z(aclk_c_enable_15)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam i1_2_lut_rep_215_3_lut_4_lut.init = 16'h2000;
    ORCALUT4 i6879_3_lut_3_lut (.A(sp1[0]), .B(sp1[1]), .C(n1291), .Z(n7543)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam i6879_3_lut_3_lut.init = 16'hf2f2;
    PFUMX i7048 (.BLUT(n7704), .ALUT(n7705), .C0(rp1[1]), .Z(n7712));
    ORCALUT4 equal_758_i5_2_lut_rep_295 (.A(rp1[0]), .B(rp1[1]), .Z(n8675)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[17:24])
    defparam equal_758_i5_2_lut_rep_295.init = 16'heeee;
    PFUMX i7049 (.BLUT(n7706), .ALUT(n7707), .C0(rp1[1]), .Z(n7713));
    ORCALUT4 i6878_4_lut_4_lut (.A(rp1[0]), .B(rp1[1]), .C(n7105), .D(n1341), 
            .Z(n7542)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C+(D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[17:24])
    defparam i6878_4_lut_4_lut.init = 16'hff10;
    PFUMX i7050 (.BLUT(n7708), .ALUT(n7709), .C0(rp1[1]), .Z(n7714));
    PFUMX i7051 (.BLUT(n7710), .ALUT(n7711), .C0(rp1[1]), .Z(n7715));
    PFUMX i7063 (.BLUT(n7719), .ALUT(n7720), .C0(rp[1]), .Z(n7727));
    PFUMX i7064 (.BLUT(n7721), .ALUT(n7722), .C0(rp[1]), .Z(n7728));
    PFUMX i7065 (.BLUT(n7723), .ALUT(n7724), .C0(rp[1]), .Z(n7729));
    PFUMX i7066 (.BLUT(n7725), .ALUT(n7726), .C0(rp[1]), .Z(n7730));
    PFUMX i6 (.BLUT(n1), .ALUT(n1_adj_912), .C0(slot[1]), .Z(n3));
    ORCALUT4 i7340_2_lut_rep_299 (.A(sp1[2]), .B(sp1[3]), .Z(aclk_c_enable_29)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam i7340_2_lut_rep_299.init = 16'h2222;
    ORCALUT4 i6890_3_lut_3_lut (.A(sp1[2]), .B(sp1[3]), .C(n1261), .Z(n7554)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam i6890_3_lut_3_lut.init = 16'hf2f2;
    ORCALUT4 i6887_3_lut_3_lut (.A(sp1[2]), .B(sp1[3]), .C(n1251), .Z(n7551)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam i6887_3_lut_3_lut.init = 16'hf2f2;
    ORCALUT4 i7044_3_lut (.A(n1381), .B(n1386), .C(rp1[0]), .Z(n7708)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7044_3_lut.init = 16'hcaca;
    ORCALUT4 i3522_2_lut_rep_239_3_lut (.A(n8664), .B(n1305), .C(n1328), 
            .Z(n8619)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam i3522_2_lut_rep_239_3_lut.init = 16'h8080;
    ORCALUT4 i3524_2_lut_rep_240_3_lut (.A(n8664), .B(n1305), .C(n1326), 
            .Z(n8620)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam i3524_2_lut_rep_240_3_lut.init = 16'h8080;
    ORCALUT4 i1_2_lut_rep_243_3_lut (.A(n8664), .B(n1305), .C(n1321), 
            .Z(n8623)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam i1_2_lut_rep_243_3_lut.init = 16'h8080;
    ORCALUT4 i1_2_lut_adj_213 (.A(p[10]), .B(p[8]), .Z(n6901)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_213.init = 16'h8888;
    ORCALUT4 i1_4_lut_adj_214 (.A(a[11]), .B(n6893), .C(n6891), .D(a[13]), 
            .Z(n6655)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_214.init = 16'h8000;
    ORCALUT4 i1181_4_lut (.A(system_data_o_15__N_34), .B(system_data_o_15__N_51), 
            .C(memory_data_i[5]), .D(system_write), .Z(system_data_o[5])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(198[2:15])
    defparam i1181_4_lut.init = 16'hc088;
    ORCALUT4 i1_3_lut (.A(a[12]), .B(a[9]), .C(a[14]), .Z(n6893)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut.init = 16'h8080;
    ORCALUT4 i18_4_lut (.A(memory_data_o[5]), .B(n6537), .C(n8618), .D(n28_adj_913), 
            .Z(system_data_o_15__N_34)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B (C (D))+!B (C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(37[3:9])
    defparam i18_4_lut.init = 16'hfa3a;
    ORCALUT4 i7045_3_lut (.A(n1391), .B(n1396), .C(rp1[0]), .Z(n7709)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7045_3_lut.init = 16'hcaca;
    ORCALUT4 i7046_3_lut (.A(n1401), .B(n1406), .C(rp1[0]), .Z(n7710)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7046_3_lut.init = 16'hcaca;
    ORCALUT4 i1180_4_lut (.A(system_data_o_15__N_37), .B(system_data_o_15__N_51), 
            .C(memory_data_i[4]), .D(system_write), .Z(system_data_o[4])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(198[2:15])
    defparam i1180_4_lut.init = 16'hc088;
    ORCALUT4 i1176_4_lut (.A(system_data_o_15__N_49), .B(system_data_o_15__N_51), 
            .C(memory_data_i[0]), .D(system_write), .Z(system_data_o[0])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(198[2:15])
    defparam i1176_4_lut.init = 16'hc088;
    ORCALUT4 mux_470_i1_4_lut (.A(memory_data_o[0]), .B(n1084), .C(n8618), 
            .D(n6537), .Z(system_data_o_15__N_49)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(80[2] 95[9])
    defparam mux_470_i1_4_lut.init = 16'hcafa;
    ORCALUT4 i18_4_lut_adj_215 (.A(memory_data_o[4]), .B(n6537), .C(n8618), 
            .D(n28_adj_918), .Z(system_data_o_15__N_37)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B (C (D))+!B (C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(37[3:9])
    defparam i18_4_lut_adj_215.init = 16'hfa3a;
    ORCALUT4 i7047_3_lut (.A(n1411), .B(n1416), .C(rp1[0]), .Z(n7711)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7047_3_lut.init = 16'hcaca;
    ORCALUT4 i7055_3_lut (.A(n1341), .B(n1346), .C(rp[0]), .Z(n7719)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7055_3_lut.init = 16'hcaca;
    ORCALUT4 mux_595_i15_3_lut (.A(gpio_out[14]), .B(baudrate_reg[14]), 
            .C(data_o_15__N_441), .Z(n1164)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(80[2] 95[9])
    defparam mux_595_i15_3_lut.init = 16'hcaca;
    ORCALUT4 i3521_2_lut_rep_244_3_lut (.A(n8664), .B(n1305), .C(n1329), 
            .Z(n8624)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam i3521_2_lut_rep_244_3_lut.init = 16'h8080;
    ORCALUT4 i3520_2_lut_rep_245_3_lut (.A(n8664), .B(n1305), .C(n1330), 
            .Z(n8625)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam i3520_2_lut_rep_245_3_lut.init = 16'h8080;
    PFUMX i3148 (.BLUT(n5), .ALUT(n6), .C0(n7595), .Z(p_in[5]));
    ORCALUT4 i3518_2_lut_rep_247_3_lut (.A(n8664), .B(n1305), .C(n1332), 
            .Z(n8627)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam i3518_2_lut_rep_247_3_lut.init = 16'h8080;
    ORCALUT4 i1_3_lut_adj_216 (.A(n8618), .B(n1996), .C(system_write), 
            .Z(system_data_o_15__N_51)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(198[20] 205[23])
    defparam i1_3_lut_adj_216.init = 16'hfdfd;
    ORCALUT4 i3515_2_lut_rep_251_3_lut (.A(n8664), .B(n1305), .C(n1335), 
            .Z(n8631)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam i3515_2_lut_rep_251_3_lut.init = 16'h8080;
    ORCALUT4 i7056_3_lut (.A(n1351), .B(n1356), .C(rp[0]), .Z(n7720)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7056_3_lut.init = 16'hcaca;
    ORCALUT4 i7057_3_lut (.A(n1361), .B(n1366), .C(rp[0]), .Z(n7721)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7057_3_lut.init = 16'hcaca;
    ORCALUT4 i3526_2_lut_rep_254_3_lut (.A(n8664), .B(n1305), .C(n1324), 
            .Z(n8634)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam i3526_2_lut_rep_254_3_lut.init = 16'h8080;
    ORCALUT4 i7058_3_lut (.A(n1371), .B(n1376), .C(rp[0]), .Z(n7722)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7058_3_lut.init = 16'hcaca;
    ORCALUT4 i7005_3_lut (.A(n1246), .B(n1251), .C(sp1[0]), .Z(n7669)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7005_3_lut.init = 16'hcaca;
    ORCALUT4 i7006_3_lut (.A(n1256), .B(n1261), .C(sp1[0]), .Z(n7670)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7006_3_lut.init = 16'hcaca;
    ORCALUT4 i1179_4_lut (.A(system_data_o_15__N_40), .B(system_data_o_15__N_51), 
            .C(memory_data_i[3]), .D(system_write), .Z(system_data_o[3])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(198[2:15])
    defparam i1179_4_lut.init = 16'hc088;
    ORCALUT4 mux_595_i14_3_lut (.A(gpio_out[13]), .B(baudrate_reg[13]), 
            .C(data_o_15__N_441), .Z(n1165)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(80[2] 95[9])
    defparam mux_595_i14_3_lut.init = 16'hcaca;
    ORCALUT4 i18_4_lut_adj_217 (.A(memory_data_o[3]), .B(n6537), .C(n8618), 
            .D(n28_adj_922), .Z(system_data_o_15__N_40)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B (C (D))+!B (C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(37[3:9])
    defparam i18_4_lut_adj_217.init = 16'hfa3a;
    ORCALUT4 i7059_3_lut (.A(n1381), .B(n1386), .C(rp[0]), .Z(n7723)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7059_3_lut.init = 16'hcaca;
    ORCALUT4 i7007_3_lut (.A(n1266), .B(n1271), .C(sp1[0]), .Z(n7671)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7007_3_lut.init = 16'hcaca;
    ORCALUT4 i1178_4_lut (.A(system_data_o_15__N_43), .B(system_data_o_15__N_51), 
            .C(memory_data_i[2]), .D(system_write), .Z(system_data_o[2])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(198[2:15])
    defparam i1178_4_lut.init = 16'hc088;
    ORCALUT4 i18_4_lut_adj_218 (.A(memory_data_o[2]), .B(n6537), .C(n8618), 
            .D(n28_adj_926), .Z(system_data_o_15__N_43)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B (C (D))+!B (C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(37[3:9])
    defparam i18_4_lut_adj_218.init = 16'hfa3a;
    ORCALUT4 i7060_3_lut (.A(n1391), .B(n1396), .C(rp[0]), .Z(n7724)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7060_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_adj_219 (.A(a[10]), .B(a[8]), .Z(n6891)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_219.init = 16'h8888;
    ORCALUT4 i3517_2_lut_rep_248_3_lut (.A(n8664), .B(n1305), .C(n1333), 
            .Z(n8628)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam i3517_2_lut_rep_248_3_lut.init = 16'h8080;
    ORCALUT4 i7061_3_lut (.A(n1401), .B(n1406), .C(rp[0]), .Z(n7725)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7061_3_lut.init = 16'hcaca;
    ORCALUT4 i1177_4_lut (.A(system_data_o_15__N_46), .B(system_data_o_15__N_51), 
            .C(memory_data_i[1]), .D(system_write), .Z(system_data_o[1])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(198[2:15])
    defparam i1177_4_lut.init = 16'hc088;
    ORCALUT4 i7008_3_lut (.A(n1276), .B(n1281), .C(sp1[0]), .Z(n7672)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7008_3_lut.init = 16'hcaca;
    ORCALUT4 i7062_3_lut (.A(n1411), .B(n1416), .C(rp[0]), .Z(n7726)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7062_3_lut.init = 16'hcaca;
    ORCALUT4 i1_3_lut_adj_220 (.A(n7411), .B(memory_addr[4]), .C(n7025), 
            .Z(n1996)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_3_lut_adj_220.init = 16'h1010;
    ORCALUT4 i7009_3_lut (.A(n1286), .B(n1291), .C(sp1[0]), .Z(n7673)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7009_3_lut.init = 16'hcaca;
    ORCALUT4 i5_3_lut (.A(i[5]), .B(i[0]), .C(slot[0]), .Z(n1_adj_912)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(48[9:13])
    defparam i5_3_lut.init = 16'hcaca;
    ORCALUT4 i18_4_lut_adj_221 (.A(memory_data_o[1]), .B(n6537), .C(n8618), 
            .D(n28), .Z(system_data_o_15__N_46)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B (C (D))+!B (C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(37[3:9])
    defparam i18_4_lut_adj_221.init = 16'hfa3a;
    ORCALUT4 i7010_3_lut (.A(n1296), .B(n1301), .C(sp1[0]), .Z(n7674)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7010_3_lut.init = 16'hcaca;
    ORCALUT4 i7332_2_lut (.A(sp1[2]), .B(sp1[3]), .Z(aclk_c_enable_21)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam i7332_2_lut.init = 16'h1111;
    PFUMX i7672 (.BLUT(n8698), .ALUT(n8699), .C0(rx_en), .Z(rx_counter_15__N_609[0]));
    ORCALUT4 i3519_2_lut_rep_246_3_lut (.A(n8664), .B(n1305), .C(n1331), 
            .Z(n8626)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam i3519_2_lut_rep_246_3_lut.init = 16'h8080;
    ORCALUT4 i7342_2_lut (.A(sp1[2]), .B(sp1[3]), .Z(aclk_c_enable_37)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam i7342_2_lut.init = 16'h4444;
    ORCALUT4 i7218_3_lut (.A(n30_adj_919), .B(ioport_out_3), .C(memory_addr[1]), 
            .Z(n19_adj_920)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(37[3:9])
    defparam i7218_3_lut.init = 16'hcaca;
    ORCALUT4 i29_3_lut_adj_222 (.A(gpio_out[3]), .B(gpio_dir[3]), .C(n8622), 
            .Z(n30_adj_919)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(124[9:20])
    defparam i29_3_lut_adj_222.init = 16'hcaca;
    ORCALUT4 i15_4_lut_adj_223 (.A(memory_addr[1]), .B(rx_buffer_reg[3]), 
            .C(n8622), .D(baudrate_reg[3]), .Z(n26_adj_921)) /* synthesis lut_function=(A (B (C))+!A !(C+!(D))) */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(124[9:20])
    defparam i15_4_lut_adj_223.init = 16'h8580;
    ORCALUT4 i7216_3_lut (.A(n30_adj_915), .B(ioport_out_4), .C(memory_addr[1]), 
            .Z(n19_adj_916)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(37[3:9])
    defparam i7216_3_lut.init = 16'hcaca;
    ORCALUT4 i29_3_lut_adj_224 (.A(gpio_out[4]), .B(gpio_dir[4]), .C(n8622), 
            .Z(n30_adj_915)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(124[9:20])
    defparam i29_3_lut_adj_224.init = 16'hcaca;
    ORCALUT4 i789_4_lut (.A(n1429), .B(n7733), .C(n1432), .D(rp[4]), 
            .Z(n1435)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[17:24])
    defparam i789_4_lut.init = 16'hc088;
    ORCALUT4 i1_3_lut_adj_225 (.A(p[12]), .B(p[9]), .C(p[14]), .Z(n6903)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut_adj_225.init = 16'h8080;
    ORCALUT4 i15_4_lut_adj_226 (.A(memory_addr[1]), .B(rx_buffer_reg[4]), 
            .C(n8622), .D(baudrate_reg[4]), .Z(n26_adj_917)) /* synthesis lut_function=(A (B (C))+!A !(C+!(D))) */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(124[9:20])
    defparam i15_4_lut_adj_226.init = 16'h8580;
    ORCALUT4 i1_4_lut_adj_227 (.A(n8621), .B(n8615), .C(n7001), .D(n8618), 
            .Z(n7011)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_4_lut_adj_227.init = 16'h1000;
    ORCALUT4 i1_2_lut_3_lut (.A(system_write), .B(n8621), .C(n7025), .Z(n7027)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h8080;
    ORCALUT4 i1_4_lut_adj_228 (.A(p[11]), .B(n6903), .C(n6901), .D(p[13]), 
            .Z(n6766)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_228.init = 16'h8000;
    ORCALUT4 i1_2_lut_adj_229 (.A(n18), .B(system_write), .Z(n7001)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_229.init = 16'h8888;
    ORCALUT4 i10_4_lut (.A(i[5]), .B(n8596), .C(n8653), .D(p_in_15__N_282[5]), 
            .Z(n6)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(55[9:14])
    defparam i10_4_lut.init = 16'hca0a;
    ORCALUT4 i1160_1_lut (.A(gpio_dir[15]), .Z(n1853)) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(44[2:8])
    defparam i1160_1_lut.init = 16'h5555;
    ORCALUT4 i7032_3_lut (.A(n7694), .B(n7695), .C(sp[3]), .Z(n1305)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i7032_3_lut.init = 16'hcaca;
    ORCALUT4 i7220_3_lut (.A(n30_adj_923), .B(ioport_out_2), .C(memory_addr[1]), 
            .Z(n19_adj_924)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(37[3:9])
    defparam i7220_3_lut.init = 16'hcaca;
    ORCALUT4 i29_3_lut_adj_230 (.A(gpio_out[2]), .B(gpio_dir[2]), .C(n8622), 
            .Z(n30_adj_923)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(124[9:20])
    defparam i29_3_lut_adj_230.init = 16'hcaca;
    ORCALUT4 i15_4_lut_adj_231 (.A(memory_addr[1]), .B(rx_buffer_reg[2]), 
            .C(n8622), .D(baudrate_reg[2]), .Z(n26_adj_925)) /* synthesis lut_function=(A (B (C))+!A !(C+!(D))) */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(124[9:20])
    defparam i15_4_lut_adj_231.init = 16'h8580;
    ORCALUT4 i7222_3_lut (.A(n30_adj_927), .B(ioport_out_1), .C(memory_addr[1]), 
            .Z(n19)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(37[3:9])
    defparam i7222_3_lut.init = 16'hcaca;
    ORCALUT4 i29_3_lut_adj_232 (.A(gpio_out[1]), .B(gpio_dir[1]), .C(n8622), 
            .Z(n30_adj_927)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(124[9:20])
    defparam i29_3_lut_adj_232.init = 16'hcaca;
    ORCALUT4 i15_4_lut_adj_233 (.A(memory_addr[1]), .B(rx_buffer_reg[1]), 
            .C(n8622), .D(baudrate_reg[1]), .Z(n26)) /* synthesis lut_function=(A (B (C))+!A !(C+!(D))) */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(124[9:20])
    defparam i15_4_lut_adj_233.init = 16'h8580;
    ORCALUT4 mux_595_i12_3_lut (.A(gpio_out[11]), .B(baudrate_reg[11]), 
            .C(data_o_15__N_441), .Z(n1167)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(80[2] 95[9])
    defparam mux_595_i12_3_lut.init = 16'hcaca;
    PFUMX i7011 (.BLUT(n7667), .ALUT(n7668), .C0(sp1[1]), .Z(n7675));
    ORCALUT4 mux_595_i11_3_lut (.A(gpio_out[10]), .B(baudrate_reg[10]), 
            .C(data_o_15__N_441), .Z(n1168)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(80[2] 95[9])
    defparam mux_595_i11_3_lut.init = 16'hcaca;
    ORCALUT4 i1182_4_lut (.A(system_data_o_15__N_31), .B(system_data_o_15__N_51), 
            .C(memory_data_i[6]), .D(system_write), .Z(system_data_o[6])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(198[2:15])
    defparam i1182_4_lut.init = 16'hc088;
    ORCALUT4 i18_4_lut_adj_234 (.A(memory_data_o[6]), .B(n6537), .C(n8618), 
            .D(n28_adj_908), .Z(system_data_o_15__N_31)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B (C (D))+!B (C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(37[3:9])
    defparam i18_4_lut_adj_234.init = 16'hfa3a;
    PFUMX i7702 (.BLUT(n8743), .ALUT(n8744), .C0(rx_en), .Z(rx_counter_15__N_609[1]));
    PFUMX i7700 (.BLUT(n8740), .ALUT(n8741), .C0(rx_en), .Z(rx_counter_15__N_609[2]));
    PFUMX i3143 (.BLUT(n4), .ALUT(n3860), .C0(n8653), .Z(p_in[0]));
    ORCALUT4 i9_3_lut_4_lut (.A(p_in_15__N_282[5]), .B(r[5]), .C(n7), 
            .D(n6376), .Z(n5)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(55[9:14])
    defparam i9_3_lut_4_lut.init = 16'hcaaa;
    PFUMX i7698 (.BLUT(n8737), .ALUT(n8738), .C0(rx_en), .Z(rx_counter_15__N_609[3]));
    ORCALUT4 mux_595_i10_3_lut (.A(gpio_out[9]), .B(baudrate_reg[9]), .C(data_o_15__N_441), 
            .Z(n1169)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(80[2] 95[9])
    defparam mux_595_i10_3_lut.init = 16'hcaca;
    PFUMX i7696 (.BLUT(n8734), .ALUT(n8735), .C0(rx_en), .Z(rx_counter_15__N_609[4]));
    PFUMX i7012 (.BLUT(n7669), .ALUT(n7670), .C0(sp1[1]), .Z(n7676));
    PFUMX i7694 (.BLUT(n8731), .ALUT(n8732), .C0(rx_en), .Z(rx_counter_15__N_609[5]));
    PFUMX i7013 (.BLUT(n7671), .ALUT(n7672), .C0(sp1[1]), .Z(n7677));
    ORCALUT4 i7_3_lut_4_lut (.A(p_in_15__N_282[0]), .B(r[0]), .C(n7), 
            .D(n6376), .Z(n3_adj_914)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(55[9:14])
    defparam i7_3_lut_4_lut.init = 16'hcaaa;
    ORCALUT4 mux_595_i8_3_lut (.A(gpio_out[7]), .B(baudrate_reg[7]), .C(data_o_15__N_441), 
            .Z(n1171)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(80[2] 95[9])
    defparam mux_595_i8_3_lut.init = 16'hcaca;
    ORCALUT4 i3527_2_lut_rep_253_3_lut (.A(n8664), .B(n1305), .C(n1323), 
            .Z(n8633)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam i3527_2_lut_rep_253_3_lut.init = 16'h8080;
    ORCALUT4 mux_595_i13_3_lut (.A(gpio_out[12]), .B(baudrate_reg[12]), 
            .C(data_o_15__N_441), .Z(n1166)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(80[2] 95[9])
    defparam mux_595_i13_3_lut.init = 16'hcaca;
    VLO i1 (.Z(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    ORCALUT4 i3415_2_lut_rep_252_3_lut (.A(n8664), .B(n1305), .C(n1322), 
            .Z(n8632)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam i3415_2_lut_rep_252_3_lut.init = 16'h8080;
    uart uart1 (.n18(n18), .\memory_addr[1] (memory_addr[1]), .n8618(n8618), 
         .system_write(system_write), .n8601(n8601), .n8607(n8607), .baudrate_reg({baudrate_reg}), 
         .rx_irq_o_N_643(rx_irq_o_N_643), .n8660(n8660), .aclk_c(aclk_c), 
         .rxd_ff(rxd_ff), .\tx_counter[5] (tx_counter[5]), .GND_net(GND_net), 
         .VCC_net(VCC_net), .\tx_counter[6] (tx_counter[6]), .n87({Open_0, 
         Open_1, Open_2, Open_3, Open_4, Open_5, Open_6, Open_7, 
         Open_8, n63, n66, n69, n72, n75, n78, Open_9}), .rx_en(rx_en), 
         .tx_en(tx_en), .\tx_counter[3] (tx_counter[3]), .\tx_counter[4] (tx_counter[4]), 
         .\tx_counter[1] (tx_counter[1]), .\tx_counter[2] (tx_counter[2]), 
         .\rx_counter_15__N_609[0] (rx_counter_15__N_609[0]), .rxb_full(rxb_full), 
         .system_data_o({system_data_o}), .uart_i_c(uart_i_c), .rx_buffer_reg({rx_buffer_reg}), 
         .tx_en_N_533(tx_en_N_533), .n66_adj_1(n66_adj_901), .n7403(n7403), 
         .n7011(n7011), .n72_adj_2(n72_adj_903), .n69_adj_3(n69_adj_902), 
         .n78_adj_4(n78_adj_905), .n75_adj_5(n75_adj_904), .n81(n81), 
         .n780(n780), .n8651(n8651), .hw_xonoff_ff(hw_xonoff_ff), .n7405(n7405), 
         .n8621(n8621), .n8617(n8617), .n6833(n6833), .n8622(n8622), 
         .n9433(n9433), .n3964(n3964), .n7043(n7043), .\memory_addr[5] (memory_addr[5]), 
         .n3994(n3994), .n4024(n4024), .n4054(n4054), .n4084(n4084), 
         .n4114(n4114), .uart_o_c(uart_o_c), .\rx_counter_15__N_609[1] (rx_counter_15__N_609[1]), 
         .\rx_counter_15__N_609[2] (rx_counter_15__N_609[2]), .\rx_counter_15__N_609[3] (rx_counter_15__N_609[3]), 
         .\rx_counter_15__N_609[4] (rx_counter_15__N_609[4]), .\rx_counter_15__N_609[5] (rx_counter_15__N_609[5]), 
         .\memory_addr[4] (memory_addr[4]), .n8606(n8606), .n7401(n7401), 
         .n8602(n8602), .n8616(n8616), .n1996(n1996), .system_read(system_read), 
         .\gpio_dir[0] (gpio_dir[0]), .n1162(n1162), .n8592(n8592));   // c:/lscc/ep16vhdl/ep16_chip.vhd(208[11:15])
    PFUMX i7014 (.BLUT(n7673), .ALUT(n7674), .C0(sp1[1]), .Z(n7678));
    ram_memory ram_memory_0 (.aclk_N_55(aclk_N_55), .VCC_net(VCC_net), .GND_net(GND_net), 
            .system_write(system_write), .\memory_addr[11] (memory_addr[11]), 
            .\memory_addr[10] (memory_addr[10]), .\memory_addr[9] (memory_addr[9]), 
            .\memory_addr[8] (memory_addr[8]), .n8616(n8616), .n8615(n8615), 
            .\memory_addr[5] (memory_addr[5]), .\memory_addr[4] (memory_addr[4]), 
            .n8617(n8617), .n8621(n8621), .\memory_addr[1] (memory_addr[1]), 
            .n8622(n8622), .memory_data_i({memory_data_i}), .memory_data_o({memory_data_o}));   // c:/lscc/ep16vhdl/ep16_chip.vhd(237[16:26])
    \ep16(16)  cpu1 (.system_data_o({system_data_o}), .memory_data_i({memory_data_i}), 
            .n1476(n1476), .n1493(n1493), .sp({sp}), .n1335(n1335), 
            .p({Open_10, Open_11, Open_12, Open_13, Open_14, p[10:8], 
            Open_15, Open_16, Open_17, Open_18, Open_19, Open_20, 
            Open_21, Open_22}), .aclk_c(aclk_c), .n3(n3), .n1328(n1328), 
            .n8640(n8640), .sp1({sp1}), .\p_in[5] (p_in[5]), .rp({rp}), 
            .\p_sel[1] (p_sel[1]), .interrupt_i_c_1(interrupt_i_c_1), .\p_in_15__N_282[0] (p_in_15__N_282[0]), 
            .interrupt_i_c_0(interrupt_i_c_0), .n3860(n3860), .n8653(n8653), 
            .n1326(n1326), .n8637(n8637), .system_write(system_write), 
            .n8603(n8603), .rp1({rp1}), .arst_c(arst_c), .n1537(n1537), 
            .n1305(n1305), .n8664(n8664), .n1322(n1322), .n1323(n1323), 
            .\a[10] (a[10]), .r({r}), .\p_in[0] (p_in[0]), .\i[0] (i[0]), 
            .\a[14] (a[14]), .\a[13] (a[13]), .\a[12] (a[12]), .\a[11] (a[11]), 
            .\slot[0] (slot[0]), .n8666(n8666), .GND_net(GND_net), .VCC_net(VCC_net), 
            .n1321(n1321), .aclk_c_enable_78(aclk_c_enable_78), .\p[13] (p[13]), 
            .\p[14] (p[14]), .tx_en(tx_en), .n8606(n8606), .\p[11] (p[11]), 
            .\p[12] (p[12]), .n1435(n1435), .n1502(n1502), .n1519(n1519), 
            .\i[5] (i[5]), .n1516(n1516), .n1533(n1533), .n1536(n1536), 
            .n8614(n8614), .\memory_addr[1] (memory_addr[1]), .n8602(n8602), 
            .n7611(n7611), .\a[9] (a[9]), .n8675(n8675), .\p_in_15__N_282[5] (p_in_15__N_282[5]), 
            .n6376(n6376), .n1419(n1419), .n1424(n1424), .n7595(n7595), 
            .\a[8] (a[8]), .\slot[1] (slot[1]), .n7161(n7161), .n1336(n1336), 
            .n1334(n1334), .\t[16] (t[16]), .n1467(n1467), .n1484(n1484), 
            .n7(n7), .n8623(n8623), .n1329(n1329), .n1469(n1469), .n1486(n1486), 
            .n1330(n1330), .n8596(n8596), .n1325(n1325), .n1327(n1327), 
            .n1462(n1462), .n1479(n1479), .n1331(n1331), .n1332(n1332), 
            .\memory_addr[5] (memory_addr[5]), .n8607(n8607), .n8616(n8616), 
            .n7043(n7043), .n1333(n1333), .n1478(n1478), .n1495(n1495), 
            .n963(n963), .n8663(n8663), .n1371(n1371), .n7549(n7549), 
            .n1361(n1361), .n7565(n7565), .\memory_addr[4] (memory_addr[4]), 
            .n8608(n8608), .n8601(n8601), .n8604(n8604), .n8661(n8661), 
            .n1366(n1366), .n7564(n7564), .n1411(n1411), .n7550(n7550), 
            .n1401(n1401), .n7562(n7562), .n1416(n1416), .n7548(n7548), 
            .n1406(n1406), .n7556(n7556), .n1376(n1376), .n7569(n7569), 
            .n1381(n1381), .n7568(n7568), .n8628(n8628), .n1324(n1324), 
            .n6833(n6833), .n6835(n6835), .n18(n18), .n7025(n7025), 
            .n1391(n1391), .n7566(n7566), .n1386(n1386), .n7567(n7567), 
            .n1396(n1396), .n7563(n7563), .acknowledge_o_c(acknowledge_o_c), 
            .n6010(n6010), .n8671(n8671), .n8630(n8630), .n8627(n8627), 
            .n8626(n8626), .n8618(n8618), .n8615(n8615), .system_read(system_read), 
            .n8625(n8625), .interrupt_i_c_3(interrupt_i_c_3), .n8674(n8674), 
            .n1497(n1497), .interrupt_i_c_2(interrupt_i_c_2), .interrupt_i_c_4(interrupt_i_c_4), 
            .n8624(n8624), .n8617(n8617), .n8613(n8613), .n8619(n8619), 
            .n1(n1), .n1427(n1427), .n1501(n1501), .n1518(n1518), .n8620(n8620), 
            .n8612(n8612), .n1514(n1514), .n1531(n1531), .n1517(n1517), 
            .n1534(n1534), .n1468(n1468), .n1485(n1485), .n8634(n8634), 
            .n1513(n1513), .n1530(n1530), .n1500(n1500), .n1512(n1512), 
            .n1529(n1529), .n8633(n8633), .n1511(n1511), .n1528(n1528), 
            .\memory_addr[11] (memory_addr[11]), .\memory_addr[10] (memory_addr[10]), 
            .n8599(n8599), .n1466(n1466), .n1483(n1483), .n8668(n8668), 
            .n1510(n1510), .n1527(n1527), .n8632(n8632), .\memory_addr[9] (memory_addr[9]), 
            .\memory_addr[8] (memory_addr[8]), .n8621(n8621), .n1463(n1463), 
            .n1480(n1480), .n1464(n1464), .n1481(n1481), .n1509(n1509), 
            .n1526(n1526), .n1473(n1473), .n1490(n1490), .n1474(n1474), 
            .n1491(n1491), .n1471(n1471), .n1488(n1488), .n1472(n1472), 
            .n1489(n1489), .n1508(n1508), .n1525(n1525), .n1507(n1507), 
            .n1524(n1524), .n8631(n8631), .n8622(n8622), .n1506(n1506), 
            .n1523(n1523), .n1515(n1515), .n1532(n1532), .n8629(n8629), 
            .n7105(n7105), .n1505(n1505), .n1522(n1522), .n1504(n1504), 
            .n1521(n1521), .n1465(n1465), .n1482(n1482), .aclk_c_enable_16(aclk_c_enable_16), 
            .n1498(n1498), .n1226(n1226), .n7557(n7557), .n1246(n1246), 
            .n7558(n7558), .n1477(n1477), .n1494(n1494), .n1256(n1256), 
            .n8667(n8667), .n7559(n7559), .n1304(n1304), .n1309(n1309), 
            .n1503(n1503), .n1520(n1520), .n1470(n1470), .n1487(n1487), 
            .n1312(n1312), .n1266(n1266), .n7561(n7561), .n1271(n1271), 
            .n8673(n8673), .n7560(n7560), .n1231(n1231), .n7545(n7545), 
            .n1281(n1281), .n7546(n7546), .n1276(n1276), .n7555(n7555), 
            .n1236(n1236), .n7547(n7547), .n1241(n1241), .n7553(n7553), 
            .n1475(n1475), .n1492(n1492));   // c:/lscc/ep16vhdl/ep16_chip.vhd(170[8:12])
    PFUMX i17_adj_235 (.BLUT(n19_adj_920), .ALUT(n26_adj_921), .C0(data_o_15__N_441), 
          .Z(n28_adj_922));
    PFUMX i17_adj_236 (.BLUT(n19_adj_916), .ALUT(n26_adj_917), .C0(data_o_15__N_441), 
          .Z(n28_adj_918));
    
endmodule
//
// Verilog Description of module gpio
//

module gpio (\memory_addr[1] , tx_en, hw_xonoff_ff, n8616, \memory_addr[4] , 
            n8617, \memory_addr[5] , n7401, n8615, n7405, n8622, 
            gpio_out, gpio_dir, \baudrate_reg[8] , rxb_full, ioport_out_8, 
            aclk_c, aclk_c_enable_123, system_data_o, data_o_15__N_441, 
            n8245, n8603, n8602, n8618, n18, n8604, n8608, ioport_out_13, 
            n8592, n1084, ioport_out_15, ioport_out_14, \rx_buffer_reg[0] , 
            n1163, n7611, n1099, n1164, n1098, n1165, n1097, n1166, 
            n1096, n1167, n1095, n1168, n1094, n1169, n1093, n1091, 
            n1178, n1162, ioport_out_12, n7407, ioport_out_11, ioport_out_10, 
            ioport_out_9, n1171, ioport_out_7, \rx_buffer_reg[7] , ioport_out_0);
    input \memory_addr[1] ;
    input tx_en;
    input hw_xonoff_ff;
    input n8616;
    input \memory_addr[4] ;
    input n8617;
    input \memory_addr[5] ;
    output n7401;
    input n8615;
    output n7405;
    input n8622;
    output [15:0]gpio_out;
    output [15:0]gpio_dir;
    input \baudrate_reg[8] ;
    input rxb_full;
    input ioport_out_8;
    input aclk_c;
    input aclk_c_enable_123;
    input [15:0]system_data_o;
    input data_o_15__N_441;
    output n8245;
    input n8603;
    input n8602;
    input n8618;
    input n18;
    input n8604;
    input n8608;
    input ioport_out_13;
    input n8592;
    output n1084;
    input ioport_out_15;
    input ioport_out_14;
    input \rx_buffer_reg[0] ;
    input n1163;
    input n7611;
    output n1099;
    input n1164;
    output n1098;
    input n1165;
    output n1097;
    input n1166;
    output n1096;
    input n1167;
    output n1095;
    input n1168;
    output n1094;
    input n1169;
    output n1093;
    output n1091;
    input n1178;
    input n1162;
    input ioport_out_12;
    output n7407;
    input ioport_out_11;
    input ioport_out_10;
    input ioport_out_9;
    input n1171;
    input ioport_out_7;
    input \rx_buffer_reg[7] ;
    input ioport_out_0;
    
    wire aclk_c /* synthesis SET_AS_NETWORK=aclk_c, is_clock=1 */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(36[2:6])
    
    wire n8240, n8243, n8241, n8244, aclk_c_enable_138, n8242, n6969, 
        n1, n1_adj_893, n2194, n1_adj_894, n1_adj_895, n2193, n1_adj_896, 
        n1_adj_897, n1_adj_898, n1_adj_899, n1_adj_900, n2378;
    
    ORCALUT4 memory_addr_0__bdd_3_lut_7482 (.A(\memory_addr[1] ), .B(tx_en), 
            .C(hw_xonoff_ff), .Z(n8240)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam memory_addr_0__bdd_3_lut_7482.init = 16'h0101;
    ORCALUT4 i6737_2_lut_3_lut_4_lut (.A(n8616), .B(\memory_addr[4] ), .C(n8617), 
            .D(\memory_addr[5] ), .Z(n7401)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6737_2_lut_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 i6741_2_lut_3_lut_4_lut (.A(n8616), .B(\memory_addr[4] ), .C(n8615), 
            .D(\memory_addr[5] ), .Z(n7405)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6741_2_lut_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 memory_addr_0__bdd_3_lut_7516 (.A(n8622), .B(gpio_out[8]), 
            .C(gpio_dir[8]), .Z(n8243)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam memory_addr_0__bdd_3_lut_7516.init = 16'he4e4;
    ORCALUT4 memory_addr_0__bdd_3_lut_7485 (.A(\memory_addr[1] ), .B(\baudrate_reg[8] ), 
            .C(rxb_full), .Z(n8241)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam memory_addr_0__bdd_3_lut_7485.init = 16'he4e4;
    ORCALUT4 n8243_bdd_3_lut (.A(n8243), .B(ioport_out_8), .C(\memory_addr[1] ), 
            .Z(n8244)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n8243_bdd_3_lut.init = 16'hcaca;
    FD1P3AX gpio_dir_reg_i0_i0 (.D(system_data_o[0]), .SP(aclk_c_enable_123), 
            .CK(aclk_c), .Q(gpio_dir[0])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=252, LSE_RLINE=252 */ ;   // c:/lscc/ep16vhdl/gpio16.vhd(73[2] 83[9])
    defparam gpio_dir_reg_i0_i0.GSR = "ENABLED";
    FD1P3AX gpio_reg_i0_i0 (.D(system_data_o[0]), .SP(aclk_c_enable_138), 
            .CK(aclk_c), .Q(gpio_out[0])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=252, LSE_RLINE=252 */ ;   // c:/lscc/ep16vhdl/gpio16.vhd(73[2] 83[9])
    defparam gpio_reg_i0_i0.GSR = "ENABLED";
    ORCALUT4 n8244_bdd_3_lut (.A(n8244), .B(n8242), .C(data_o_15__N_441), 
            .Z(n8245)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n8244_bdd_3_lut.init = 16'hcaca;
    FD1P3AX gpio_dir_reg_i0_i1 (.D(system_data_o[1]), .SP(aclk_c_enable_123), 
            .CK(aclk_c), .Q(gpio_dir[1])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=252, LSE_RLINE=252 */ ;   // c:/lscc/ep16vhdl/gpio16.vhd(73[2] 83[9])
    defparam gpio_dir_reg_i0_i1.GSR = "ENABLED";
    FD1P3AX gpio_dir_reg_i0_i2 (.D(system_data_o[2]), .SP(aclk_c_enable_123), 
            .CK(aclk_c), .Q(gpio_dir[2])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=252, LSE_RLINE=252 */ ;   // c:/lscc/ep16vhdl/gpio16.vhd(73[2] 83[9])
    defparam gpio_dir_reg_i0_i2.GSR = "ENABLED";
    FD1P3AX gpio_dir_reg_i0_i3 (.D(system_data_o[3]), .SP(aclk_c_enable_123), 
            .CK(aclk_c), .Q(gpio_dir[3])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=252, LSE_RLINE=252 */ ;   // c:/lscc/ep16vhdl/gpio16.vhd(73[2] 83[9])
    defparam gpio_dir_reg_i0_i3.GSR = "ENABLED";
    FD1P3AX gpio_dir_reg_i0_i4 (.D(system_data_o[4]), .SP(aclk_c_enable_123), 
            .CK(aclk_c), .Q(gpio_dir[4])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=252, LSE_RLINE=252 */ ;   // c:/lscc/ep16vhdl/gpio16.vhd(73[2] 83[9])
    defparam gpio_dir_reg_i0_i4.GSR = "ENABLED";
    FD1P3AX gpio_dir_reg_i0_i5 (.D(system_data_o[5]), .SP(aclk_c_enable_123), 
            .CK(aclk_c), .Q(gpio_dir[5])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=252, LSE_RLINE=252 */ ;   // c:/lscc/ep16vhdl/gpio16.vhd(73[2] 83[9])
    defparam gpio_dir_reg_i0_i5.GSR = "ENABLED";
    FD1P3AX gpio_dir_reg_i0_i6 (.D(system_data_o[6]), .SP(aclk_c_enable_123), 
            .CK(aclk_c), .Q(gpio_dir[6])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=252, LSE_RLINE=252 */ ;   // c:/lscc/ep16vhdl/gpio16.vhd(73[2] 83[9])
    defparam gpio_dir_reg_i0_i6.GSR = "ENABLED";
    FD1P3AX gpio_dir_reg_i0_i7 (.D(system_data_o[7]), .SP(aclk_c_enable_123), 
            .CK(aclk_c), .Q(gpio_dir[7])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=252, LSE_RLINE=252 */ ;   // c:/lscc/ep16vhdl/gpio16.vhd(73[2] 83[9])
    defparam gpio_dir_reg_i0_i7.GSR = "ENABLED";
    FD1P3AX gpio_dir_reg_i0_i8 (.D(system_data_o[8]), .SP(aclk_c_enable_123), 
            .CK(aclk_c), .Q(gpio_dir[8])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=252, LSE_RLINE=252 */ ;   // c:/lscc/ep16vhdl/gpio16.vhd(73[2] 83[9])
    defparam gpio_dir_reg_i0_i8.GSR = "ENABLED";
    FD1P3AX gpio_dir_reg_i0_i9 (.D(system_data_o[9]), .SP(aclk_c_enable_123), 
            .CK(aclk_c), .Q(gpio_dir[9])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=252, LSE_RLINE=252 */ ;   // c:/lscc/ep16vhdl/gpio16.vhd(73[2] 83[9])
    defparam gpio_dir_reg_i0_i9.GSR = "ENABLED";
    FD1P3AX gpio_dir_reg_i0_i10 (.D(system_data_o[10]), .SP(aclk_c_enable_123), 
            .CK(aclk_c), .Q(gpio_dir[10])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=252, LSE_RLINE=252 */ ;   // c:/lscc/ep16vhdl/gpio16.vhd(73[2] 83[9])
    defparam gpio_dir_reg_i0_i10.GSR = "ENABLED";
    FD1P3AX gpio_dir_reg_i0_i11 (.D(system_data_o[11]), .SP(aclk_c_enable_123), 
            .CK(aclk_c), .Q(gpio_dir[11])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=252, LSE_RLINE=252 */ ;   // c:/lscc/ep16vhdl/gpio16.vhd(73[2] 83[9])
    defparam gpio_dir_reg_i0_i11.GSR = "ENABLED";
    FD1P3AX gpio_dir_reg_i0_i12 (.D(system_data_o[12]), .SP(aclk_c_enable_123), 
            .CK(aclk_c), .Q(gpio_dir[12])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=252, LSE_RLINE=252 */ ;   // c:/lscc/ep16vhdl/gpio16.vhd(73[2] 83[9])
    defparam gpio_dir_reg_i0_i12.GSR = "ENABLED";
    FD1P3AX gpio_dir_reg_i0_i13 (.D(system_data_o[13]), .SP(aclk_c_enable_123), 
            .CK(aclk_c), .Q(gpio_dir[13])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=252, LSE_RLINE=252 */ ;   // c:/lscc/ep16vhdl/gpio16.vhd(73[2] 83[9])
    defparam gpio_dir_reg_i0_i13.GSR = "ENABLED";
    FD1P3AX gpio_dir_reg_i0_i14 (.D(system_data_o[14]), .SP(aclk_c_enable_123), 
            .CK(aclk_c), .Q(gpio_dir[14])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=252, LSE_RLINE=252 */ ;   // c:/lscc/ep16vhdl/gpio16.vhd(73[2] 83[9])
    defparam gpio_dir_reg_i0_i14.GSR = "ENABLED";
    FD1P3AX gpio_dir_reg_i0_i15 (.D(system_data_o[15]), .SP(aclk_c_enable_123), 
            .CK(aclk_c), .Q(gpio_dir[15])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=252, LSE_RLINE=252 */ ;   // c:/lscc/ep16vhdl/gpio16.vhd(73[2] 83[9])
    defparam gpio_dir_reg_i0_i15.GSR = "ENABLED";
    FD1P3AX gpio_reg_i0_i1 (.D(system_data_o[1]), .SP(aclk_c_enable_138), 
            .CK(aclk_c), .Q(gpio_out[1])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=252, LSE_RLINE=252 */ ;   // c:/lscc/ep16vhdl/gpio16.vhd(73[2] 83[9])
    defparam gpio_reg_i0_i1.GSR = "ENABLED";
    FD1P3AX gpio_reg_i0_i2 (.D(system_data_o[2]), .SP(aclk_c_enable_138), 
            .CK(aclk_c), .Q(gpio_out[2])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=252, LSE_RLINE=252 */ ;   // c:/lscc/ep16vhdl/gpio16.vhd(73[2] 83[9])
    defparam gpio_reg_i0_i2.GSR = "ENABLED";
    FD1P3AX gpio_reg_i0_i3 (.D(system_data_o[3]), .SP(aclk_c_enable_138), 
            .CK(aclk_c), .Q(gpio_out[3])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=252, LSE_RLINE=252 */ ;   // c:/lscc/ep16vhdl/gpio16.vhd(73[2] 83[9])
    defparam gpio_reg_i0_i3.GSR = "ENABLED";
    FD1P3AX gpio_reg_i0_i4 (.D(system_data_o[4]), .SP(aclk_c_enable_138), 
            .CK(aclk_c), .Q(gpio_out[4])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=252, LSE_RLINE=252 */ ;   // c:/lscc/ep16vhdl/gpio16.vhd(73[2] 83[9])
    defparam gpio_reg_i0_i4.GSR = "ENABLED";
    FD1P3AX gpio_reg_i0_i5 (.D(system_data_o[5]), .SP(aclk_c_enable_138), 
            .CK(aclk_c), .Q(gpio_out[5])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=252, LSE_RLINE=252 */ ;   // c:/lscc/ep16vhdl/gpio16.vhd(73[2] 83[9])
    defparam gpio_reg_i0_i5.GSR = "ENABLED";
    FD1P3AX gpio_reg_i0_i6 (.D(system_data_o[6]), .SP(aclk_c_enable_138), 
            .CK(aclk_c), .Q(gpio_out[6])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=252, LSE_RLINE=252 */ ;   // c:/lscc/ep16vhdl/gpio16.vhd(73[2] 83[9])
    defparam gpio_reg_i0_i6.GSR = "ENABLED";
    FD1P3AX gpio_reg_i0_i7 (.D(system_data_o[7]), .SP(aclk_c_enable_138), 
            .CK(aclk_c), .Q(gpio_out[7])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=252, LSE_RLINE=252 */ ;   // c:/lscc/ep16vhdl/gpio16.vhd(73[2] 83[9])
    defparam gpio_reg_i0_i7.GSR = "ENABLED";
    FD1P3AX gpio_reg_i0_i8 (.D(system_data_o[8]), .SP(aclk_c_enable_138), 
            .CK(aclk_c), .Q(gpio_out[8])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=252, LSE_RLINE=252 */ ;   // c:/lscc/ep16vhdl/gpio16.vhd(73[2] 83[9])
    defparam gpio_reg_i0_i8.GSR = "ENABLED";
    FD1P3AX gpio_reg_i0_i9 (.D(system_data_o[9]), .SP(aclk_c_enable_138), 
            .CK(aclk_c), .Q(gpio_out[9])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=252, LSE_RLINE=252 */ ;   // c:/lscc/ep16vhdl/gpio16.vhd(73[2] 83[9])
    defparam gpio_reg_i0_i9.GSR = "ENABLED";
    FD1P3AX gpio_reg_i0_i10 (.D(system_data_o[10]), .SP(aclk_c_enable_138), 
            .CK(aclk_c), .Q(gpio_out[10])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=252, LSE_RLINE=252 */ ;   // c:/lscc/ep16vhdl/gpio16.vhd(73[2] 83[9])
    defparam gpio_reg_i0_i10.GSR = "ENABLED";
    FD1P3AX gpio_reg_i0_i11 (.D(system_data_o[11]), .SP(aclk_c_enable_138), 
            .CK(aclk_c), .Q(gpio_out[11])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=252, LSE_RLINE=252 */ ;   // c:/lscc/ep16vhdl/gpio16.vhd(73[2] 83[9])
    defparam gpio_reg_i0_i11.GSR = "ENABLED";
    FD1P3AX gpio_reg_i0_i12 (.D(system_data_o[12]), .SP(aclk_c_enable_138), 
            .CK(aclk_c), .Q(gpio_out[12])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=252, LSE_RLINE=252 */ ;   // c:/lscc/ep16vhdl/gpio16.vhd(73[2] 83[9])
    defparam gpio_reg_i0_i12.GSR = "ENABLED";
    FD1P3AX gpio_reg_i0_i13 (.D(system_data_o[13]), .SP(aclk_c_enable_138), 
            .CK(aclk_c), .Q(gpio_out[13])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=252, LSE_RLINE=252 */ ;   // c:/lscc/ep16vhdl/gpio16.vhd(73[2] 83[9])
    defparam gpio_reg_i0_i13.GSR = "ENABLED";
    FD1P3AX gpio_reg_i0_i14 (.D(system_data_o[14]), .SP(aclk_c_enable_138), 
            .CK(aclk_c), .Q(gpio_out[14])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=252, LSE_RLINE=252 */ ;   // c:/lscc/ep16vhdl/gpio16.vhd(73[2] 83[9])
    defparam gpio_reg_i0_i14.GSR = "ENABLED";
    FD1P3AX gpio_reg_i0_i15 (.D(system_data_o[15]), .SP(aclk_c_enable_138), 
            .CK(aclk_c), .Q(gpio_out[15])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=252, LSE_RLINE=252 */ ;   // c:/lscc/ep16vhdl/gpio16.vhd(73[2] 83[9])
    defparam gpio_reg_i0_i15.GSR = "ENABLED";
    ORCALUT4 i7387_4_lut (.A(n8603), .B(n8602), .C(n6969), .D(n8618), 
            .Z(aclk_c_enable_138)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/lscc/ep16vhdl/gpio16.vhd(73[2] 83[9])
    defparam i7387_4_lut.init = 16'h0200;
    ORCALUT4 i1_4_lut (.A(n18), .B(n8604), .C(n8608), .D(n8615), .Z(n6969)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_4_lut.init = 16'hfffd;
    ORCALUT4 addr_1__I_0_Mux_13_i1_4_lut (.A(gpio_dir[13]), .B(ioport_out_13), 
            .C(\memory_addr[1] ), .D(n8592), .Z(n1)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;   // c:/lscc/ep16vhdl/gpio16.vhd(54[3] 61[12])
    defparam addr_1__I_0_Mux_13_i1_4_lut.init = 16'h00ca;
    L6MUX21 addr_1__I_0_Mux_0_i3 (.D0(n1_adj_893), .D1(n2194), .SD(\memory_addr[1] ), 
            .Z(n1084)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=252, LSE_RLINE=252 */ ;
    ORCALUT4 addr_1__I_0_Mux_15_i1_4_lut (.A(gpio_dir[15]), .B(ioport_out_15), 
            .C(\memory_addr[1] ), .D(n8592), .Z(n1_adj_894)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;   // c:/lscc/ep16vhdl/gpio16.vhd(54[3] 61[12])
    defparam addr_1__I_0_Mux_15_i1_4_lut.init = 16'h00ca;
    ORCALUT4 addr_1__I_0_Mux_14_i1_4_lut (.A(gpio_dir[14]), .B(ioport_out_14), 
            .C(\memory_addr[1] ), .D(n8592), .Z(n1_adj_895)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;   // c:/lscc/ep16vhdl/gpio16.vhd(54[3] 61[12])
    defparam addr_1__I_0_Mux_14_i1_4_lut.init = 16'h00ca;
    ORCALUT4 i1469_3_lut (.A(hw_xonoff_ff), .B(\rx_buffer_reg[0] ), .C(n8622), 
            .Z(n2193)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/gpio16.vhd(54[3] 61[12])
    defparam i1469_3_lut.init = 16'hcaca;
    PFUMX addr_1__I_0_Mux_15_i3 (.BLUT(n1163), .ALUT(n1_adj_894), .C0(n7611), 
          .Z(n1099)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=252, LSE_RLINE=252 */ ;
    PFUMX addr_1__I_0_Mux_14_i3 (.BLUT(n1164), .ALUT(n1_adj_895), .C0(n7611), 
          .Z(n1098)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=252, LSE_RLINE=252 */ ;
    PFUMX addr_1__I_0_Mux_13_i3 (.BLUT(n1165), .ALUT(n1), .C0(n7611), 
          .Z(n1097)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=252, LSE_RLINE=252 */ ;
    PFUMX addr_1__I_0_Mux_12_i3 (.BLUT(n1166), .ALUT(n1_adj_896), .C0(n7611), 
          .Z(n1096)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=252, LSE_RLINE=252 */ ;
    PFUMX addr_1__I_0_Mux_11_i3 (.BLUT(n1167), .ALUT(n1_adj_897), .C0(n7611), 
          .Z(n1095)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=252, LSE_RLINE=252 */ ;
    PFUMX addr_1__I_0_Mux_10_i3 (.BLUT(n1168), .ALUT(n1_adj_898), .C0(n7611), 
          .Z(n1094)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=252, LSE_RLINE=252 */ ;
    PFUMX addr_1__I_0_Mux_9_i3 (.BLUT(n1169), .ALUT(n1_adj_899), .C0(n7611), 
          .Z(n1093)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=252, LSE_RLINE=252 */ ;
    PFUMX addr_1__I_0_Mux_7_i3 (.BLUT(n1_adj_900), .ALUT(n2378), .C0(\memory_addr[1] ), 
          .Z(n1091)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=252, LSE_RLINE=252 */ ;
    PFUMX addr_1__I_0_Mux_0_i1 (.BLUT(n1178), .ALUT(n1162), .C0(n8622), 
          .Z(n1_adj_893)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=252, LSE_RLINE=252 */ ;
    PFUMX i7483 (.BLUT(n8241), .ALUT(n8240), .C0(n8622), .Z(n8242));
    ORCALUT4 addr_1__I_0_Mux_12_i1_4_lut (.A(gpio_dir[12]), .B(ioport_out_12), 
            .C(\memory_addr[1] ), .D(n8592), .Z(n1_adj_896)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;   // c:/lscc/ep16vhdl/gpio16.vhd(54[3] 61[12])
    defparam addr_1__I_0_Mux_12_i1_4_lut.init = 16'h00ca;
    ORCALUT4 i6743_3_lut_4_lut (.A(\memory_addr[5] ), .B(n8617), .C(\memory_addr[4] ), 
            .D(n8615), .Z(n7407)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6743_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 addr_1__I_0_Mux_11_i1_4_lut (.A(gpio_dir[11]), .B(ioport_out_11), 
            .C(\memory_addr[1] ), .D(n8592), .Z(n1_adj_897)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;   // c:/lscc/ep16vhdl/gpio16.vhd(54[3] 61[12])
    defparam addr_1__I_0_Mux_11_i1_4_lut.init = 16'h00ca;
    ORCALUT4 addr_1__I_0_Mux_10_i1_4_lut (.A(gpio_dir[10]), .B(ioport_out_10), 
            .C(\memory_addr[1] ), .D(n8592), .Z(n1_adj_898)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;   // c:/lscc/ep16vhdl/gpio16.vhd(54[3] 61[12])
    defparam addr_1__I_0_Mux_10_i1_4_lut.init = 16'h00ca;
    ORCALUT4 addr_1__I_0_Mux_9_i1_4_lut (.A(gpio_dir[9]), .B(ioport_out_9), 
            .C(\memory_addr[1] ), .D(n8592), .Z(n1_adj_899)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;   // c:/lscc/ep16vhdl/gpio16.vhd(54[3] 61[12])
    defparam addr_1__I_0_Mux_9_i1_4_lut.init = 16'h00ca;
    ORCALUT4 i7239_4_lut (.A(n1171), .B(gpio_dir[7]), .C(n8622), .D(n8592), 
            .Z(n1_adj_900)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/lscc/ep16vhdl/gpio16.vhd(54[3] 61[12])
    defparam i7239_4_lut.init = 16'h0aca;
    ORCALUT4 i1654_4_lut (.A(ioport_out_7), .B(\rx_buffer_reg[7] ), .C(data_o_15__N_441), 
            .D(n8622), .Z(n2378)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/gpio16.vhd(54[3] 61[12])
    defparam i1654_4_lut.init = 16'hca0a;
    PFUMX i1470 (.BLUT(ioport_out_0), .ALUT(n2193), .C0(data_o_15__N_441), 
          .Z(n2194));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module uart
//

module uart (n18, \memory_addr[1] , n8618, system_write, n8601, n8607, 
            baudrate_reg, rx_irq_o_N_643, n8660, aclk_c, rxd_ff, \tx_counter[5] , 
            GND_net, VCC_net, \tx_counter[6] , n87, rx_en, tx_en, 
            \tx_counter[3] , \tx_counter[4] , \tx_counter[1] , \tx_counter[2] , 
            \rx_counter_15__N_609[0] , rxb_full, system_data_o, uart_i_c, 
            rx_buffer_reg, tx_en_N_533, n66_adj_1, n7403, n7011, n72_adj_2, 
            n69_adj_3, n78_adj_4, n75_adj_5, n81, n780, n8651, hw_xonoff_ff, 
            n7405, n8621, n8617, n6833, n8622, n9433, n3964, n7043, 
            \memory_addr[5] , n3994, n4024, n4054, n4084, n4114, 
            uart_o_c, \rx_counter_15__N_609[1] , \rx_counter_15__N_609[2] , 
            \rx_counter_15__N_609[3] , \rx_counter_15__N_609[4] , \rx_counter_15__N_609[5] , 
            \memory_addr[4] , n8606, n7401, n8602, n8616, n1996, 
            system_read, \gpio_dir[0] , n1162, n8592);
    input n18;
    input \memory_addr[1] ;
    input n8618;
    input system_write;
    input n8601;
    input n8607;
    output [15:0]baudrate_reg;
    output rx_irq_o_N_643;
    output n8660;
    input aclk_c;
    output rxd_ff;
    output \tx_counter[5] ;
    input GND_net;
    input VCC_net;
    output \tx_counter[6] ;
    output [15:0]n87;
    output rx_en;
    output tx_en;
    output \tx_counter[3] ;
    output \tx_counter[4] ;
    output \tx_counter[1] ;
    output \tx_counter[2] ;
    input \rx_counter_15__N_609[0] ;
    output rxb_full;
    input [15:0]system_data_o;
    input uart_i_c;
    output [7:0]rx_buffer_reg;
    output tx_en_N_533;
    output n66_adj_1;
    input n7403;
    input n7011;
    output n72_adj_2;
    output n69_adj_3;
    output n78_adj_4;
    output n75_adj_5;
    output n81;
    output n780;
    output n8651;
    output hw_xonoff_ff;
    input n7405;
    input n8621;
    input n8617;
    input n6833;
    input n8622;
    input n9433;
    input n3964;
    input n7043;
    input \memory_addr[5] ;
    input n3994;
    input n4024;
    input n4054;
    input n4084;
    input n4114;
    output uart_o_c;
    input \rx_counter_15__N_609[1] ;
    input \rx_counter_15__N_609[2] ;
    input \rx_counter_15__N_609[3] ;
    input \rx_counter_15__N_609[4] ;
    input \rx_counter_15__N_609[5] ;
    input \memory_addr[4] ;
    input n8606;
    input n7401;
    input n8602;
    input n8616;
    input n1996;
    input system_read;
    input \gpio_dir[0] ;
    output n1162;
    output n8592;
    
    wire aclk_c /* synthesis SET_AS_NETWORK=aclk_c, is_clock=1 */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(36[2:6])
    wire [3:0]rx_bitcnt;   // c:/lscc/ep16vhdl/uart16.vhd(66[9:18])
    
    wire n2706, n7083, n7077, aclk_c_enable_72;
    wire [15:0]n87_c;
    
    wire n8726;
    wire [7:0]rx_shift_reg;   // c:/lscc/ep16vhdl/uart16.vhd(60[9:21])
    
    wire aclk_c_enable_69, n8725;
    wire [15:0]tx_counter;   // c:/lscc/ep16vhdl/uart16.vhd(57[9:19])
    
    wire n3095, n5684, n5685;
    wire [3:0]tx_bitcnt;   // c:/lscc/ep16vhdl/uart16.vhd(58[9:18])
    wire [3:0]tx_bitcnt_3__N_485;
    
    wire n8719, n8720;
    wire [15:0]rx_counter_15__N_609;
    
    wire tx_en_N_528, n5683, n8729, n8704, n5682;
    wire [15:0]rx_counter;   // c:/lscc/ep16vhdl/uart16.vhd(65[9:19])
    
    wire aclk_c_enable_92, aclk_c_enable_93;
    wire [3:0]rx_bitcnt_3__N_625;
    
    wire aclk_c_enable_24, rxb_full_N_674, n8728, n7305, n7317, n7315, 
        n7299, aclk_c_enable_108, n8716, n8717, aclk_c_enable_149;
    wire [15:0]n87_adj_892;
    
    wire n5681, n7313, n7307, n5680, n5679, n5678, n8642, tx_rq, 
        aclk_c_enable_45, n8669, tx_shift_en, n8643, n8658, n5677, 
        tx_en_N_534, n7359, n8, n5676, n743, n5675, n5674, aclk_c_enable_47, 
        rx_en_N_648, n6413, n2949, n3094, n7341, n7353, n7351, 
        n7335, n7349, n7343, n8713, n8714, n8638, aclk_c_enable_76, 
        n3078, n3079, n8702, n8701, n3076, n3077, n3074, n3075;
    wire [15:0]n399;
    
    wire n8677, n6, n3072, n3073, n8710, n8711, n3070, n3071, 
        n3068, n3069, rxb_full_N_676, n6937, n8707, n8708, n3066, 
        n3067, n3064, n3065, n3062, n3063;
    wire [10:0]tx_shift_reg;   // c:/lscc/ep16vhdl/uart16.vhd(53[9:21])
    
    wire aclk_c_enable_75, n731, n732, n733, n734, n735, n736, 
        n737, n738, n739, n8705, n3061, n7053, n7051, n8678, 
        n8649, txd_o_N_662, n8681, n8648, n6423, n2702, aclk_c_enable_73, 
        n6714;
    wire [3:0]tx_bitcnt_3__N_597;
    
    wire n6410, n5689, n8682, n5688, n5687, n5686;
    
    ORCALUT4 i1_2_lut (.A(rx_bitcnt[1]), .B(rx_bitcnt[0]), .Z(n2706)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut.init = 16'h9999;
    ORCALUT4 i7357_4_lut (.A(n18), .B(n7083), .C(\memory_addr[1] ), .D(n7077), 
            .Z(aclk_c_enable_72)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i7357_4_lut.init = 16'h0020;
    ORCALUT4 i1_4_lut (.A(n8618), .B(system_write), .C(n8601), .D(n8607), 
            .Z(n7083)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i1_4_lut.init = 16'hfff7;
    ORCALUT4 mux_106_i8_4_lut_then_4_lut (.A(baudrate_reg[7]), .B(n87_c[7]), 
            .C(rx_irq_o_N_643), .D(n8660), .Z(n8726)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(196[3] 214[11])
    defparam mux_106_i8_4_lut_then_4_lut.init = 16'hcac0;
    FD1P3AX rx_shift_reg_i0_i0 (.D(rx_shift_reg[1]), .SP(aclk_c_enable_69), 
            .CK(aclk_c), .Q(rx_shift_reg[0])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(172[2] 216[9])
    defparam rx_shift_reg_i0_i0.GSR = "ENABLED";
    ORCALUT4 mux_106_i8_4_lut_else_4_lut (.A(baudrate_reg[8]), .B(rxd_ff), 
            .Z(n8725)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(196[3] 214[11])
    defparam mux_106_i8_4_lut_else_4_lut.init = 16'h2222;
    FD1S3AX tx_counter_i0 (.D(n3095), .CK(aclk_c), .Q(tx_counter[0])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(135[2] 164[9])
    defparam tx_counter_i0.GSR = "ENABLED";
    CCU2B add_180_add_4_7 (.A0(\tx_counter[5] ), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\tx_counter[6] ), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n5684), .COUT(n5685), .S0(n87[5]), .S1(n87[6]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam add_180_add_4_7.INIT0 = 16'h555a;
    defparam add_180_add_4_7.INIT1 = 16'h555a;
    defparam add_180_add_4_7.INJECT1_0 = "NO";
    defparam add_180_add_4_7.INJECT1_1 = "NO";
    FD1S3AX tx_bitcnt_i0 (.D(tx_bitcnt_3__N_485[0]), .CK(aclk_c), .Q(tx_bitcnt[0])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(135[2] 164[9])
    defparam tx_bitcnt_i0.GSR = "ENABLED";
    PFUMX i7686 (.BLUT(n8719), .ALUT(n8720), .C0(rx_en), .Z(rx_counter_15__N_609[8]));
    FD1S3AX tx_en_143 (.D(tx_en_N_528), .CK(aclk_c), .Q(tx_en)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(135[2] 164[9])
    defparam tx_en_143.GSR = "ENABLED";
    CCU2B add_180_add_4_5 (.A0(\tx_counter[3] ), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\tx_counter[4] ), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n5683), .COUT(n5684), .S0(n87[3]), .S1(n87[4]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam add_180_add_4_5.INIT0 = 16'h555a;
    defparam add_180_add_4_5.INIT1 = 16'h555a;
    defparam add_180_add_4_5.INJECT1_0 = "NO";
    defparam add_180_add_4_5.INJECT1_1 = "NO";
    ORCALUT4 mux_106_i7_4_lut_then_4_lut (.A(n8660), .B(n87_c[6]), .C(rx_irq_o_N_643), 
            .D(baudrate_reg[6]), .Z(n8729)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(196[3] 214[11])
    defparam mux_106_i7_4_lut_then_4_lut.init = 16'hcac0;
    ORCALUT4 mux_106_i14_4_lut_else_4_lut (.A(baudrate_reg[14]), .B(rxd_ff), 
            .Z(n8704)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(196[3] 214[11])
    defparam mux_106_i14_4_lut_else_4_lut.init = 16'h2222;
    CCU2B add_180_add_4_3 (.A0(\tx_counter[1] ), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\tx_counter[2] ), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n5682), .COUT(n5683), .S0(n87[1]), .S1(n87[2]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam add_180_add_4_3.INIT0 = 16'h555a;
    defparam add_180_add_4_3.INIT1 = 16'h555a;
    defparam add_180_add_4_3.INJECT1_0 = "NO";
    defparam add_180_add_4_3.INJECT1_1 = "NO";
    FD1P3AX rx_counter_i0_i0 (.D(\rx_counter_15__N_609[0] ), .SP(aclk_c_enable_92), 
            .CK(aclk_c), .Q(rx_counter[0])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(172[2] 216[9])
    defparam rx_counter_i0_i0.GSR = "ENABLED";
    FD1P3AX rx_bitcnt_i0_i0 (.D(rx_bitcnt_3__N_625[0]), .SP(aclk_c_enable_93), 
            .CK(aclk_c), .Q(rx_bitcnt[0])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(172[2] 216[9])
    defparam rx_bitcnt_i0_i0.GSR = "ENABLED";
    FD1P3AX rxb_full_147 (.D(rxb_full_N_674), .SP(aclk_c_enable_24), .CK(aclk_c), 
            .Q(rxb_full)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(172[2] 216[9])
    defparam rxb_full_147.GSR = "ENABLED";
    ORCALUT4 mux_106_i7_4_lut_else_4_lut (.A(baudrate_reg[7]), .B(rxd_ff), 
            .Z(n8728)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(196[3] 214[11])
    defparam mux_106_i7_4_lut_else_4_lut.init = 16'h2222;
    ORCALUT4 i1_4_lut_adj_182 (.A(n7305), .B(n7317), .C(n7315), .D(n7299), 
            .Z(rx_irq_o_N_643)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(201[7:37])
    defparam i1_4_lut_adj_182.init = 16'hfffe;
    FD1P3AY baudrate_reg_i0_i0 (.D(system_data_o[0]), .SP(aclk_c_enable_108), 
            .CK(aclk_c), .Q(baudrate_reg[0])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(103[2] 127[9])
    defparam baudrate_reg_i0_i0.GSR = "ENABLED";
    FD1S3AX rxd_ff_154 (.D(uart_i_c), .CK(aclk_c), .Q(rxd_ff)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(172[2] 216[9])
    defparam rxd_ff_154.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_adj_183 (.A(rx_counter[3]), .B(rx_counter[11]), .Z(n7305)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(201[7:37])
    defparam i1_2_lut_adj_183.init = 16'heeee;
    PFUMX i7684 (.BLUT(n8716), .ALUT(n8717), .C0(rx_en), .Z(rx_counter_15__N_609[9]));
    FD1P3AX rx_buffer_reg_i0_i0 (.D(rx_shift_reg[0]), .SP(aclk_c_enable_149), 
            .CK(aclk_c), .Q(rx_buffer_reg[0])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(172[2] 216[9])
    defparam rx_buffer_reg_i0_i0.GSR = "ENABLED";
    CCU2B add_180_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(tx_counter[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n5682), .S1(n87_adj_892[0]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam add_180_add_4_1.INIT0 = 16'h0000;
    defparam add_180_add_4_1.INIT1 = 16'h555a;
    defparam add_180_add_4_1.INJECT1_0 = "NO";
    defparam add_180_add_4_1.INJECT1_1 = "NO";
    CCU2B add_182_add_4_17 (.A0(rx_counter[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5681), .S0(n87_c[15]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam add_182_add_4_17.INIT0 = 16'h555a;
    defparam add_182_add_4_17.INIT1 = 16'h0000;
    defparam add_182_add_4_17.INJECT1_0 = "NO";
    defparam add_182_add_4_17.INJECT1_1 = "NO";
    ORCALUT4 i1_4_lut_adj_184 (.A(rx_counter[13]), .B(n7313), .C(n7307), 
            .D(rx_counter[8]), .Z(n7317)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(201[7:37])
    defparam i1_4_lut_adj_184.init = 16'hfffe;
    ORCALUT4 i1_4_lut_adj_185 (.A(rx_counter[9]), .B(rx_counter[10]), .C(rx_counter[1]), 
            .D(rx_counter[7]), .Z(n7315)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(201[7:37])
    defparam i1_4_lut_adj_185.init = 16'hfffe;
    CCU2B add_182_add_4_15 (.A0(rx_counter[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(rx_counter[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n5680), .COUT(n5681), .S0(n87_c[13]), .S1(n87_c[14]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam add_182_add_4_15.INIT0 = 16'h555a;
    defparam add_182_add_4_15.INIT1 = 16'h555a;
    defparam add_182_add_4_15.INJECT1_0 = "NO";
    defparam add_182_add_4_15.INJECT1_1 = "NO";
    CCU2B add_182_add_4_13 (.A0(rx_counter[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(rx_counter[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n5679), .COUT(n5680), .S0(n87_c[11]), .S1(n87_c[12]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam add_182_add_4_13.INIT0 = 16'h555a;
    defparam add_182_add_4_13.INIT1 = 16'h555a;
    defparam add_182_add_4_13.INJECT1_0 = "NO";
    defparam add_182_add_4_13.INJECT1_1 = "NO";
    CCU2B add_182_add_4_11 (.A0(rx_counter[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(rx_counter[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n5678), .COUT(n5679), .S0(n87_c[9]), .S1(n87_c[10]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam add_182_add_4_11.INIT0 = 16'h555a;
    defparam add_182_add_4_11.INIT1 = 16'h555a;
    defparam add_182_add_4_11.INJECT1_0 = "NO";
    defparam add_182_add_4_11.INJECT1_1 = "NO";
    ORCALUT4 i1_3_lut_rep_262 (.A(n8660), .B(rx_irq_o_N_643), .C(rx_en), 
            .Z(n8642)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(196[3] 214[11])
    defparam i1_3_lut_rep_262.init = 16'h2020;
    ORCALUT4 i1_2_lut_adj_186 (.A(rx_counter[2]), .B(rx_counter[5]), .Z(n7299)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(201[7:37])
    defparam i1_2_lut_adj_186.init = 16'heeee;
    FD1P3AX tx_rq_138 (.D(n8669), .SP(aclk_c_enable_45), .CK(aclk_c), 
            .Q(tx_rq));   // c:/lscc/ep16vhdl/uart16.vhd(103[2] 127[9])
    defparam tx_rq_138.GSR = "ENABLED";
    ORCALUT4 i2_2_lut_4_lut (.A(n8660), .B(rx_irq_o_N_643), .C(rx_en), 
            .D(rxb_full_N_674), .Z(aclk_c_enable_69)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(196[3] 214[11])
    defparam i2_2_lut_4_lut.init = 16'h0020;
    ORCALUT4 i1_4_lut_adj_187 (.A(rx_counter[12]), .B(rx_counter[14]), .C(rx_counter[0]), 
            .D(rx_counter[4]), .Z(n7313)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(201[7:37])
    defparam i1_4_lut_adj_187.init = 16'hfffe;
    FD1S3IX tx_shift_en_144 (.D(n8658), .CK(aclk_c), .CD(n8643), .Q(tx_shift_en));   // c:/lscc/ep16vhdl/uart16.vhd(135[2] 164[9])
    defparam tx_shift_en_144.GSR = "ENABLED";
    CCU2B add_182_add_4_9 (.A0(rx_counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(rx_counter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n5677), .COUT(n5678), .S0(n87_c[7]), .S1(n87_c[8]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam add_182_add_4_9.INIT0 = 16'h555a;
    defparam add_182_add_4_9.INIT1 = 16'h555a;
    defparam add_182_add_4_9.INJECT1_0 = "NO";
    defparam add_182_add_4_9.INJECT1_1 = "NO";
    ORCALUT4 i7392_4_lut (.A(tx_en_N_534), .B(tx_bitcnt[3]), .C(n7359), 
            .D(tx_en_N_533), .Z(n8)) /* synthesis lut_function=(A+(B ((D)+!C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(135[2] 164[9])
    defparam i7392_4_lut.init = 16'heeae;
    ORCALUT4 i1_2_lut_adj_188 (.A(rx_counter[6]), .B(rx_counter[15]), .Z(n7307)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(201[7:37])
    defparam i1_2_lut_adj_188.init = 16'heeee;
    CCU2B add_182_add_4_7 (.A0(rx_counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(rx_counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n5676), .COUT(n5677), .S0(n66_adj_1), .S1(n87_c[6]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam add_182_add_4_7.INIT0 = 16'h555a;
    defparam add_182_add_4_7.INIT1 = 16'h555a;
    defparam add_182_add_4_7.INJECT1_0 = "NO";
    defparam add_182_add_4_7.INJECT1_1 = "NO";
    ORCALUT4 i538_4_lut (.A(n7403), .B(tx_shift_en), .C(tx_en), .D(n7011), 
            .Z(n743)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(110[3] 126[10])
    defparam i538_4_lut.init = 16'hc5c0;
    CCU2B add_182_add_4_5 (.A0(rx_counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(rx_counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n5675), .COUT(n5676), .S0(n72_adj_2), .S1(n69_adj_3));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam add_182_add_4_5.INIT0 = 16'h555a;
    defparam add_182_add_4_5.INIT1 = 16'h555a;
    defparam add_182_add_4_5.INJECT1_0 = "NO";
    defparam add_182_add_4_5.INJECT1_1 = "NO";
    CCU2B add_182_add_4_3 (.A0(rx_counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(rx_counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n5674), .COUT(n5675), .S0(n78_adj_4), .S1(n75_adj_5));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam add_182_add_4_3.INIT0 = 16'h555a;
    defparam add_182_add_4_3.INIT1 = 16'h555a;
    defparam add_182_add_4_3.INJECT1_0 = "NO";
    defparam add_182_add_4_3.INJECT1_1 = "NO";
    FD1P3AX rx_en_152 (.D(rx_en_N_648), .SP(aclk_c_enable_47), .CK(aclk_c), 
            .Q(rx_en));   // c:/lscc/ep16vhdl/uart16.vhd(172[2] 216[9])
    defparam rx_en_152.GSR = "ENABLED";
    CCU2B add_182_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(rx_counter[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n5674), .S1(n81));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam add_182_add_4_1.INIT0 = 16'h0000;
    defparam add_182_add_4_1.INIT1 = 16'h555a;
    defparam add_182_add_4_1.INJECT1_0 = "NO";
    defparam add_182_add_4_1.INJECT1_1 = "NO";
    FD1S3AX rx_full_146 (.D(n6413), .CK(aclk_c), .Q(rxb_full_N_674));   // c:/lscc/ep16vhdl/uart16.vhd(172[2] 216[9])
    defparam rx_full_146.GSR = "ENABLED";
    ORCALUT4 i7364_2_lut_3_lut (.A(n8660), .B(rx_irq_o_N_643), .C(rx_en), 
            .Z(n2949)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(201[4] 213[12])
    defparam i7364_2_lut_3_lut.init = 16'h1010;
    ORCALUT4 i2371_3_lut (.A(n3094), .B(baudrate_reg[0]), .C(n780), .Z(n3095)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(135[2] 164[9])
    defparam i2371_3_lut.init = 16'hcaca;
    ORCALUT4 i2370_4_lut (.A(tx_counter[0]), .B(n87_adj_892[0]), .C(n8651), 
            .D(tx_en_N_533), .Z(n3094)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(135[2] 164[9])
    defparam i2370_4_lut.init = 16'hca0a;
    ORCALUT4 i1_4_lut_adj_189 (.A(n7341), .B(n7353), .C(n7351), .D(n7335), 
            .Z(tx_en_N_533)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(153[10:27])
    defparam i1_4_lut_adj_189.init = 16'hfffe;
    ORCALUT4 i1_2_lut_adj_190 (.A(\tx_counter[3] ), .B(tx_counter[11]), 
            .Z(n7341)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(153[10:27])
    defparam i1_2_lut_adj_190.init = 16'heeee;
    ORCALUT4 i1_4_lut_adj_191 (.A(tx_counter[13]), .B(n7349), .C(n7343), 
            .D(tx_counter[8]), .Z(n7353)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(153[10:27])
    defparam i1_4_lut_adj_191.init = 16'hfffe;
    PFUMX i7682 (.BLUT(n8713), .ALUT(n8714), .C0(rx_en), .Z(rx_counter_15__N_609[10]));
    ORCALUT4 i1_4_lut_adj_192 (.A(tx_counter[9]), .B(tx_counter[10]), .C(\tx_counter[1] ), 
            .D(tx_counter[7]), .Z(n7351)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(153[10:27])
    defparam i1_4_lut_adj_192.init = 16'hfffe;
    ORCALUT4 i1_2_lut_adj_193 (.A(\tx_counter[2] ), .B(\tx_counter[5] ), 
            .Z(n7335)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(153[10:27])
    defparam i1_2_lut_adj_193.init = 16'heeee;
    ORCALUT4 i1_4_lut_adj_194 (.A(tx_counter[12]), .B(tx_counter[14]), .C(tx_counter[0]), 
            .D(\tx_counter[4] ), .Z(n7349)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(153[10:27])
    defparam i1_4_lut_adj_194.init = 16'hfffe;
    ORCALUT4 i1_2_lut_adj_195 (.A(\tx_counter[6] ), .B(tx_counter[15]), 
            .Z(n7343)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(153[10:27])
    defparam i1_2_lut_adj_195.init = 16'heeee;
    ORCALUT4 i3454_2_lut_rep_258_3_lut (.A(n8660), .B(rx_irq_o_N_643), .C(rx_en), 
            .Z(n8638)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(201[4] 213[12])
    defparam i3454_2_lut_rep_258_3_lut.init = 16'he0e0;
    ORCALUT4 i1_3_lut (.A(hw_xonoff_ff), .B(tx_en), .C(tx_rq), .Z(tx_en_N_534)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_3_lut.init = 16'h1010;
    ORCALUT4 i1_2_lut_rep_259_3_lut (.A(n8658), .B(tx_en_N_533), .C(tx_en), 
            .Z(aclk_c_enable_76)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(151[3] 162[10])
    defparam i1_2_lut_rep_259_3_lut.init = 16'h2020;
    ORCALUT4 i2355_3_lut (.A(n3078), .B(baudrate_reg[7]), .C(n780), .Z(n3079)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(135[2] 164[9])
    defparam i2355_3_lut.init = 16'hcaca;
    ORCALUT4 mux_106_i15_4_lut_then_4_lut (.A(baudrate_reg[14]), .B(n87_c[14]), 
            .C(rx_irq_o_N_643), .D(n8660), .Z(n8702)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(196[3] 214[11])
    defparam mux_106_i15_4_lut_then_4_lut.init = 16'hcac0;
    ORCALUT4 i2354_4_lut (.A(tx_counter[7]), .B(n87_adj_892[7]), .C(n8651), 
            .D(tx_en_N_533), .Z(n3078)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(135[2] 164[9])
    defparam i2354_4_lut.init = 16'hca0a;
    ORCALUT4 mux_106_i15_4_lut_else_4_lut (.A(baudrate_reg[15]), .B(rxd_ff), 
            .Z(n8701)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(196[3] 214[11])
    defparam mux_106_i15_4_lut_else_4_lut.init = 16'h2222;
    ORCALUT4 i2353_3_lut (.A(n3076), .B(baudrate_reg[8]), .C(n780), .Z(n3077)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(135[2] 164[9])
    defparam i2353_3_lut.init = 16'hcaca;
    ORCALUT4 i2352_4_lut (.A(tx_counter[8]), .B(n87_adj_892[8]), .C(n8651), 
            .D(tx_en_N_533), .Z(n3076)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(135[2] 164[9])
    defparam i2352_4_lut.init = 16'hca0a;
    ORCALUT4 i2351_3_lut (.A(n3074), .B(baudrate_reg[9]), .C(n780), .Z(n3075)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(135[2] 164[9])
    defparam i2351_3_lut.init = 16'hcaca;
    ORCALUT4 i3499_4_lut (.A(n399[15]), .B(n8638), .C(n87_c[15]), .D(rx_irq_o_N_643), 
            .Z(rx_counter_15__N_609[15])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(196[3] 214[11])
    defparam i3499_4_lut.init = 16'hc088;
    ORCALUT4 i2350_4_lut (.A(tx_counter[9]), .B(n87_adj_892[9]), .C(n8651), 
            .D(tx_en_N_533), .Z(n3074)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(135[2] 164[9])
    defparam i2350_4_lut.init = 16'hca0a;
    ORCALUT4 i3582_4_lut (.A(rx_bitcnt[3]), .B(n8677), .C(n8642), .D(n6), 
            .Z(rx_bitcnt_3__N_625[3])) /* synthesis lut_function=(A ((C (D))+!B)+!A !(B ((D)+!C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(196[3] 214[11])
    defparam i3582_4_lut.init = 16'hb373;
    ORCALUT4 i2349_3_lut (.A(n3072), .B(baudrate_reg[10]), .C(n780), .Z(n3073)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(135[2] 164[9])
    defparam i2349_3_lut.init = 16'hcaca;
    ORCALUT4 i2348_4_lut (.A(tx_counter[10]), .B(n87_adj_892[10]), .C(n8651), 
            .D(tx_en_N_533), .Z(n3072)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(135[2] 164[9])
    defparam i2348_4_lut.init = 16'hca0a;
    PFUMX i7680 (.BLUT(n8710), .ALUT(n8711), .C0(rx_en), .Z(rx_counter_15__N_609[11]));
    ORCALUT4 i2347_3_lut (.A(n3070), .B(baudrate_reg[11]), .C(n780), .Z(n3071)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(135[2] 164[9])
    defparam i2347_3_lut.init = 16'hcaca;
    ORCALUT4 i2346_4_lut (.A(tx_counter[11]), .B(n87_adj_892[11]), .C(n8651), 
            .D(tx_en_N_533), .Z(n3070)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(135[2] 164[9])
    defparam i2346_4_lut.init = 16'hca0a;
    ORCALUT4 i2345_3_lut (.A(n3068), .B(baudrate_reg[12]), .C(n780), .Z(n3069)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(135[2] 164[9])
    defparam i2345_3_lut.init = 16'hcaca;
    ORCALUT4 i1_3_lut_adj_196 (.A(rxb_full), .B(rxb_full_N_676), .C(rxb_full_N_674), 
            .Z(aclk_c_enable_24)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;
    defparam i1_3_lut_adj_196.init = 16'hdcdc;
    ORCALUT4 i1_4_lut_adj_197 (.A(n7405), .B(n8621), .C(n8617), .D(n6937), 
            .Z(rxb_full_N_676)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_197.init = 16'h0100;
    PFUMX i7678 (.BLUT(n8707), .ALUT(n8708), .C0(rx_en), .Z(rx_counter_15__N_609[12]));
    ORCALUT4 i3460_3_lut_rep_271 (.A(n8658), .B(tx_en), .C(tx_en_N_533), 
            .Z(n8651)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i3460_3_lut_rep_271.init = 16'hc8c8;
    ORCALUT4 i2344_4_lut (.A(tx_counter[12]), .B(n87_adj_892[12]), .C(n8651), 
            .D(tx_en_N_533), .Z(n3068)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(135[2] 164[9])
    defparam i2344_4_lut.init = 16'hca0a;
    ORCALUT4 i357_3_lut_4_lut_4_lut (.A(n8658), .B(tx_en), .C(tx_en_N_533), 
            .D(tx_en_N_534), .Z(n780)) /* synthesis lut_function=(A (B ((D)+!C)+!B (D))+!A (D)) */ ;
    defparam i357_3_lut_4_lut_4_lut.init = 16'hff08;
    ORCALUT4 i2343_3_lut (.A(n3066), .B(baudrate_reg[13]), .C(n780), .Z(n3067)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(135[2] 164[9])
    defparam i2343_3_lut.init = 16'hcaca;
    ORCALUT4 i3436_2_lut_4_lut (.A(n8658), .B(tx_en), .C(tx_en_N_533), 
            .D(tx_en_N_534), .Z(tx_en_N_528)) /* synthesis lut_function=(A (B+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i3436_2_lut_4_lut.init = 16'hffc8;
    ORCALUT4 i2342_4_lut (.A(tx_counter[13]), .B(n87_adj_892[13]), .C(n8651), 
            .D(tx_en_N_533), .Z(n3066)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(135[2] 164[9])
    defparam i2342_4_lut.init = 16'hca0a;
    ORCALUT4 i2341_3_lut (.A(n3064), .B(baudrate_reg[14]), .C(n780), .Z(n3065)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(135[2] 164[9])
    defparam i2341_3_lut.init = 16'hcaca;
    ORCALUT4 i2340_4_lut (.A(tx_counter[14]), .B(n87_adj_892[14]), .C(n8651), 
            .D(tx_en_N_533), .Z(n3064)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(135[2] 164[9])
    defparam i2340_4_lut.init = 16'hca0a;
    ORCALUT4 i1_4_lut_adj_198 (.A(n6833), .B(\memory_addr[1] ), .C(n8622), 
            .D(n8618), .Z(n6937)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_198.init = 16'h8000;
    ORCALUT4 i2339_3_lut (.A(n3062), .B(baudrate_reg[15]), .C(n780), .Z(n3063)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(135[2] 164[9])
    defparam i2339_3_lut.init = 16'hcaca;
    FD1P3AX tx_shift_reg_i0_i1 (.D(n731), .SP(aclk_c_enable_75), .CK(aclk_c), 
            .Q(tx_shift_reg[1])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(103[2] 127[9])
    defparam tx_shift_reg_i0_i1.GSR = "ENABLED";
    FD1P3AX tx_shift_reg_i0_i2 (.D(n732), .SP(aclk_c_enable_75), .CK(aclk_c), 
            .Q(tx_shift_reg[2])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(103[2] 127[9])
    defparam tx_shift_reg_i0_i2.GSR = "ENABLED";
    FD1P3AX tx_shift_reg_i0_i3 (.D(n733), .SP(aclk_c_enable_75), .CK(aclk_c), 
            .Q(tx_shift_reg[3])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(103[2] 127[9])
    defparam tx_shift_reg_i0_i3.GSR = "ENABLED";
    FD1P3AX tx_shift_reg_i0_i4 (.D(n734), .SP(aclk_c_enable_75), .CK(aclk_c), 
            .Q(tx_shift_reg[4])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(103[2] 127[9])
    defparam tx_shift_reg_i0_i4.GSR = "ENABLED";
    FD1P3AX tx_shift_reg_i0_i5 (.D(n735), .SP(aclk_c_enable_75), .CK(aclk_c), 
            .Q(tx_shift_reg[5])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(103[2] 127[9])
    defparam tx_shift_reg_i0_i5.GSR = "ENABLED";
    FD1P3AX tx_shift_reg_i0_i6 (.D(n736), .SP(aclk_c_enable_75), .CK(aclk_c), 
            .Q(tx_shift_reg[6])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(103[2] 127[9])
    defparam tx_shift_reg_i0_i6.GSR = "ENABLED";
    FD1P3AX tx_shift_reg_i0_i7 (.D(n737), .SP(aclk_c_enable_75), .CK(aclk_c), 
            .Q(tx_shift_reg[7])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(103[2] 127[9])
    defparam tx_shift_reg_i0_i7.GSR = "ENABLED";
    FD1P3AX tx_shift_reg_i0_i8 (.D(n738), .SP(aclk_c_enable_75), .CK(aclk_c), 
            .Q(tx_shift_reg[8])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(103[2] 127[9])
    defparam tx_shift_reg_i0_i8.GSR = "ENABLED";
    FD1P3AX tx_shift_reg_i0_i9 (.D(n739), .SP(aclk_c_enable_75), .CK(aclk_c), 
            .Q(tx_shift_reg[9])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(103[2] 127[9])
    defparam tx_shift_reg_i0_i9.GSR = "ENABLED";
    FD1P3AX tx_shift_reg_i0_i10 (.D(n9433), .SP(aclk_c_enable_75), .CK(aclk_c), 
            .Q(tx_shift_reg[10])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(103[2] 127[9])
    defparam tx_shift_reg_i0_i10.GSR = "ENABLED";
    FD1P3AX rx_shift_reg_i0_i1 (.D(rx_shift_reg[2]), .SP(aclk_c_enable_69), 
            .CK(aclk_c), .Q(rx_shift_reg[1])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(172[2] 216[9])
    defparam rx_shift_reg_i0_i1.GSR = "ENABLED";
    PFUMX i7676 (.BLUT(n8704), .ALUT(n8705), .C0(rx_en), .Z(rx_counter_15__N_609[13]));
    ORCALUT4 i2338_4_lut (.A(tx_counter[15]), .B(n87_adj_892[15]), .C(n8651), 
            .D(tx_en_N_533), .Z(n3062)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(135[2] 164[9])
    defparam i2338_4_lut.init = 16'hca0a;
    FD1P3AX rx_shift_reg_i0_i2 (.D(rx_shift_reg[3]), .SP(aclk_c_enable_69), 
            .CK(aclk_c), .Q(rx_shift_reg[2])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(172[2] 216[9])
    defparam rx_shift_reg_i0_i2.GSR = "ENABLED";
    FD1P3AX rx_shift_reg_i0_i3 (.D(rx_shift_reg[4]), .SP(aclk_c_enable_69), 
            .CK(aclk_c), .Q(rx_shift_reg[3])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(172[2] 216[9])
    defparam rx_shift_reg_i0_i3.GSR = "ENABLED";
    FD1P3AX rx_shift_reg_i0_i4 (.D(rx_shift_reg[5]), .SP(aclk_c_enable_69), 
            .CK(aclk_c), .Q(rx_shift_reg[4])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(172[2] 216[9])
    defparam rx_shift_reg_i0_i4.GSR = "ENABLED";
    FD1P3AX rx_shift_reg_i0_i5 (.D(rx_shift_reg[6]), .SP(aclk_c_enable_69), 
            .CK(aclk_c), .Q(rx_shift_reg[5])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(172[2] 216[9])
    defparam rx_shift_reg_i0_i5.GSR = "ENABLED";
    FD1P3AX rx_shift_reg_i0_i6 (.D(rx_shift_reg[7]), .SP(aclk_c_enable_69), 
            .CK(aclk_c), .Q(rx_shift_reg[6])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(172[2] 216[9])
    defparam rx_shift_reg_i0_i6.GSR = "ENABLED";
    FD1P3AX rx_shift_reg_i0_i7 (.D(rxd_ff), .SP(aclk_c_enable_69), .CK(aclk_c), 
            .Q(rx_shift_reg[7])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(172[2] 216[9])
    defparam rx_shift_reg_i0_i7.GSR = "ENABLED";
    ORCALUT4 i3493_4_lut (.A(tx_bitcnt[1]), .B(tx_en_N_534), .C(tx_bitcnt[0]), 
            .D(aclk_c_enable_76), .Z(n3061)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+!(C+!(D)))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(135[2] 164[9])
    defparam i3493_4_lut.init = 16'hedee;
    ORCALUT4 i7351_4_lut (.A(n8618), .B(n18), .C(n7053), .D(n7051), 
            .Z(aclk_c_enable_108)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(103[2] 127[9])
    defparam i7351_4_lut.init = 16'h0008;
    FD1S3AX tx_counter_i1 (.D(n3964), .CK(aclk_c), .Q(\tx_counter[1] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(135[2] 164[9])
    defparam tx_counter_i1.GSR = "ENABLED";
    ORCALUT4 i1_4_lut_adj_199 (.A(n7043), .B(\memory_addr[1] ), .C(n8622), 
            .D(\memory_addr[5] ), .Z(n7051)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_199.init = 16'hfffe;
    FD1S3AX tx_counter_i2 (.D(n3994), .CK(aclk_c), .Q(\tx_counter[2] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(135[2] 164[9])
    defparam tx_counter_i2.GSR = "ENABLED";
    FD1S3AX tx_counter_i3 (.D(n4024), .CK(aclk_c), .Q(\tx_counter[3] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(135[2] 164[9])
    defparam tx_counter_i3.GSR = "ENABLED";
    FD1S3AX tx_counter_i4 (.D(n4054), .CK(aclk_c), .Q(\tx_counter[4] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(135[2] 164[9])
    defparam tx_counter_i4.GSR = "ENABLED";
    FD1S3AX tx_counter_i5 (.D(n4084), .CK(aclk_c), .Q(\tx_counter[5] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(135[2] 164[9])
    defparam tx_counter_i5.GSR = "ENABLED";
    FD1S3AX tx_counter_i6 (.D(n4114), .CK(aclk_c), .Q(\tx_counter[6] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(135[2] 164[9])
    defparam tx_counter_i6.GSR = "ENABLED";
    FD1S3AX tx_counter_i7 (.D(n3079), .CK(aclk_c), .Q(tx_counter[7])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(135[2] 164[9])
    defparam tx_counter_i7.GSR = "ENABLED";
    FD1S3AX tx_counter_i8 (.D(n3077), .CK(aclk_c), .Q(tx_counter[8])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(135[2] 164[9])
    defparam tx_counter_i8.GSR = "ENABLED";
    FD1S3AX tx_counter_i9 (.D(n3075), .CK(aclk_c), .Q(tx_counter[9])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(135[2] 164[9])
    defparam tx_counter_i9.GSR = "ENABLED";
    FD1S3AX tx_counter_i10 (.D(n3073), .CK(aclk_c), .Q(tx_counter[10])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(135[2] 164[9])
    defparam tx_counter_i10.GSR = "ENABLED";
    FD1S3AX tx_counter_i11 (.D(n3071), .CK(aclk_c), .Q(tx_counter[11])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(135[2] 164[9])
    defparam tx_counter_i11.GSR = "ENABLED";
    FD1S3AX tx_counter_i12 (.D(n3069), .CK(aclk_c), .Q(tx_counter[12])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(135[2] 164[9])
    defparam tx_counter_i12.GSR = "ENABLED";
    FD1S3AX tx_counter_i13 (.D(n3067), .CK(aclk_c), .Q(tx_counter[13])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(135[2] 164[9])
    defparam tx_counter_i13.GSR = "ENABLED";
    FD1S3AX tx_counter_i14 (.D(n3065), .CK(aclk_c), .Q(tx_counter[14])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(135[2] 164[9])
    defparam tx_counter_i14.GSR = "ENABLED";
    FD1S3AX tx_counter_i15 (.D(n3063), .CK(aclk_c), .Q(tx_counter[15])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(135[2] 164[9])
    defparam tx_counter_i15.GSR = "ENABLED";
    FD1S3AX tx_bitcnt_i1 (.D(n3061), .CK(aclk_c), .Q(tx_bitcnt[1])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(135[2] 164[9])
    defparam tx_bitcnt_i1.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_rep_269_4_lut (.A(tx_bitcnt[2]), .B(n8678), .C(tx_bitcnt[3]), 
            .D(tx_en_N_533), .Z(n8649)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(153[10:27])
    defparam i1_2_lut_rep_269_4_lut.init = 16'h00fe;
    ORCALUT4 i3434_2_lut_4_lut (.A(tx_bitcnt[2]), .B(n8678), .C(tx_bitcnt[3]), 
            .D(tx_shift_reg[0]), .Z(txd_o_N_662)) /* synthesis lut_function=(A (D)+!A (B (D)+!B ((D)+!C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(153[10:27])
    defparam i3434_2_lut_4_lut.init = 16'hff01;
    ORCALUT4 i1267_2_lut_rep_268_4_lut (.A(rx_bitcnt[2]), .B(n8681), .C(rx_bitcnt[3]), 
            .D(rx_irq_o_N_643), .Z(n8648)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(204[11:28])
    defparam i1267_2_lut_rep_268_4_lut.init = 16'hfffe;
    ORCALUT4 i3565_2_lut_4_lut (.A(rx_bitcnt[2]), .B(n8681), .C(rx_bitcnt[3]), 
            .D(baudrate_reg[15]), .Z(n399[15])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(204[11:28])
    defparam i3565_2_lut_4_lut.init = 16'hfe00;
    FD1P3IX rx_bitcnt_i0_i2 (.D(n2702), .SP(aclk_c_enable_93), .CD(n6423), 
            .CK(aclk_c), .Q(rx_bitcnt[2])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(172[2] 216[9])
    defparam rx_bitcnt_i0_i2.GSR = "ENABLED";
    FD1P3IX rx_bitcnt_i0_i1 (.D(n2706), .SP(aclk_c_enable_93), .CD(n6423), 
            .CK(aclk_c), .Q(rx_bitcnt[1])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(172[2] 216[9])
    defparam rx_bitcnt_i0_i1.GSR = "ENABLED";
    FD1P3AX hw_xonoff_ff_139 (.D(system_data_o[0]), .SP(aclk_c_enable_72), 
            .CK(aclk_c), .Q(hw_xonoff_ff));   // c:/lscc/ep16vhdl/uart16.vhd(103[2] 127[9])
    defparam hw_xonoff_ff_139.GSR = "ENABLED";
    FD1P3AY txd_o_142 (.D(txd_o_N_662), .SP(aclk_c_enable_73), .CK(aclk_c), 
            .Q(uart_o_c));   // c:/lscc/ep16vhdl/uart16.vhd(135[2] 164[9])
    defparam txd_o_142.GSR = "ENABLED";
    FD1P3IX tx_shift_reg_i0_i0 (.D(tx_shift_reg[1]), .SP(aclk_c_enable_75), 
            .CD(n6714), .CK(aclk_c), .Q(tx_shift_reg[0])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(103[2] 127[9])
    defparam tx_shift_reg_i0_i0.GSR = "ENABLED";
    FD1P3IX tx_bitcnt_i2 (.D(tx_bitcnt_3__N_597[2]), .SP(aclk_c_enable_76), 
            .CD(tx_en_N_534), .CK(aclk_c), .Q(tx_bitcnt[2])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(135[2] 164[9])
    defparam tx_bitcnt_i2.GSR = "ENABLED";
    FD1S3AX tx_bitcnt_i3 (.D(n8), .CK(aclk_c), .Q(tx_bitcnt[3])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(135[2] 164[9])
    defparam tx_bitcnt_i3.GSR = "ENABLED";
    FD1P3AX rx_counter_i0_i1 (.D(\rx_counter_15__N_609[1] ), .SP(aclk_c_enable_92), 
            .CK(aclk_c), .Q(rx_counter[1])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(172[2] 216[9])
    defparam rx_counter_i0_i1.GSR = "ENABLED";
    FD1P3AX rx_counter_i0_i2 (.D(\rx_counter_15__N_609[2] ), .SP(aclk_c_enable_92), 
            .CK(aclk_c), .Q(rx_counter[2])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(172[2] 216[9])
    defparam rx_counter_i0_i2.GSR = "ENABLED";
    FD1P3AX rx_counter_i0_i3 (.D(\rx_counter_15__N_609[3] ), .SP(aclk_c_enable_92), 
            .CK(aclk_c), .Q(rx_counter[3])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(172[2] 216[9])
    defparam rx_counter_i0_i3.GSR = "ENABLED";
    FD1P3AX rx_counter_i0_i4 (.D(\rx_counter_15__N_609[4] ), .SP(aclk_c_enable_92), 
            .CK(aclk_c), .Q(rx_counter[4])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(172[2] 216[9])
    defparam rx_counter_i0_i4.GSR = "ENABLED";
    FD1P3AX rx_counter_i0_i5 (.D(\rx_counter_15__N_609[5] ), .SP(aclk_c_enable_92), 
            .CK(aclk_c), .Q(rx_counter[5])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(172[2] 216[9])
    defparam rx_counter_i0_i5.GSR = "ENABLED";
    FD1P3AX rx_counter_i0_i6 (.D(rx_counter_15__N_609[6]), .SP(aclk_c_enable_92), 
            .CK(aclk_c), .Q(rx_counter[6])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(172[2] 216[9])
    defparam rx_counter_i0_i6.GSR = "ENABLED";
    FD1P3AX rx_counter_i0_i7 (.D(rx_counter_15__N_609[7]), .SP(aclk_c_enable_92), 
            .CK(aclk_c), .Q(rx_counter[7])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(172[2] 216[9])
    defparam rx_counter_i0_i7.GSR = "ENABLED";
    FD1P3AX rx_counter_i0_i8 (.D(rx_counter_15__N_609[8]), .SP(aclk_c_enable_92), 
            .CK(aclk_c), .Q(rx_counter[8])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(172[2] 216[9])
    defparam rx_counter_i0_i8.GSR = "ENABLED";
    FD1P3AX rx_counter_i0_i9 (.D(rx_counter_15__N_609[9]), .SP(aclk_c_enable_92), 
            .CK(aclk_c), .Q(rx_counter[9])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(172[2] 216[9])
    defparam rx_counter_i0_i9.GSR = "ENABLED";
    FD1P3AX rx_counter_i0_i10 (.D(rx_counter_15__N_609[10]), .SP(aclk_c_enable_92), 
            .CK(aclk_c), .Q(rx_counter[10])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(172[2] 216[9])
    defparam rx_counter_i0_i10.GSR = "ENABLED";
    FD1P3AX rx_counter_i0_i11 (.D(rx_counter_15__N_609[11]), .SP(aclk_c_enable_92), 
            .CK(aclk_c), .Q(rx_counter[11])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(172[2] 216[9])
    defparam rx_counter_i0_i11.GSR = "ENABLED";
    FD1P3AX rx_counter_i0_i12 (.D(rx_counter_15__N_609[12]), .SP(aclk_c_enable_92), 
            .CK(aclk_c), .Q(rx_counter[12])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(172[2] 216[9])
    defparam rx_counter_i0_i12.GSR = "ENABLED";
    FD1P3AX rx_counter_i0_i13 (.D(rx_counter_15__N_609[13]), .SP(aclk_c_enable_92), 
            .CK(aclk_c), .Q(rx_counter[13])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(172[2] 216[9])
    defparam rx_counter_i0_i13.GSR = "ENABLED";
    FD1P3AX rx_counter_i0_i14 (.D(rx_counter_15__N_609[14]), .SP(aclk_c_enable_92), 
            .CK(aclk_c), .Q(rx_counter[14])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(172[2] 216[9])
    defparam rx_counter_i0_i14.GSR = "ENABLED";
    FD1P3AX rx_counter_i0_i15 (.D(rx_counter_15__N_609[15]), .SP(aclk_c_enable_92), 
            .CK(aclk_c), .Q(rx_counter[15])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(172[2] 216[9])
    defparam rx_counter_i0_i15.GSR = "ENABLED";
    FD1P3AX rx_bitcnt_i0_i3 (.D(rx_bitcnt_3__N_625[3]), .SP(aclk_c_enable_93), 
            .CK(aclk_c), .Q(rx_bitcnt[3])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(172[2] 216[9])
    defparam rx_bitcnt_i0_i3.GSR = "ENABLED";
    FD1P3AY baudrate_reg_i0_i1 (.D(system_data_o[1]), .SP(aclk_c_enable_108), 
            .CK(aclk_c), .Q(baudrate_reg[1])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(103[2] 127[9])
    defparam baudrate_reg_i0_i1.GSR = "ENABLED";
    FD1P3AY baudrate_reg_i0_i2 (.D(system_data_o[2]), .SP(aclk_c_enable_108), 
            .CK(aclk_c), .Q(baudrate_reg[2])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(103[2] 127[9])
    defparam baudrate_reg_i0_i2.GSR = "ENABLED";
    FD1P3AY baudrate_reg_i0_i3 (.D(system_data_o[3]), .SP(aclk_c_enable_108), 
            .CK(aclk_c), .Q(baudrate_reg[3])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(103[2] 127[9])
    defparam baudrate_reg_i0_i3.GSR = "ENABLED";
    FD1P3AX baudrate_reg_i0_i4 (.D(system_data_o[4]), .SP(aclk_c_enable_108), 
            .CK(aclk_c), .Q(baudrate_reg[4])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(103[2] 127[9])
    defparam baudrate_reg_i0_i4.GSR = "ENABLED";
    FD1P3AY baudrate_reg_i0_i5 (.D(system_data_o[5]), .SP(aclk_c_enable_108), 
            .CK(aclk_c), .Q(baudrate_reg[5])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(103[2] 127[9])
    defparam baudrate_reg_i0_i5.GSR = "ENABLED";
    FD1P3AX baudrate_reg_i0_i6 (.D(system_data_o[6]), .SP(aclk_c_enable_108), 
            .CK(aclk_c), .Q(baudrate_reg[6])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(103[2] 127[9])
    defparam baudrate_reg_i0_i6.GSR = "ENABLED";
    FD1P3AY baudrate_reg_i0_i7 (.D(system_data_o[7]), .SP(aclk_c_enable_108), 
            .CK(aclk_c), .Q(baudrate_reg[7])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(103[2] 127[9])
    defparam baudrate_reg_i0_i7.GSR = "ENABLED";
    FD1P3AY baudrate_reg_i0_i8 (.D(system_data_o[8]), .SP(aclk_c_enable_108), 
            .CK(aclk_c), .Q(baudrate_reg[8])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(103[2] 127[9])
    defparam baudrate_reg_i0_i8.GSR = "ENABLED";
    FD1P3AX baudrate_reg_i0_i9 (.D(system_data_o[9]), .SP(aclk_c_enable_108), 
            .CK(aclk_c), .Q(baudrate_reg[9])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(103[2] 127[9])
    defparam baudrate_reg_i0_i9.GSR = "ENABLED";
    FD1P3AX baudrate_reg_i0_i10 (.D(system_data_o[10]), .SP(aclk_c_enable_108), 
            .CK(aclk_c), .Q(baudrate_reg[10])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(103[2] 127[9])
    defparam baudrate_reg_i0_i10.GSR = "ENABLED";
    FD1P3AX baudrate_reg_i0_i11 (.D(system_data_o[11]), .SP(aclk_c_enable_108), 
            .CK(aclk_c), .Q(baudrate_reg[11])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(103[2] 127[9])
    defparam baudrate_reg_i0_i11.GSR = "ENABLED";
    FD1P3AX baudrate_reg_i0_i12 (.D(system_data_o[12]), .SP(aclk_c_enable_108), 
            .CK(aclk_c), .Q(baudrate_reg[12])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(103[2] 127[9])
    defparam baudrate_reg_i0_i12.GSR = "ENABLED";
    FD1P3AX baudrate_reg_i0_i13 (.D(system_data_o[13]), .SP(aclk_c_enable_108), 
            .CK(aclk_c), .Q(baudrate_reg[13])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(103[2] 127[9])
    defparam baudrate_reg_i0_i13.GSR = "ENABLED";
    FD1P3AX baudrate_reg_i0_i14 (.D(system_data_o[14]), .SP(aclk_c_enable_108), 
            .CK(aclk_c), .Q(baudrate_reg[14])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(103[2] 127[9])
    defparam baudrate_reg_i0_i14.GSR = "ENABLED";
    FD1P3AX baudrate_reg_i0_i15 (.D(system_data_o[15]), .SP(aclk_c_enable_108), 
            .CK(aclk_c), .Q(baudrate_reg[15])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(103[2] 127[9])
    defparam baudrate_reg_i0_i15.GSR = "ENABLED";
    FD1P3AX rx_buffer_reg_i0_i1 (.D(rx_shift_reg[1]), .SP(aclk_c_enable_149), 
            .CK(aclk_c), .Q(rx_buffer_reg[1])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(172[2] 216[9])
    defparam rx_buffer_reg_i0_i1.GSR = "ENABLED";
    FD1P3AX rx_buffer_reg_i0_i2 (.D(rx_shift_reg[2]), .SP(aclk_c_enable_149), 
            .CK(aclk_c), .Q(rx_buffer_reg[2])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(172[2] 216[9])
    defparam rx_buffer_reg_i0_i2.GSR = "ENABLED";
    FD1P3AX rx_buffer_reg_i0_i3 (.D(rx_shift_reg[3]), .SP(aclk_c_enable_149), 
            .CK(aclk_c), .Q(rx_buffer_reg[3])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(172[2] 216[9])
    defparam rx_buffer_reg_i0_i3.GSR = "ENABLED";
    FD1P3AX rx_buffer_reg_i0_i4 (.D(rx_shift_reg[4]), .SP(aclk_c_enable_149), 
            .CK(aclk_c), .Q(rx_buffer_reg[4])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(172[2] 216[9])
    defparam rx_buffer_reg_i0_i4.GSR = "ENABLED";
    FD1P3AX rx_buffer_reg_i0_i5 (.D(rx_shift_reg[5]), .SP(aclk_c_enable_149), 
            .CK(aclk_c), .Q(rx_buffer_reg[5])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(172[2] 216[9])
    defparam rx_buffer_reg_i0_i5.GSR = "ENABLED";
    FD1P3AX rx_buffer_reg_i0_i6 (.D(rx_shift_reg[6]), .SP(aclk_c_enable_149), 
            .CK(aclk_c), .Q(rx_buffer_reg[6])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(172[2] 216[9])
    defparam rx_buffer_reg_i0_i6.GSR = "ENABLED";
    FD1P3AX rx_buffer_reg_i0_i7 (.D(rx_shift_reg[7]), .SP(aclk_c_enable_149), 
            .CK(aclk_c), .Q(rx_buffer_reg[7])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=11, LSE_RCOL=15, LSE_LLINE=208, LSE_RLINE=208 */ ;   // c:/lscc/ep16vhdl/uart16.vhd(172[2] 216[9])
    defparam rx_buffer_reg_i0_i7.GSR = "ENABLED";
    PFUMX i7674 (.BLUT(n8701), .ALUT(n8702), .C0(rx_en), .Z(rx_counter_15__N_609[14]));
    ORCALUT4 i1_3_lut_4_lut (.A(\memory_addr[4] ), .B(n8617), .C(n8606), 
            .D(system_write), .Z(n7053)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'hfeff;
    ORCALUT4 i341_3_lut (.A(rxb_full), .B(rxb_full_N_674), .C(rxb_full_N_676), 
            .Z(aclk_c_enable_149)) /* synthesis lut_function=(A (B (C))+!A (B)) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(185[3] 215[10])
    defparam i341_3_lut.init = 16'hc4c4;
    ORCALUT4 tx_en_I_0_1_lut_rep_289 (.A(tx_en), .Z(n8669)) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(85[7:16])
    defparam tx_en_I_0_1_lut_rep_289.init = 16'h5555;
    ORCALUT4 i1_2_lut_rep_263_2_lut (.A(tx_en), .B(tx_en_N_533), .Z(n8643)) /* synthesis lut_function=((B)+!A) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(85[7:16])
    defparam i1_2_lut_rep_263_2_lut.init = 16'hdddd;
    ORCALUT4 i2383_1_lut_2_lut_2_lut (.A(tx_en), .B(tx_en_N_533), .Z(aclk_c_enable_73)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(85[7:16])
    defparam i2383_1_lut_2_lut_2_lut.init = 16'h2222;
    ORCALUT4 mux_106_i13_4_lut_then_4_lut (.A(baudrate_reg[12]), .B(n87_c[12]), 
            .C(rx_irq_o_N_643), .D(n8660), .Z(n8708)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(196[3] 214[11])
    defparam mux_106_i13_4_lut_then_4_lut.init = 16'hcac0;
    PFUMX i14 (.BLUT(n2949), .ALUT(n6410), .C0(rxb_full_N_674), .Z(n6413));
    ORCALUT4 i3439_2_lut_rep_297 (.A(rx_en), .B(rxd_ff), .Z(n8677)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3439_2_lut_rep_297.init = 16'heeee;
    ORCALUT4 i7374_3_lut_4_lut_4_lut (.A(rx_en), .B(rxd_ff), .C(rxb_full_N_674), 
            .D(n8648), .Z(aclk_c_enable_92)) /* synthesis lut_function=(!(A (C+!(D))+!A (B+(C)))) */ ;
    defparam i7374_3_lut_4_lut_4_lut.init = 16'h0b01;
    ORCALUT4 i7370_3_lut_4_lut (.A(rx_en), .B(rxd_ff), .C(rxb_full_N_674), 
            .D(n8642), .Z(aclk_c_enable_93)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B (C)))) */ ;
    defparam i7370_3_lut_4_lut.init = 16'h0f01;
    ORCALUT4 i3445_3_lut_4_lut (.A(rx_en), .B(rxd_ff), .C(n8642), .D(rx_bitcnt[0]), 
            .Z(rx_bitcnt_3__N_625[0])) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)))) */ ;
    defparam i3445_3_lut_4_lut.init = 16'h11f1;
    ORCALUT4 i3446_2_lut_3_lut_4_lut_4_lut (.A(rx_en), .B(rxd_ff), .C(rx_irq_o_N_643), 
            .D(n8660), .Z(rx_en_N_648)) /* synthesis lut_function=(A (C+(D))+!A !(B)) */ ;
    defparam i3446_2_lut_3_lut_4_lut_4_lut.init = 16'hbbb1;
    ORCALUT4 i7390_2_lut_3_lut (.A(rx_en), .B(rxd_ff), .C(rxb_full_N_674), 
            .Z(n6423)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i7390_2_lut_3_lut.init = 16'h0101;
    ORCALUT4 i972_2_lut_rep_298 (.A(tx_bitcnt[1]), .B(tx_bitcnt[0]), .Z(n8678)) /* synthesis lut_function=(A+(B)) */ ;   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam i972_2_lut_rep_298.init = 16'heeee;
    ORCALUT4 i1_3_lut_rep_278_4_lut (.A(tx_bitcnt[1]), .B(tx_bitcnt[0]), 
            .C(tx_bitcnt[3]), .D(tx_bitcnt[2]), .Z(n8658)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam i1_3_lut_rep_278_4_lut.init = 16'hfffe;
    CCU2B add_180_add_4_17 (.A0(tx_counter[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5689), .S0(n87_adj_892[15]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam add_180_add_4_17.INIT0 = 16'h555a;
    defparam add_180_add_4_17.INIT1 = 16'h0000;
    defparam add_180_add_4_17.INJECT1_0 = "NO";
    defparam add_180_add_4_17.INJECT1_1 = "NO";
    ORCALUT4 i1_3_lut_4_lut_adj_200 (.A(tx_bitcnt[1]), .B(tx_bitcnt[0]), 
            .C(tx_en), .D(tx_bitcnt[2]), .Z(n7359)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam i1_3_lut_4_lut_adj_200.init = 16'h0010;
    ORCALUT4 i1_2_lut_3_lut (.A(tx_bitcnt[1]), .B(tx_bitcnt[0]), .C(tx_bitcnt[2]), 
            .Z(tx_bitcnt_3__N_597[2])) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C))) */ ;   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam i1_2_lut_3_lut.init = 16'he1e1;
    ORCALUT4 mux_106_i14_4_lut_then_4_lut (.A(baudrate_reg[13]), .B(n87_c[13]), 
            .C(rx_irq_o_N_643), .D(n8660), .Z(n8705)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(196[3] 214[11])
    defparam mux_106_i14_4_lut_then_4_lut.init = 16'hcac0;
    ORCALUT4 i1004_2_lut_rep_301 (.A(rx_bitcnt[1]), .B(rx_bitcnt[0]), .Z(n8681)) /* synthesis lut_function=(A+(B)) */ ;   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam i1004_2_lut_rep_301.init = 16'heeee;
    ORCALUT4 i1_3_lut_rep_280_4_lut (.A(rx_bitcnt[1]), .B(rx_bitcnt[0]), 
            .C(rx_bitcnt[3]), .D(rx_bitcnt[2]), .Z(n8660)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam i1_3_lut_rep_280_4_lut.init = 16'hfffe;
    ORCALUT4 i1_2_lut_3_lut_adj_201 (.A(rx_bitcnt[1]), .B(rx_bitcnt[0]), 
            .C(rx_bitcnt[2]), .Z(n2702)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C))) */ ;   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam i1_2_lut_3_lut_adj_201.init = 16'he1e1;
    ORCALUT4 i1012_2_lut_3_lut (.A(rx_bitcnt[1]), .B(rx_bitcnt[0]), .C(rx_bitcnt[2]), 
            .Z(n6)) /* synthesis lut_function=(A+(B+(C))) */ ;   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam i1012_2_lut_3_lut.init = 16'hfefe;
    ORCALUT4 i316_2_lut_rep_302 (.A(tx_en), .B(tx_shift_en), .Z(n8682)) /* synthesis lut_function=(A (B)) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(110[3] 126[10])
    defparam i316_2_lut_rep_302.init = 16'h8888;
    ORCALUT4 mux_106_i13_4_lut_else_4_lut (.A(baudrate_reg[13]), .B(rxd_ff), 
            .Z(n8707)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(196[3] 214[11])
    defparam mux_106_i13_4_lut_else_4_lut.init = 16'h2222;
    ORCALUT4 mux_316_i2_3_lut_4_lut (.A(tx_en), .B(tx_shift_en), .C(tx_shift_reg[2]), 
            .D(system_data_o[0]), .Z(n731)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(110[3] 126[10])
    defparam mux_316_i2_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 mux_316_i3_3_lut_4_lut (.A(tx_en), .B(tx_shift_en), .C(tx_shift_reg[3]), 
            .D(system_data_o[1]), .Z(n732)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(110[3] 126[10])
    defparam mux_316_i3_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 mux_316_i4_3_lut_4_lut (.A(tx_en), .B(tx_shift_en), .C(tx_shift_reg[4]), 
            .D(system_data_o[2]), .Z(n733)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(110[3] 126[10])
    defparam mux_316_i4_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 mux_316_i5_3_lut_4_lut (.A(tx_en), .B(tx_shift_en), .C(tx_shift_reg[5]), 
            .D(system_data_o[3]), .Z(n734)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(110[3] 126[10])
    defparam mux_316_i5_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 mux_316_i6_3_lut_4_lut (.A(tx_en), .B(tx_shift_en), .C(tx_shift_reg[6]), 
            .D(system_data_o[4]), .Z(n735)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(110[3] 126[10])
    defparam mux_316_i6_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 mux_316_i7_3_lut_4_lut (.A(tx_en), .B(tx_shift_en), .C(tx_shift_reg[7]), 
            .D(system_data_o[5]), .Z(n736)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(110[3] 126[10])
    defparam mux_316_i7_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 mux_316_i8_3_lut_4_lut (.A(tx_en), .B(tx_shift_en), .C(tx_shift_reg[8]), 
            .D(system_data_o[6]), .Z(n737)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(110[3] 126[10])
    defparam mux_316_i8_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 mux_316_i9_3_lut_4_lut (.A(tx_en), .B(tx_shift_en), .C(tx_shift_reg[9]), 
            .D(system_data_o[7]), .Z(n738)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(110[3] 126[10])
    defparam mux_316_i9_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 i3596_2_lut_3_lut (.A(tx_en), .B(tx_shift_en), .C(tx_shift_reg[10]), 
            .Z(n739)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(110[3] 126[10])
    defparam i3596_2_lut_3_lut.init = 16'hf7f7;
    ORCALUT4 i7362_2_lut (.A(rxb_full), .B(rxb_full_N_676), .Z(n6410)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i7362_2_lut.init = 16'h2222;
    ORCALUT4 i1_3_lut_4_lut_adj_202 (.A(n8622), .B(\memory_addr[1] ), .C(n8682), 
            .D(n743), .Z(n6714)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(112[4] 119[13])
    defparam i1_3_lut_4_lut_adj_202.init = 16'h0200;
    CCU2B add_180_add_4_15 (.A0(tx_counter[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(tx_counter[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n5688), .COUT(n5689), .S0(n87_adj_892[13]), 
          .S1(n87_adj_892[14]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam add_180_add_4_15.INIT0 = 16'h555a;
    defparam add_180_add_4_15.INIT1 = 16'h555a;
    defparam add_180_add_4_15.INJECT1_0 = "NO";
    defparam add_180_add_4_15.INJECT1_1 = "NO";
    CCU2B add_180_add_4_13 (.A0(tx_counter[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(tx_counter[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n5687), .COUT(n5688), .S0(n87_adj_892[11]), 
          .S1(n87_adj_892[12]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam add_180_add_4_13.INIT0 = 16'h555a;
    defparam add_180_add_4_13.INIT1 = 16'h555a;
    defparam add_180_add_4_13.INJECT1_0 = "NO";
    defparam add_180_add_4_13.INJECT1_1 = "NO";
    ORCALUT4 mux_106_i12_4_lut_then_4_lut (.A(baudrate_reg[11]), .B(n87_c[11]), 
            .C(rx_irq_o_N_643), .D(n8660), .Z(n8711)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(196[3] 214[11])
    defparam mux_106_i12_4_lut_then_4_lut.init = 16'hcac0;
    ORCALUT4 mux_106_i12_4_lut_else_4_lut (.A(baudrate_reg[12]), .B(rxd_ff), 
            .Z(n8710)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(196[3] 214[11])
    defparam mux_106_i12_4_lut_else_4_lut.init = 16'h2222;
    ORCALUT4 i1_4_lut_adj_203 (.A(n7401), .B(tx_en), .C(n8602), .D(n7011), 
            .Z(aclk_c_enable_45)) /* synthesis lut_function=(A (B)+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_203.init = 16'hdccc;
    ORCALUT4 mux_106_i11_4_lut_then_4_lut (.A(baudrate_reg[10]), .B(n87_c[10]), 
            .C(rx_irq_o_N_643), .D(n8660), .Z(n8714)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(196[3] 214[11])
    defparam mux_106_i11_4_lut_then_4_lut.init = 16'hcac0;
    ORCALUT4 mux_106_i11_4_lut_else_4_lut (.A(baudrate_reg[11]), .B(rxd_ff), 
            .Z(n8713)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(196[3] 214[11])
    defparam mux_106_i11_4_lut_else_4_lut.init = 16'h2222;
    ORCALUT4 mux_106_i10_4_lut_then_4_lut (.A(baudrate_reg[9]), .B(n87_c[9]), 
            .C(rx_irq_o_N_643), .D(n8660), .Z(n8717)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(196[3] 214[11])
    defparam mux_106_i10_4_lut_then_4_lut.init = 16'hcac0;
    CCU2B add_180_add_4_11 (.A0(tx_counter[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(tx_counter[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n5686), .COUT(n5687), .S0(n87_adj_892[9]), 
          .S1(n87_adj_892[10]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam add_180_add_4_11.INIT0 = 16'h555a;
    defparam add_180_add_4_11.INIT1 = 16'h555a;
    defparam add_180_add_4_11.INJECT1_0 = "NO";
    defparam add_180_add_4_11.INJECT1_1 = "NO";
    CCU2B add_180_add_4_9 (.A0(tx_counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(tx_counter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n5685), .COUT(n5686), .S0(n87_adj_892[7]), 
          .S1(n87_adj_892[8]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam add_180_add_4_9.INIT0 = 16'h555a;
    defparam add_180_add_4_9.INIT1 = 16'h555a;
    defparam add_180_add_4_9.INJECT1_0 = "NO";
    defparam add_180_add_4_9.INJECT1_1 = "NO";
    ORCALUT4 mux_106_i10_4_lut_else_4_lut (.A(baudrate_reg[10]), .B(rxd_ff), 
            .Z(n8716)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(196[3] 214[11])
    defparam mux_106_i10_4_lut_else_4_lut.init = 16'h2222;
    ORCALUT4 i340_1_lut (.A(rxb_full_N_674), .Z(aclk_c_enable_47)) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(172[2] 216[9])
    defparam i340_1_lut.init = 16'h5555;
    ORCALUT4 i1_3_lut_4_lut_adj_204 (.A(n8621), .B(tx_en), .C(n8616), 
            .D(n8622), .Z(n7077)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_204.init = 16'hfffe;
    ORCALUT4 i1_3_lut_4_lut_adj_205 (.A(n8622), .B(\memory_addr[1] ), .C(n8682), 
            .D(n743), .Z(aclk_c_enable_75)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (C (D))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(112[4] 119[13])
    defparam i1_3_lut_4_lut_adj_205.init = 16'hf200;
    PFUMX i7692 (.BLUT(n8728), .ALUT(n8729), .C0(rx_en), .Z(rx_counter_15__N_609[6]));
    PFUMX i7690 (.BLUT(n8725), .ALUT(n8726), .C0(rx_en), .Z(rx_counter_15__N_609[7]));
    ORCALUT4 i3435_3_lut_4_lut (.A(tx_en), .B(n8649), .C(tx_en_N_534), 
            .D(tx_bitcnt[0]), .Z(tx_bitcnt_3__N_485[0])) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (C+(D))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(151[3] 162[10])
    defparam i3435_3_lut_4_lut.init = 16'hf7f8;
    ORCALUT4 i3598_2_lut_4_lut (.A(n8621), .B(n1996), .C(system_read), 
            .D(\gpio_dir[0] ), .Z(n1162)) /* synthesis lut_function=(A (D)+!A !(B (C+!(D))+!B !(D))) */ ;
    defparam i3598_2_lut_4_lut.init = 16'hbf00;
    ORCALUT4 i1_3_lut_rep_212 (.A(n8621), .B(n1996), .C(system_read), 
            .Z(n8592)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_3_lut_rep_212.init = 16'h4040;
    ORCALUT4 mux_106_i9_4_lut_then_4_lut (.A(baudrate_reg[8]), .B(n87_c[8]), 
            .C(rx_irq_o_N_643), .D(n8660), .Z(n8720)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(196[3] 214[11])
    defparam mux_106_i9_4_lut_then_4_lut.init = 16'hcac0;
    ORCALUT4 mux_106_i9_4_lut_else_4_lut (.A(baudrate_reg[9]), .B(rxd_ff), 
            .Z(n8719)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/lscc/ep16vhdl/uart16.vhd(196[3] 214[11])
    defparam mux_106_i9_4_lut_else_4_lut.init = 16'h2222;
    
endmodule
//
// Verilog Description of module ram_memory
//

module ram_memory (aclk_N_55, VCC_net, GND_net, system_write, \memory_addr[11] , 
            \memory_addr[10] , \memory_addr[9] , \memory_addr[8] , n8616, 
            n8615, \memory_addr[5] , \memory_addr[4] , n8617, n8621, 
            \memory_addr[1] , n8622, memory_data_i, memory_data_o);
    input aclk_N_55;
    input VCC_net;
    input GND_net;
    input system_write;
    input \memory_addr[11] ;
    input \memory_addr[10] ;
    input \memory_addr[9] ;
    input \memory_addr[8] ;
    input n8616;
    input n8615;
    input \memory_addr[5] ;
    input \memory_addr[4] ;
    input n8617;
    input n8621;
    input \memory_addr[1] ;
    input n8622;
    input [15:0]memory_data_i;
    output [15:0]memory_data_o;
    
    wire aclk_N_55 /* synthesis is_clock=1 */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(121[9:14])
    
    DP16KB ram_memory_0_3_0 (.DIA0(memory_data_i[12]), .DIA1(memory_data_i[13]), 
           .DIA2(memory_data_i[14]), .DIA3(memory_data_i[15]), .DIA4(GND_net), 
           .DIA5(GND_net), .DIA6(GND_net), .DIA7(GND_net), .DIA8(GND_net), 
           .DIA9(GND_net), .DIA10(GND_net), .DIA11(GND_net), .DIA12(GND_net), 
           .DIA13(GND_net), .DIA14(GND_net), .DIA15(GND_net), .DIA16(GND_net), 
           .DIA17(GND_net), .ADA0(GND_net), .ADA1(GND_net), .ADA2(n8622), 
           .ADA3(\memory_addr[1] ), .ADA4(n8621), .ADA5(n8617), .ADA6(\memory_addr[4] ), 
           .ADA7(\memory_addr[5] ), .ADA8(n8615), .ADA9(n8616), .ADA10(\memory_addr[8] ), 
           .ADA11(\memory_addr[9] ), .ADA12(\memory_addr[10] ), .ADA13(\memory_addr[11] ), 
           .CEA(VCC_net), .CLKA(aclk_N_55), .WEA(system_write), .CSA0(GND_net), 
           .CSA1(GND_net), .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), 
           .DIB1(GND_net), .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), 
           .DIB5(GND_net), .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), 
           .DIB9(GND_net), .DIB10(GND_net), .DIB11(GND_net), .DIB12(GND_net), 
           .DIB13(GND_net), .DIB14(GND_net), .DIB15(GND_net), .DIB16(GND_net), 
           .DIB17(GND_net), .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), 
           .ADB3(GND_net), .ADB4(GND_net), .ADB5(GND_net), .ADB6(GND_net), 
           .ADB7(GND_net), .ADB8(GND_net), .ADB9(GND_net), .ADB10(GND_net), 
           .ADB11(GND_net), .ADB12(GND_net), .ADB13(GND_net), .CEB(VCC_net), 
           .CLKB(GND_net), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
           .CSB2(GND_net), .RSTB(GND_net), .DOA0(memory_data_o[12]), .DOA1(memory_data_o[13]), 
           .DOA2(memory_data_o[14]), .DOA3(memory_data_o[15])) /* synthesis MEM_LPC_FILE="ram_memory.lpc", MEM_INIT_FILE="mem.mif", INITVAL_3F="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_3E="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_3D="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_3C="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_3B="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_3A="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_39="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_38="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_37="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_36="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_35="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_34="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_33="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_32="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_31="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_30="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_2F="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_2E="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_2D="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_2C="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_2B="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_2A="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_29="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_28="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_27="0x00000000000000000000000C00AA401AA501A8401E04401C5401CF50A8081E0301DE0301CEE00A30", INITVAL_26="0x11CF50A08E180401A0C2016F00400A00800140301F4030100C00A440185401A201EA5301CF00880E", INITVAL_25="0x1E04501CE0060FE1C0501DC0501E401E40F08A4401C040808A000A40884401E00144080140A0A080", INITVAL_24="0x000A0040F00140E008401000A140040A8401000A000440AA080000A000540808000004080E801E00", INITVAL_23="0x014020100F0000A0040801E00014050880E1E0440A0E000850100EF0005401CF001E540100000855", INITVAL_22="0x01008140440808011400080801140408808010A008A501009A00054010001F45401AEF000040A080", INITVAL_21="0x08840014040880000000000A00000A0043600000088080000A05CF001CF00146A014F0000A91E00A", INITVAL_20="0x0140E1C0A01600A01480150FA014801E00A014EF000CC0140D000F001E0001E001F4000140508840", INITVAL_1F="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_1E="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_1D="0x0000000000000000000F0140A1E0AF1500000045080F9010080140A000000000001C8F000450100A", INITVAL_1C="0x1E0B01C0B00140A0140A01E0A01E0A0080B01A0C01E8015C801C00008A0801E0F120A01C0A0176BB", INITVAL_1B="0x176BB176BF00020110FA000E801E0A00A5501E800140901408000800108E1C0A0008501000D01CF0", INITVAL_1A="0x0144201CF81DE8F150D01DCE81E0A40860F01E90014081E00A01E0A008401120A000AE11E0001C26", INITVAL_19="0x010000060B000A501000010A30100A0145408008010001F00011E8D01E80000450840011CF015EB0", INITVAL_18="0x1C0A01C08E0C40F00C47000F01500E08A4300EA008820100A0000A204080014A40AA40100A015C44", INITVAL_17="0x08808000540A8501E0A01C0201A0A5088001100004080000B0014040A08001E800148E0004401000", INITVAL_16="0x080801400A0840B000A500088000F81E0660CC6601A0F1000008A4404000000A01E0A01EA5401E00", INITVAL_15="0x01CF0100760C08001454080F001E0A000A00A8501E0A0008540100D1F00801000140D01C08E1DCE0", INITVAL_14="0x0EC601DCF8010001500A100E008C0015C0E0AA08000A001EA00148E1FE05010001464401CF01DEFF", INITVAL_13="0x1D0DF1F4881FEAF1D00F000A81E0A81DEAE11EED014B015CF00CC00152E8000DF1D4FE11E0308A08", INITVAL_12="0x01A0E068401000A000050A080014001DE00140AE1DC001400A088501A0A0014A0140D0140F40AA08", INITVAL_11="0x01AE015C0A1C0AE11C9015008000A01A0CE014EE1DC0E120A81800A140AF1000F01EA81C0A20EC20", INITVAL_10="0x100F301000010080140A040800000000A080000D1C0001EA50100001BC0F0040801CF00E40800E20", INITVAL_0F="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_0E="0x000000000E1FA0D000AE1C00F1C460100000140401E901400E11E050A0800140408A0F120E81E00E", INITVAL_0D="0x1EA4401000148450160E1DC0A1FC8E1E0C81FE9D01A0A01CF80140A1DEA801EEF01AEE1E00A1DEEF", INITVAL_0C="0x01CF01000F1DE0F014340880801CEC000A0140A8000A01A0F00A8401600A088440160014A401000E", INITVAL_0B="0x0000E0EE0015C0A01E02010001500008A08110E0004080000A040F015EA0140440100A00030100EF", INITVAL_0A="0x01C0A0A854000A01400A0A84011E9F010F001C240AA0D000A0040FF116F8014901500A1A00A100A0", INITVAL_09="0x11CBF0140E048501F20B1DCE81DEEF008401F20A014FA1F0F4088081F00F00A4508080148500140A", INITVAL_08="0x08A0801405080801F0000140A0A8301DE00040801C0F408408010E001CF01E0EE1C0401E0201DECC", INITVAL_07="0x198C01E45011CD01DE8E01CDE100FE01E0C11C0E0884011E0201E040808F1A0DD1BADD014F018042", INITVAL_06="0x010EF1E0C008450100D0180AE0085501EEF100FE1DC4401EEF100EE1CA40100D01900F100EE1C608", INITVAL_05="0x01A0C100EF100EE1C05011EA81F4040808F150FA0A8081F4040600A1FA0B014EF1E03017AFD01CFF", INITVAL_04="0x0080F150E81A608018881CA40100EE100AC08844010E81C053000A81D0D20A0FA11C8C0060E0AA40", INITVAL_03="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_02="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_01="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_00="0x00000000000000000000000000000000000000000000000000000000000000000000000000500000", CSDECODE_B="0b111", CSDECODE_A="0b000", WRITEMODE_B="NORMAL", WRITEMODE_A="NORMAL", GSR="DISABLED", RESETMODE="SYNC", REGMODE_B="NOREG", REGMODE_A="NOREG", DATA_WIDTH_B="4", DATA_WIDTH_A="4", syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=16, LSE_RCOL=26, LSE_LLINE=237, LSE_RLINE=237 */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(237[16:26])
    defparam ram_memory_0_3_0.DATA_WIDTH_A = 4;
    defparam ram_memory_0_3_0.DATA_WIDTH_B = 4;
    defparam ram_memory_0_3_0.REGMODE_A = "NOREG";
    defparam ram_memory_0_3_0.REGMODE_B = "NOREG";
    defparam ram_memory_0_3_0.RESETMODE = "SYNC";
    defparam ram_memory_0_3_0.CSDECODE_A = 3'b000;
    defparam ram_memory_0_3_0.CSDECODE_B = 3'b111;
    defparam ram_memory_0_3_0.WRITEMODE_A = "NORMAL";
    defparam ram_memory_0_3_0.WRITEMODE_B = "NORMAL";
    defparam ram_memory_0_3_0.GSR = "DISABLED";
    defparam ram_memory_0_3_0.INITVAL_00 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000500000;
    defparam ram_memory_0_3_0.INITVAL_01 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_3_0.INITVAL_02 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_3_0.INITVAL_03 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_3_0.INITVAL_04 = 320'h0080F150E81A608018881CA40100EE100AC08844010E81C053000A81D0D20A0FA11C8C0060E0AA40;
    defparam ram_memory_0_3_0.INITVAL_05 = 320'h01A0C100EF100EE1C05011EA81F4040808F150FA0A8081F4040600A1FA0B014EF1E03017AFD01CFF;
    defparam ram_memory_0_3_0.INITVAL_06 = 320'h010EF1E0C008450100D0180AE0085501EEF100FE1DC4401EEF100EE1CA40100D01900F100EE1C608;
    defparam ram_memory_0_3_0.INITVAL_07 = 320'h198C01E45011CD01DE8E01CDE100FE01E0C11C0E0884011E0201E040808F1A0DD1BADD014F018042;
    defparam ram_memory_0_3_0.INITVAL_08 = 320'h08A0801405080801F0000140A0A8301DE00040801C0F408408010E001CF01E0EE1C0401E0201DECC;
    defparam ram_memory_0_3_0.INITVAL_09 = 320'h11CBF0140E048501F20B1DCE81DEEF008401F20A014FA1F0F4088081F00F00A4508080148500140A;
    defparam ram_memory_0_3_0.INITVAL_0A = 320'h01C0A0A854000A01400A0A84011E9F010F001C240AA0D000A0040FF116F8014901500A1A00A100A0;
    defparam ram_memory_0_3_0.INITVAL_0B = 320'h0000E0EE0015C0A01E02010001500008A08110E0004080000A040F015EA0140440100A00030100EF;
    defparam ram_memory_0_3_0.INITVAL_0C = 320'h01CF01000F1DE0F014340880801CEC000A0140A8000A01A0F00A8401600A088440160014A401000E;
    defparam ram_memory_0_3_0.INITVAL_0D = 320'h1EA4401000148450160E1DC0A1FC8E1E0C81FE9D01A0A01CF80140A1DEA801EEF01AEE1E00A1DEEF;
    defparam ram_memory_0_3_0.INITVAL_0E = 320'h000000000E1FA0D000AE1C00F1C460100000140401E901400E11E050A0800140408A0F120E81E00E;
    defparam ram_memory_0_3_0.INITVAL_0F = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_3_0.INITVAL_10 = 320'h100F301000010080140A040800000000A080000D1C0001EA50100001BC0F0040801CF00E40800E20;
    defparam ram_memory_0_3_0.INITVAL_11 = 320'h01AE015C0A1C0AE11C9015008000A01A0CE014EE1DC0E120A81800A140AF1000F01EA81C0A20EC20;
    defparam ram_memory_0_3_0.INITVAL_12 = 320'h01A0E068401000A000050A080014001DE00140AE1DC001400A088501A0A0014A0140D0140F40AA08;
    defparam ram_memory_0_3_0.INITVAL_13 = 320'h1D0DF1F4881FEAF1D00F000A81E0A81DEAE11EED014B015CF00CC00152E8000DF1D4FE11E0308A08;
    defparam ram_memory_0_3_0.INITVAL_14 = 320'h0EC601DCF8010001500A100E008C0015C0E0AA08000A001EA00148E1FE05010001464401CF01DEFF;
    defparam ram_memory_0_3_0.INITVAL_15 = 320'h01CF0100760C08001454080F001E0A000A00A8501E0A0008540100D1F00801000140D01C08E1DCE0;
    defparam ram_memory_0_3_0.INITVAL_16 = 320'h080801400A0840B000A500088000F81E0660CC6601A0F1000008A4404000000A01E0A01EA5401E00;
    defparam ram_memory_0_3_0.INITVAL_17 = 320'h08808000540A8501E0A01C0201A0A5088001100004080000B0014040A08001E800148E0004401000;
    defparam ram_memory_0_3_0.INITVAL_18 = 320'h1C0A01C08E0C40F00C47000F01500E08A4300EA008820100A0000A204080014A40AA40100A015C44;
    defparam ram_memory_0_3_0.INITVAL_19 = 320'h010000060B000A501000010A30100A0145408008010001F00011E8D01E80000450840011CF015EB0;
    defparam ram_memory_0_3_0.INITVAL_1A = 320'h0144201CF81DE8F150D01DCE81E0A40860F01E90014081E00A01E0A008401120A000AE11E0001C26;
    defparam ram_memory_0_3_0.INITVAL_1B = 320'h176BB176BF00020110FA000E801E0A00A5501E800140901408000800108E1C0A0008501000D01CF0;
    defparam ram_memory_0_3_0.INITVAL_1C = 320'h1E0B01C0B00140A0140A01E0A01E0A0080B01A0C01E8015C801C00008A0801E0F120A01C0A0176BB;
    defparam ram_memory_0_3_0.INITVAL_1D = 320'h0000000000000000000F0140A1E0AF1500000045080F9010080140A000000000001C8F000450100A;
    defparam ram_memory_0_3_0.INITVAL_1E = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_3_0.INITVAL_1F = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_3_0.INITVAL_20 = 320'h0140E1C0A01600A01480150FA014801E00A014EF000CC0140D000F001E0001E001F4000140508840;
    defparam ram_memory_0_3_0.INITVAL_21 = 320'h08840014040880000000000A00000A0043600000088080000A05CF001CF00146A014F0000A91E00A;
    defparam ram_memory_0_3_0.INITVAL_22 = 320'h01008140440808011400080801140408808010A008A501009A00054010001F45401AEF000040A080;
    defparam ram_memory_0_3_0.INITVAL_23 = 320'h014020100F0000A0040801E00014050880E1E0440A0E000850100EF0005401CF001E540100000855;
    defparam ram_memory_0_3_0.INITVAL_24 = 320'h000A0040F00140E008401000A140040A8401000A000440AA080000A000540808000004080E801E00;
    defparam ram_memory_0_3_0.INITVAL_25 = 320'h1E04501CE0060FE1C0501DC0501E401E40F08A4401C040808A000A40884401E00144080140A0A080;
    defparam ram_memory_0_3_0.INITVAL_26 = 320'h11CF50A08E180401A0C2016F00400A00800140301F4030100C00A440185401A201EA5301CF00880E;
    defparam ram_memory_0_3_0.INITVAL_27 = 320'h00000000000000000000000C00AA401AA501A8401E04401C5401CF50A8081E0301DE0301CEE00A30;
    defparam ram_memory_0_3_0.INITVAL_28 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_3_0.INITVAL_29 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_3_0.INITVAL_2A = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_3_0.INITVAL_2B = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_3_0.INITVAL_2C = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_3_0.INITVAL_2D = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_3_0.INITVAL_2E = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_3_0.INITVAL_2F = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_3_0.INITVAL_30 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_3_0.INITVAL_31 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_3_0.INITVAL_32 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_3_0.INITVAL_33 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_3_0.INITVAL_34 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_3_0.INITVAL_35 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_3_0.INITVAL_36 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_3_0.INITVAL_37 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_3_0.INITVAL_38 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_3_0.INITVAL_39 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_3_0.INITVAL_3A = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_3_0.INITVAL_3B = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_3_0.INITVAL_3C = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_3_0.INITVAL_3D = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_3_0.INITVAL_3E = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_3_0.INITVAL_3F = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    DP16KB ram_memory_0_1_2 (.DIA0(memory_data_i[4]), .DIA1(memory_data_i[5]), 
           .DIA2(memory_data_i[6]), .DIA3(memory_data_i[7]), .DIA4(GND_net), 
           .DIA5(GND_net), .DIA6(GND_net), .DIA7(GND_net), .DIA8(GND_net), 
           .DIA9(GND_net), .DIA10(GND_net), .DIA11(GND_net), .DIA12(GND_net), 
           .DIA13(GND_net), .DIA14(GND_net), .DIA15(GND_net), .DIA16(GND_net), 
           .DIA17(GND_net), .ADA0(GND_net), .ADA1(GND_net), .ADA2(n8622), 
           .ADA3(\memory_addr[1] ), .ADA4(n8621), .ADA5(n8617), .ADA6(\memory_addr[4] ), 
           .ADA7(\memory_addr[5] ), .ADA8(n8615), .ADA9(n8616), .ADA10(\memory_addr[8] ), 
           .ADA11(\memory_addr[9] ), .ADA12(\memory_addr[10] ), .ADA13(\memory_addr[11] ), 
           .CEA(VCC_net), .CLKA(aclk_N_55), .WEA(system_write), .CSA0(GND_net), 
           .CSA1(GND_net), .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), 
           .DIB1(GND_net), .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), 
           .DIB5(GND_net), .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), 
           .DIB9(GND_net), .DIB10(GND_net), .DIB11(GND_net), .DIB12(GND_net), 
           .DIB13(GND_net), .DIB14(GND_net), .DIB15(GND_net), .DIB16(GND_net), 
           .DIB17(GND_net), .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), 
           .ADB3(GND_net), .ADB4(GND_net), .ADB5(GND_net), .ADB6(GND_net), 
           .ADB7(GND_net), .ADB8(GND_net), .ADB9(GND_net), .ADB10(GND_net), 
           .ADB11(GND_net), .ADB12(GND_net), .ADB13(GND_net), .CEB(VCC_net), 
           .CLKB(GND_net), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
           .CSB2(GND_net), .RSTB(GND_net), .DOA0(memory_data_o[4]), .DOA1(memory_data_o[5]), 
           .DOA2(memory_data_o[6]), .DOA3(memory_data_o[7])) /* synthesis MEM_LPC_FILE="ram_memory.lpc", MEM_INIT_FILE="mem.mif", INITVAL_3F="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_3E="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_3D="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_3C="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_3B="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_3A="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_39="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_38="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_37="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_36="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_35="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_34="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_33="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_32="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_31="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_30="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_2F="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_2E="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_2D="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_2C="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_2B="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_2A="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_29="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_28="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_27="0x00000000000000000000000350880E0680E0680D06A501A6501A034080CD0480C1D020180B90A80B", INITVAL_26="0x1A294016DB12A0B060E01467201423080A01C4091FC2013A050884012640106081C840104550A073", INITVAL_25="0x16A500F0B500E3916806116300CC061C0630A8500BC5500ADE050550884009C821B04D0542A106D9", INITVAL_24="0x104D2106EB0542D0A8021BCE91A0540A8011BC0D028440800D1C40D00845000D60724401E3D03E32", INITVAL_23="0x01A281FA1F0640D050ED03E320FA25090D31764411A3B0888D1B0DB16848186B817A4819A8A0A848", INITVAL_22="0x17AE01B044114DE01A84114DE012740909D1C097088891BC090EA4811A8E1BA4811CAB0F04410ED3", INITVAL_21="0x088871F4550805D152FD184DD1B82D0E650014040800D1600509CBF00ABF01A68074A300A441A20D", INITVAL_20="0x0126A0A8580B06505A371A6FD07A200A27D0167B00041082F50C84108A1100A101FA000CA4408805", INITVAL_1F="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_1E="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_1D="0x000000000000000000830542A0E4AF1EE1012A440083414A750160F13EDD1BADD1945D1484005A2A", INITVAL_1C="0x1E4020B8D200A2A0542A08E2804A2A0801304A0E09A101F4110AC44080FD14E4D000F31A4941B4AA", INITVAL_1B="0x154AA154AA08A0E1BCFF16EDF02E2D14840186C301A6C01EBD034D705A051449A1C80B1AE9D0203A", INITVAL_1A="0x07A4015CBA1D6BF1F6DB0369B0E4D40809E0409801AAA1BA0D01A2A0AA081B00F020DA11A7100A60", INITVAL_19="0x0FA7312073048500DA6B1DAD80DA2A054550088D00C330BAE20A65D10C5100844080381B4B215E52", INITVAL_18="0x0A4AB1A44A0402304C60012331460D0A85003EA2088011A4AB164D2000DE1DAD40888F1A0FE1AA45", INITVAL_17="0x080FD1DC440888E1C4A00A60E1C4A4080D81BC0901ADC0D6D214A55018DB0FAC505ACA1285017AA4", INITVAL_16="0x000C31A495080B305258130DA0665D06E620CE600FA46142050AA540107A0C6D9066A71A8500E6A7", INITVAL_15="0x1223A1047600CD505A5400CE20082A08AD40AA05064A40A85007A050E82504A751A0520AC51172F7", INITVAL_14="0x0CC020669D026221A609060550A0201D46D0801D0C0D605EE601A2716E4001AD21A8401A6BB1BE51", INITVAL_13="0x1FCDF1FCFD03EF11FEC7040EF1E0EE126BA1EE39010520AAB60C0C0078ED0205712EF11BA94080BD", INITVAL_12="0x00A9A0880A1AE0F07044012D701E351B6030A6A1172911B02D088081C4A401E120A452148D50804D", INITVAL_11="0x00A101C20F020FF0F2601EE06064520A0EA054391A60E0A0F51A00F0247D0C62605EE7124A60EE03", INITVAL_10="0x1A67005A971FA230122A004D90FEEC0401D130050FEEC1A4001B2800AEFD0A00D1223A0400D1440A", INITVAL_0F="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_0E="0x000000000817E0401EAA0B43502C0A1AC6000A50126901EC2A13A45010D705A540A07310CD81B205", INITVAL_0D="0x16A400FA621A850046251FA0D1E26D160561A25D0000D04AB603A2513EF603E1B00A931262D15E5B", INITVAL_0C="0x00AB00862602605054540A01D0E2B9100D01E012100700A653088000640508840006210A80F1BEED", INITVAL_0B="0x1D8290E0F01C24D04A301DAC21BC04080DD1DCDD0A0DD1962A018E215EF21484019A2A0840B1B6DB", INITVAL_0A="0x1660908A50146E017007088091BEAD094D90924408094002A200E0D13A69054801F00F0A00E104A4", INITVAL_09="0x112F505408088061CC05036971B69B088051CA0F01EA10ACD50804D06A1708A44008D2148030BC2A", INITVAL_08="0x0803D05444004D50A6A20EA7B088021D612002DE1A0D40400D042DF05AB21A01B1240007E0F07E77", INITVAL_07="0x0EE700A80D1A690016FD17AD51C05D05A051D20D0840D1BEC01A6C4018D10A0CD1BADD01AB00A840", INITVAL_06="0x178DB120540880A1AE101C0F108840126DB1501117240126DB1301B128081A0D01DA0D1001B1207D", INITVAL_05="0x01A0E1A0FB0E01B126061A0A60145400AD014C0A0805D01454008FA074F41F4B314803050061F43A", INITVAL_04="0x0603F07A531A02D00AD3068021A053040F90A84003A311AA400003D0A254000F31AA0D0600308800", INITVAL_03="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_02="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_01="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_00="0x00000000000000000000000E001A9E1DC0A000000000000000000000000000000000000000400006", CSDECODE_B="0b111", CSDECODE_A="0b000", WRITEMODE_B="NORMAL", WRITEMODE_A="NORMAL", GSR="DISABLED", RESETMODE="SYNC", REGMODE_B="NOREG", REGMODE_A="NOREG", DATA_WIDTH_B="4", DATA_WIDTH_A="4", syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=16, LSE_RCOL=26, LSE_LLINE=237, LSE_RLINE=237 */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(237[16:26])
    defparam ram_memory_0_1_2.DATA_WIDTH_A = 4;
    defparam ram_memory_0_1_2.DATA_WIDTH_B = 4;
    defparam ram_memory_0_1_2.REGMODE_A = "NOREG";
    defparam ram_memory_0_1_2.REGMODE_B = "NOREG";
    defparam ram_memory_0_1_2.RESETMODE = "SYNC";
    defparam ram_memory_0_1_2.CSDECODE_A = 3'b000;
    defparam ram_memory_0_1_2.CSDECODE_B = 3'b111;
    defparam ram_memory_0_1_2.WRITEMODE_A = "NORMAL";
    defparam ram_memory_0_1_2.WRITEMODE_B = "NORMAL";
    defparam ram_memory_0_1_2.GSR = "DISABLED";
    defparam ram_memory_0_1_2.INITVAL_00 = 320'h00000000000000000000000E001A9E1DC0A000000000000000000000000000000000000000400006;
    defparam ram_memory_0_1_2.INITVAL_01 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_1_2.INITVAL_02 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_1_2.INITVAL_03 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_1_2.INITVAL_04 = 320'h0603F07A531A02D00AD3068021A053040F90A84003A311AA400003D0A254000F31AA0D0600308800;
    defparam ram_memory_0_1_2.INITVAL_05 = 320'h01A0E1A0FB0E01B126061A0A60145400AD014C0A0805D01454008FA074F41F4B314803050061F43A;
    defparam ram_memory_0_1_2.INITVAL_06 = 320'h178DB120540880A1AE101C0F108840126DB1501117240126DB1301B128081A0D01DA0D1001B1207D;
    defparam ram_memory_0_1_2.INITVAL_07 = 320'h0EE700A80D1A690016FD17AD51C05D05A051D20D0840D1BEC01A6C4018D10A0CD1BADD01AB00A840;
    defparam ram_memory_0_1_2.INITVAL_08 = 320'h0803D05444004D50A6A20EA7B088021D612002DE1A0D40400D042DF05AB21A01B1240007E0F07E77;
    defparam ram_memory_0_1_2.INITVAL_09 = 320'h112F505408088061CC05036971B69B088051CA0F01EA10ACD50804D06A1708A44008D2148030BC2A;
    defparam ram_memory_0_1_2.INITVAL_0A = 320'h1660908A50146E017007088091BEAD094D90924408094002A200E0D13A69054801F00F0A00E104A4;
    defparam ram_memory_0_1_2.INITVAL_0B = 320'h1D8290E0F01C24D04A301DAC21BC04080DD1DCDD0A0DD1962A018E215EF21484019A2A0840B1B6DB;
    defparam ram_memory_0_1_2.INITVAL_0C = 320'h00AB00862602605054540A01D0E2B9100D01E012100700A653088000640508840006210A80F1BEED;
    defparam ram_memory_0_1_2.INITVAL_0D = 320'h16A400FA621A850046251FA0D1E26D160561A25D0000D04AB603A2513EF603E1B00A931262D15E5B;
    defparam ram_memory_0_1_2.INITVAL_0E = 320'h000000000817E0401EAA0B43502C0A1AC6000A50126901EC2A13A45010D705A540A07310CD81B205;
    defparam ram_memory_0_1_2.INITVAL_0F = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_1_2.INITVAL_10 = 320'h1A67005A971FA230122A004D90FEEC0401D130050FEEC1A4001B2800AEFD0A00D1223A0400D1440A;
    defparam ram_memory_0_1_2.INITVAL_11 = 320'h00A101C20F020FF0F2601EE06064520A0EA054391A60E0A0F51A00F0247D0C62605EE7124A60EE03;
    defparam ram_memory_0_1_2.INITVAL_12 = 320'h00A9A0880A1AE0F07044012D701E351B6030A6A1172911B02D088081C4A401E120A452148D50804D;
    defparam ram_memory_0_1_2.INITVAL_13 = 320'h1FCDF1FCFD03EF11FEC7040EF1E0EE126BA1EE39010520AAB60C0C0078ED0205712EF11BA94080BD;
    defparam ram_memory_0_1_2.INITVAL_14 = 320'h0CC020669D026221A609060550A0201D46D0801D0C0D605EE601A2716E4001AD21A8401A6BB1BE51;
    defparam ram_memory_0_1_2.INITVAL_15 = 320'h1223A1047600CD505A5400CE20082A08AD40AA05064A40A85007A050E82504A751A0520AC51172F7;
    defparam ram_memory_0_1_2.INITVAL_16 = 320'h000C31A495080B305258130DA0665D06E620CE600FA46142050AA540107A0C6D9066A71A8500E6A7;
    defparam ram_memory_0_1_2.INITVAL_17 = 320'h080FD1DC440888E1C4A00A60E1C4A4080D81BC0901ADC0D6D214A55018DB0FAC505ACA1285017AA4;
    defparam ram_memory_0_1_2.INITVAL_18 = 320'h0A4AB1A44A0402304C60012331460D0A85003EA2088011A4AB164D2000DE1DAD40888F1A0FE1AA45;
    defparam ram_memory_0_1_2.INITVAL_19 = 320'h0FA7312073048500DA6B1DAD80DA2A054550088D00C330BAE20A65D10C5100844080381B4B215E52;
    defparam ram_memory_0_1_2.INITVAL_1A = 320'h07A4015CBA1D6BF1F6DB0369B0E4D40809E0409801AAA1BA0D01A2A0AA081B00F020DA11A7100A60;
    defparam ram_memory_0_1_2.INITVAL_1B = 320'h154AA154AA08A0E1BCFF16EDF02E2D14840186C301A6C01EBD034D705A051449A1C80B1AE9D0203A;
    defparam ram_memory_0_1_2.INITVAL_1C = 320'h1E4020B8D200A2A0542A08E2804A2A0801304A0E09A101F4110AC44080FD14E4D000F31A4941B4AA;
    defparam ram_memory_0_1_2.INITVAL_1D = 320'h000000000000000000830542A0E4AF1EE1012A440083414A750160F13EDD1BADD1945D1484005A2A;
    defparam ram_memory_0_1_2.INITVAL_1E = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_1_2.INITVAL_1F = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_1_2.INITVAL_20 = 320'h0126A0A8580B06505A371A6FD07A200A27D0167B00041082F50C84108A1100A101FA000CA4408805;
    defparam ram_memory_0_1_2.INITVAL_21 = 320'h088871F4550805D152FD184DD1B82D0E650014040800D1600509CBF00ABF01A68074A300A441A20D;
    defparam ram_memory_0_1_2.INITVAL_22 = 320'h17AE01B044114DE01A84114DE012740909D1C097088891BC090EA4811A8E1BA4811CAB0F04410ED3;
    defparam ram_memory_0_1_2.INITVAL_23 = 320'h01A281FA1F0640D050ED03E320FA25090D31764411A3B0888D1B0DB16848186B817A4819A8A0A848;
    defparam ram_memory_0_1_2.INITVAL_24 = 320'h104D2106EB0542D0A8021BCE91A0540A8011BC0D028440800D1C40D00845000D60724401E3D03E32;
    defparam ram_memory_0_1_2.INITVAL_25 = 320'h16A500F0B500E3916806116300CC061C0630A8500BC5500ADE050550884009C821B04D0542A106D9;
    defparam ram_memory_0_1_2.INITVAL_26 = 320'h1A294016DB12A0B060E01467201423080A01C4091FC2013A050884012640106081C840104550A073;
    defparam ram_memory_0_1_2.INITVAL_27 = 320'h00000000000000000000000350880E0680E0680D06A501A6501A034080CD0480C1D020180B90A80B;
    defparam ram_memory_0_1_2.INITVAL_28 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_1_2.INITVAL_29 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_1_2.INITVAL_2A = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_1_2.INITVAL_2B = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_1_2.INITVAL_2C = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_1_2.INITVAL_2D = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_1_2.INITVAL_2E = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_1_2.INITVAL_2F = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_1_2.INITVAL_30 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_1_2.INITVAL_31 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_1_2.INITVAL_32 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_1_2.INITVAL_33 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_1_2.INITVAL_34 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_1_2.INITVAL_35 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_1_2.INITVAL_36 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_1_2.INITVAL_37 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_1_2.INITVAL_38 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_1_2.INITVAL_39 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_1_2.INITVAL_3A = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_1_2.INITVAL_3B = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_1_2.INITVAL_3C = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_1_2.INITVAL_3D = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_1_2.INITVAL_3E = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_1_2.INITVAL_3F = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    DP16KB ram_memory_0_0_3 (.DIA0(memory_data_i[0]), .DIA1(memory_data_i[1]), 
           .DIA2(memory_data_i[2]), .DIA3(memory_data_i[3]), .DIA4(GND_net), 
           .DIA5(GND_net), .DIA6(GND_net), .DIA7(GND_net), .DIA8(GND_net), 
           .DIA9(GND_net), .DIA10(GND_net), .DIA11(GND_net), .DIA12(GND_net), 
           .DIA13(GND_net), .DIA14(GND_net), .DIA15(GND_net), .DIA16(GND_net), 
           .DIA17(GND_net), .ADA0(GND_net), .ADA1(GND_net), .ADA2(n8622), 
           .ADA3(\memory_addr[1] ), .ADA4(n8621), .ADA5(n8617), .ADA6(\memory_addr[4] ), 
           .ADA7(\memory_addr[5] ), .ADA8(n8615), .ADA9(n8616), .ADA10(\memory_addr[8] ), 
           .ADA11(\memory_addr[9] ), .ADA12(\memory_addr[10] ), .ADA13(\memory_addr[11] ), 
           .CEA(VCC_net), .CLKA(aclk_N_55), .WEA(system_write), .CSA0(GND_net), 
           .CSA1(GND_net), .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), 
           .DIB1(GND_net), .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), 
           .DIB5(GND_net), .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), 
           .DIB9(GND_net), .DIB10(GND_net), .DIB11(GND_net), .DIB12(GND_net), 
           .DIB13(GND_net), .DIB14(GND_net), .DIB15(GND_net), .DIB16(GND_net), 
           .DIB17(GND_net), .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), 
           .ADB3(GND_net), .ADB4(GND_net), .ADB5(GND_net), .ADB6(GND_net), 
           .ADB7(GND_net), .ADB8(GND_net), .ADB9(GND_net), .ADB10(GND_net), 
           .ADB11(GND_net), .ADB12(GND_net), .ADB13(GND_net), .CEB(VCC_net), 
           .CLKB(GND_net), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
           .CSB2(GND_net), .RSTB(GND_net), .DOA0(memory_data_o[0]), .DOA1(memory_data_o[1]), 
           .DOA2(memory_data_o[2]), .DOA3(memory_data_o[3])) /* synthesis MEM_LPC_FILE="ram_memory.lpc", MEM_INIT_FILE="mem.mif", INITVAL_3F="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_3E="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_3D="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_3C="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_3B="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_3A="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_39="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_38="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_37="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_36="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_35="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_34="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_33="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_32="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_31="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_30="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_2F="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_2E="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_2D="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_2C="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_2B="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_2A="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_29="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_28="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_27="0x00000000000000000000000E40BC651DE311DC3C1C02411C53042CE1EADE1602803A120228C0084B", INITVAL_26="0x1D2DF06AE0004201C2A117C7104C0E184110362C1E2D209C170A25601CF31BC1803E45042D20C8CE", INITVAL_25="0x100740E2C2042E91002C030E2122160220E0868716248080EF100D412AD9142591C23E05E3B036E6", INITVAL_24="0x0B2E80421C1161E07E451DCEE1D44107E8A1DC0E06A29030FE1C25E14A120CEE61105F098EE0BCA1", INITVAL_23="0x11C2205C5E1423E0446E0BCA117C2204CFE102C80B2E11D0401CCE814AC411C8015C6301C6908A56", INITVAL_22="0x0FCE01C0180BEEE01C0604CEE01CA90EADE1C0EA13C541DC0E1485419C0E1DCF3062B8140E809AEA", INITVAL_21="0x12A561E2430CCE604C281FCE810EDE0CC06104641E81E1200E0748B01C8B01CDA012D0060A01C21E", INITVAL_20="0x15C1A19AC01A08D03C441C4FE1FCC01C20E06A480D0A51F8051FEA107C1107C181DC800BC5F0F28F", INITVAL_1F="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_1E="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_1D="0x0000000000000000007E11E6F14EFF142BB1087F0C8EA0587B0FC1A0C488110880F6CE048540DC4F", INITVAL_1C="0x106A21AEE201A3F0364F0182A07A4B1642E03A1A01C611DEEA080040A85E05C0E0E2ED1C2E01DADD", INITVAL_1B="0x1BADD1BADD006241D4FE1CEE317C6E048F513CD71BC0F03CEA172A710C05160E200A3C1CE6E1F4C2", INITVAL_1A="0x01C930C28B0308F1CCEC1D0C914CED1CA110B4D211C211D28E0FC5B00A401D01E172EB1DC7B0DCD3", INITVAL_19="0x15C581024E13ED119C611DCE107C6F116260B47E1A2201DCE115C8E014BB16A9D070671DE8617E78", INITVAL_18="0x1AEFC1D08B1864E00A5610C80128BE0B2571BE19186631CEFC044EC072EE1DCE10B27E1C2CE1DAC0", INITVAL_17="0x1EE5E1C0591A69D02EF10F41602EBF18AF71C8B8026B7082E401A45088E80FC7013CEB118640DC2B", INITVAL_16="0x050271D29D1E60E132D106EEE040EE1D2E0180FC17C0A136B4044491482215EE6100971DE250FCB2", INITVAL_15="0x0DCCB024220DEE015C220A2120143F020E704A581C2F108A861BC17004D20823F1C27000034118B4", INITVAL_14="0x0A66A1DEDE050401CE8E13A400882103EAE0260E150EA01EAA11C041108211C961CA150DC8C1DE79", INITVAL_13="0x184EF1F4FE13EC91925E162A21E2AD09E8B074ED034DB1BA84128201D012162700F0DA05C9502A9E", INITVAL_12="0x02E9B0A25F1D01E14A4F08AE803CA91D0100E0FA118EF1CA0E0BE52024B5030721A6D216EE302A1E", INITVAL_11="0x02E0102E180E2CA0FC211C88E0E0EB1A2AB176CD1DC0A022EF1D01E0E0DE00E0A17EAD156F50407C", INITVAL_10="0x1C0E11FC6719C8715C5B02CE60E4071C49E0DC17004071DC3E1CCE10E0CE0446E0DCCB0461E16439", INITVAL_0F="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_0E="0x00000000011181A03CAB1840E15E301D4AD15C2207C811D4CB1BC59094EF01C3300CCE0B4E71C60E", INITVAL_0D="0x1048509CA01C6051DC5D1FC0E1FEEE102771D43E0346E0BA8A13C5D1BECF17CA802E081AEDE17E78", INITVAL_0C="0x02E8706E4A1780B0B6220AE5E07C00074E114E7A072E10E00F1326C1CAAD032570BC501AA3A1C49E", INITVAL_0B="0x00EFE0860102E0E01AE20DCFD1DC8E128EE008E80647E1F85B038101FEA0168F40BC0F006281C0E8", INITVAL_0A="0x13C0D064871A0170E69E1325E1D07E172E917CB11CE7103CAF04A1E0BCE4176011DA0E1A20A176B0", INITVAL_09="0x1BC9C17E1A1625503A171B0C21D0E8192460361E030FA1A4E61AABE1C8BE0AA5510AE41723E0027B", INITVAL_08="0x0267E0F655092EF1CAC01FCFA02653030DF054E01D6EF1EA9E090EB1FC8F1D048194251D6191D233", INITVAL_07="0x0663007A3D1DCD11507E13CEC1D0EE09C1713C8E1FE581D03107C3F060E9182A60CC6601C810E8D4", INITVAL_06="0x0B0E8122741BA681C6E1142C71D09619CE80C69C1189303CE8146E8182321D0E115C8E170481821E", INITVAL_05="0x11C1A1D0E819048198271C2FA0364D09CE31602B0A67E0569B092F111CFA1FAA81242E03C0A1F489", INITVAL_04="0x1C46F1DC4B1C2DE02EE21C4301C27E122A008EE711CEE1C0441E2EE08AED06CFE1C8CE1841E03E50", INITVAL_03="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_02="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_01="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_00="0x000000000000000000000009000C991D2A0000000000000000000000000000000000000000F00001", CSDECODE_B="0b111", CSDECODE_A="0b000", WRITEMODE_B="NORMAL", WRITEMODE_A="NORMAL", GSR="DISABLED", RESETMODE="SYNC", REGMODE_B="NOREG", REGMODE_A="NOREG", DATA_WIDTH_B="4", DATA_WIDTH_A="4", syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=16, LSE_RCOL=26, LSE_LLINE=237, LSE_RLINE=237 */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(237[16:26])
    defparam ram_memory_0_0_3.DATA_WIDTH_A = 4;
    defparam ram_memory_0_0_3.DATA_WIDTH_B = 4;
    defparam ram_memory_0_0_3.REGMODE_A = "NOREG";
    defparam ram_memory_0_0_3.REGMODE_B = "NOREG";
    defparam ram_memory_0_0_3.RESETMODE = "SYNC";
    defparam ram_memory_0_0_3.CSDECODE_A = 3'b000;
    defparam ram_memory_0_0_3.CSDECODE_B = 3'b111;
    defparam ram_memory_0_0_3.WRITEMODE_A = "NORMAL";
    defparam ram_memory_0_0_3.WRITEMODE_B = "NORMAL";
    defparam ram_memory_0_0_3.GSR = "DISABLED";
    defparam ram_memory_0_0_3.INITVAL_00 = 320'h000000000000000000000009000C991D2A0000000000000000000000000000000000000000F00001;
    defparam ram_memory_0_0_3.INITVAL_01 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_0_3.INITVAL_02 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_0_3.INITVAL_03 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_0_3.INITVAL_04 = 320'h1C46F1DC4B1C2DE02EE21C4301C27E122A008EE711CEE1C0441E2EE08AED06CFE1C8CE1841E03E50;
    defparam ram_memory_0_0_3.INITVAL_05 = 320'h11C1A1D0E819048198271C2FA0364D09CE31602B0A67E0569B092F111CFA1FAA81242E03C0A1F489;
    defparam ram_memory_0_0_3.INITVAL_06 = 320'h0B0E8122741BA681C6E1142C71D09619CE80C69C1189303CE8146E8182321D0E115C8E170481821E;
    defparam ram_memory_0_0_3.INITVAL_07 = 320'h0663007A3D1DCD11507E13CEC1D0EE09C1713C8E1FE581D03107C3F060E9182A60CC6601C810E8D4;
    defparam ram_memory_0_0_3.INITVAL_08 = 320'h0267E0F655092EF1CAC01FCFA02653030DF054E01D6EF1EA9E090EB1FC8F1D048194251D6191D233;
    defparam ram_memory_0_0_3.INITVAL_09 = 320'h1BC9C17E1A1625503A171B0C21D0E8192460361E030FA1A4E61AABE1C8BE0AA5510AE41723E0027B;
    defparam ram_memory_0_0_3.INITVAL_0A = 320'h13C0D064871A0170E69E1325E1D07E172E917CB11CE7103CAF04A1E0BCE4176011DA0E1A20A176B0;
    defparam ram_memory_0_0_3.INITVAL_0B = 320'h00EFE0860102E0E01AE20DCFD1DC8E128EE008E80647E1F85B038101FEA0168F40BC0F006281C0E8;
    defparam ram_memory_0_0_3.INITVAL_0C = 320'h02E8706E4A1780B0B6220AE5E07C00074E114E7A072E10E00F1326C1CAAD032570BC501AA3A1C49E;
    defparam ram_memory_0_0_3.INITVAL_0D = 320'h1048509CA01C6051DC5D1FC0E1FEEE102771D43E0346E0BA8A13C5D1BECF17CA802E081AEDE17E78;
    defparam ram_memory_0_0_3.INITVAL_0E = 320'h00000000011181A03CAB1840E15E301D4AD15C2207C811D4CB1BC59094EF01C3300CCE0B4E71C60E;
    defparam ram_memory_0_0_3.INITVAL_0F = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_0_3.INITVAL_10 = 320'h1C0E11FC6719C8715C5B02CE60E4071C49E0DC17004071DC3E1CCE10E0CE0446E0DCCB0461E16439;
    defparam ram_memory_0_0_3.INITVAL_11 = 320'h02E0102E180E2CA0FC211C88E0E0EB1A2AB176CD1DC0A022EF1D01E0E0DE00E0A17EAD156F50407C;
    defparam ram_memory_0_0_3.INITVAL_12 = 320'h02E9B0A25F1D01E14A4F08AE803CA91D0100E0FA118EF1CA0E0BE52024B5030721A6D216EE302A1E;
    defparam ram_memory_0_0_3.INITVAL_13 = 320'h184EF1F4FE13EC91925E162A21E2AD09E8B074ED034DB1BA84128201D012162700F0DA05C9502A9E;
    defparam ram_memory_0_0_3.INITVAL_14 = 320'h0A66A1DEDE050401CE8E13A400882103EAE0260E150EA01EAA11C041108211C961CA150DC8C1DE79;
    defparam ram_memory_0_0_3.INITVAL_15 = 320'h0DCCB024220DEE015C220A2120143F020E704A581C2F108A861BC17004D20823F1C27000034118B4;
    defparam ram_memory_0_0_3.INITVAL_16 = 320'h050271D29D1E60E132D106EEE040EE1D2E0180FC17C0A136B4044491482215EE6100971DE250FCB2;
    defparam ram_memory_0_0_3.INITVAL_17 = 320'h1EE5E1C0591A69D02EF10F41602EBF18AF71C8B8026B7082E401A45088E80FC7013CEB118640DC2B;
    defparam ram_memory_0_0_3.INITVAL_18 = 320'h1AEFC1D08B1864E00A5610C80128BE0B2571BE19186631CEFC044EC072EE1DCE10B27E1C2CE1DAC0;
    defparam ram_memory_0_0_3.INITVAL_19 = 320'h15C581024E13ED119C611DCE107C6F116260B47E1A2201DCE115C8E014BB16A9D070671DE8617E78;
    defparam ram_memory_0_0_3.INITVAL_1A = 320'h01C930C28B0308F1CCEC1D0C914CED1CA110B4D211C211D28E0FC5B00A401D01E172EB1DC7B0DCD3;
    defparam ram_memory_0_0_3.INITVAL_1B = 320'h1BADD1BADD006241D4FE1CEE317C6E048F513CD71BC0F03CEA172A710C05160E200A3C1CE6E1F4C2;
    defparam ram_memory_0_0_3.INITVAL_1C = 320'h106A21AEE201A3F0364F0182A07A4B1642E03A1A01C611DEEA080040A85E05C0E0E2ED1C2E01DADD;
    defparam ram_memory_0_0_3.INITVAL_1D = 320'h0000000000000000007E11E6F14EFF142BB1087F0C8EA0587B0FC1A0C488110880F6CE048540DC4F;
    defparam ram_memory_0_0_3.INITVAL_1E = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_0_3.INITVAL_1F = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_0_3.INITVAL_20 = 320'h15C1A19AC01A08D03C441C4FE1FCC01C20E06A480D0A51F8051FEA107C1107C181DC800BC5F0F28F;
    defparam ram_memory_0_0_3.INITVAL_21 = 320'h12A561E2430CCE604C281FCE810EDE0CC06104641E81E1200E0748B01C8B01CDA012D0060A01C21E;
    defparam ram_memory_0_0_3.INITVAL_22 = 320'h0FCE01C0180BEEE01C0604CEE01CA90EADE1C0EA13C541DC0E1485419C0E1DCF3062B8140E809AEA;
    defparam ram_memory_0_0_3.INITVAL_23 = 320'h11C2205C5E1423E0446E0BCA117C2204CFE102C80B2E11D0401CCE814AC411C8015C6301C6908A56;
    defparam ram_memory_0_0_3.INITVAL_24 = 320'h0B2E80421C1161E07E451DCEE1D44107E8A1DC0E06A29030FE1C25E14A120CEE61105F098EE0BCA1;
    defparam ram_memory_0_0_3.INITVAL_25 = 320'h100740E2C2042E91002C030E2122160220E0868716248080EF100D412AD9142591C23E05E3B036E6;
    defparam ram_memory_0_0_3.INITVAL_26 = 320'h1D2DF06AE0004201C2A117C7104C0E184110362C1E2D209C170A25601CF31BC1803E45042D20C8CE;
    defparam ram_memory_0_0_3.INITVAL_27 = 320'h00000000000000000000000E40BC651DE311DC3C1C02411C53042CE1EADE1602803A120228C0084B;
    defparam ram_memory_0_0_3.INITVAL_28 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_0_3.INITVAL_29 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_0_3.INITVAL_2A = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_0_3.INITVAL_2B = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_0_3.INITVAL_2C = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_0_3.INITVAL_2D = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_0_3.INITVAL_2E = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_0_3.INITVAL_2F = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_0_3.INITVAL_30 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_0_3.INITVAL_31 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_0_3.INITVAL_32 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_0_3.INITVAL_33 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_0_3.INITVAL_34 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_0_3.INITVAL_35 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_0_3.INITVAL_36 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_0_3.INITVAL_37 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_0_3.INITVAL_38 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_0_3.INITVAL_39 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_0_3.INITVAL_3A = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_0_3.INITVAL_3B = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_0_3.INITVAL_3C = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_0_3.INITVAL_3D = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_0_3.INITVAL_3E = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_0_3.INITVAL_3F = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    DP16KB ram_memory_0_2_1 (.DIA0(memory_data_i[8]), .DIA1(memory_data_i[9]), 
           .DIA2(memory_data_i[10]), .DIA3(memory_data_i[11]), .DIA4(GND_net), 
           .DIA5(GND_net), .DIA6(GND_net), .DIA7(GND_net), .DIA8(GND_net), 
           .DIA9(GND_net), .DIA10(GND_net), .DIA11(GND_net), .DIA12(GND_net), 
           .DIA13(GND_net), .DIA14(GND_net), .DIA15(GND_net), .DIA16(GND_net), 
           .DIA17(GND_net), .ADA0(GND_net), .ADA1(GND_net), .ADA2(n8622), 
           .ADA3(\memory_addr[1] ), .ADA4(n8621), .ADA5(n8617), .ADA6(\memory_addr[4] ), 
           .ADA7(\memory_addr[5] ), .ADA8(n8615), .ADA9(n8616), .ADA10(\memory_addr[8] ), 
           .ADA11(\memory_addr[9] ), .ADA12(\memory_addr[10] ), .ADA13(\memory_addr[11] ), 
           .CEA(VCC_net), .CLKA(aclk_N_55), .WEA(system_write), .CSA0(GND_net), 
           .CSA1(GND_net), .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), 
           .DIB1(GND_net), .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), 
           .DIB5(GND_net), .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), 
           .DIB9(GND_net), .DIB10(GND_net), .DIB11(GND_net), .DIB12(GND_net), 
           .DIB13(GND_net), .DIB14(GND_net), .DIB15(GND_net), .DIB16(GND_net), 
           .DIB17(GND_net), .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), 
           .ADB3(GND_net), .ADB4(GND_net), .ADB5(GND_net), .ADB6(GND_net), 
           .ADB7(GND_net), .ADB8(GND_net), .ADB9(GND_net), .ADB10(GND_net), 
           .ADB11(GND_net), .ADB12(GND_net), .ADB13(GND_net), .CEB(VCC_net), 
           .CLKB(GND_net), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
           .CSB2(GND_net), .RSTB(GND_net), .DOA0(memory_data_o[8]), .DOA1(memory_data_o[9]), 
           .DOA2(memory_data_o[10]), .DOA3(memory_data_o[11])) /* synthesis MEM_LPC_FILE="ram_memory.lpc", MEM_INIT_FILE="mem.mif", INITVAL_3F="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_3E="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_3D="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_3C="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_3B="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_3A="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_39="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_38="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_37="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_36="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_35="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_34="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_33="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_32="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_31="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_30="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_2F="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_2E="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_2D="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_2C="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_2B="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_2A="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_29="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_28="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_27="0x000000000000000000000000004C990048908819180F41300412E540A6970A02902E0212EBB00A29", INITVAL_26="0x0E63405272060F91802D138501720800490140191F40112E010087E1204E138B91E022126300BE94", INITVAL_25="0x0601312E301D20B060290E60212A090A2900AA55126090B27E00095028D913E40170970160B19273", INITVAL_24="0x080B01D2540166300A490EA581720E09C390EA0B120C104C970AC9B12045072760C804070070CA26", INITVAL_23="0x0960E10E6504C4B008870CA260B6041E284070590F0C800A780F073100351083811E4110E8800202", INITVAL_22="0x10E50170450307511680130750148E022870B0A8188580EA4A1008E10E850762611A731100509072", INITVAL_21="0x1CE28074050DE8506622040B20441B0001508680186870220900E3102A310365601650000941E20B", INITVAL_20="0x01602060D01A00901600170FB016801A20B014730001301401000D101A1101A111F610012031C247", INITVAL_1F="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_1E="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_1D="0x0000000000000000005C0160B0A0BF15615080520CEC70663B0140A064220442205633060E30EE0B", INITVAL_1C="0x0A0F002AF00120B0160B04A0F0020B01E7C01A0205E3015EB0122200246706A2F0E0A4160B20EA55", INITVAL_1B="0x0AA550AA55040E60E4FA0C6BA02A0B066270D8A1016160146A02C2309409160B30AA360E63700E52", INITVAL_1A="0x0164E0CE320E62F154340F6BA0A0B503C6501E66016320620B0660B01A460EC0A080BB0463401AB4", INITVAL_19="0x0CE660946C00C9D0CE650AEBB0CE0B016451EC570D4301AE56040A700AA10A0C01E8650EE3017ED0", INITVAL_18="0x120B416CAB1C86C00C42086301745B0A2EF0DEA0182860E0B4080B208C750B6BC048C50E0A51E659", INITVAL_17="0x1A6570AADC01EB50A0B0124C51A0B4182550F2540EA150AAF00120902A7507E120169B080150AE30", INITVAL_16="0x1E8911E05917C5C00A9B0AA79060D7000CF0B2D30AE05122500A05E08A53020B3060B31E4250B835", INITVAL_15="0x06E531204F02A720164F02A5001A0B0A0B212A15180B5006050AE0D1E2510B210160D012297176E0", INITVAL_14="0x00615106F70A2501720A120900365015E1B00857020B101EA1016970660E0AE4017EDE0883417ED7", INITVAL_13="0x060FF1F4870FEA706045000A01E0A817EAB10A3F01EF01AE301CC4010838020D517E2F0062F1A647", INITVAL_12="0x01A2B1DAE40E40A048020E872014220E600120B7176101680B1D6441A0B4014E01A0D01643504047", INITVAL_11="0x01AF01440A1C0A30164015018020D01A02F0163F07003080A80620A1C0B31020501EA81E0B906284", INITVAL_10="0x0E85F08E3304E480140B1C8730642200A470660D06422064540E6301A62301C4706E5319C4707843", INITVAL_0F="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_0E="0x000000000707C02000A306401068430E21001203078701422B0660008673016050263C0E2B306205", INITVAL_0D="0x0661306E1016A13078010760B1E6370601B07E7F01E2F00A3B07E0D17EAB0247301AB30620B1FE53", INITVAL_0C="0x00A33162050EA01016F51BC3703623020B0140AB020B01A01008E431800919A3407800130820E423", INITVAL_0B="0x0441B0462015C2F01A0304E20174100E627054B2006270440B0645017EA0160C804E0B040C20E473", INITVAL_0A="0x0260B08245040A01420B08E420FE6F024320364300A22000A01E4FF05E5A01660124091E009140B1", INITVAL_09="0x046970160B086021EC0D0F6B20E673018621EC0A0143F064351E627014150083800470164420140B", INITVAL_08="0x0802701602104701B4100120A050E20E62014471064341B4270343102E310627B160D2182A1006EE", INITVAL_07="0x1DCE00B4510E6F00C693026F312233026011361B09AD10E61F038141A27F040AA154AA01630020FF", INITVAL_06="0x022330E0101FE510E2F0040AE012470387312277176ED038731227B170D10E2F004E1F1227B17817", INITVAL_05="0x03E020E2731227B160510FEB91F6090A27F172FB136171F6051E20A06A0B01433060E11ECF500633", INITVAL_04="0x0041F10EB907A170027D146110E0101A0A30A25402E891605F0208717AFB0A2F80F6D70001004C40", INITVAL_03="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_02="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_01="0x00000000000000000000000000000000000000000000000000000000000000000000000000000000", INITVAL_00="0x000000000000000000000009000A5913200000000000000000000000000000000000000000400008", CSDECODE_B="0b111", CSDECODE_A="0b000", WRITEMODE_B="NORMAL", WRITEMODE_A="NORMAL", GSR="DISABLED", RESETMODE="SYNC", REGMODE_B="NOREG", REGMODE_A="NOREG", DATA_WIDTH_B="4", DATA_WIDTH_A="4", syn_instantiated=1, LSE_LINE_FILE_ID=21, LSE_LCOL=16, LSE_RCOL=26, LSE_LLINE=237, LSE_RLINE=237 */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(237[16:26])
    defparam ram_memory_0_2_1.DATA_WIDTH_A = 4;
    defparam ram_memory_0_2_1.DATA_WIDTH_B = 4;
    defparam ram_memory_0_2_1.REGMODE_A = "NOREG";
    defparam ram_memory_0_2_1.REGMODE_B = "NOREG";
    defparam ram_memory_0_2_1.RESETMODE = "SYNC";
    defparam ram_memory_0_2_1.CSDECODE_A = 3'b000;
    defparam ram_memory_0_2_1.CSDECODE_B = 3'b111;
    defparam ram_memory_0_2_1.WRITEMODE_A = "NORMAL";
    defparam ram_memory_0_2_1.WRITEMODE_B = "NORMAL";
    defparam ram_memory_0_2_1.GSR = "DISABLED";
    defparam ram_memory_0_2_1.INITVAL_00 = 320'h000000000000000000000009000A5913200000000000000000000000000000000000000000400008;
    defparam ram_memory_0_2_1.INITVAL_01 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_2_1.INITVAL_02 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_2_1.INITVAL_03 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_2_1.INITVAL_04 = 320'h0041F10EB907A170027D146110E0101A0A30A25402E891605F0208717AFB0A2F80F6D70001004C40;
    defparam ram_memory_0_2_1.INITVAL_05 = 320'h03E020E2731227B160510FEB91F6090A27F172FB136171F6051E20A06A0B01433060E11ECF500633;
    defparam ram_memory_0_2_1.INITVAL_06 = 320'h022330E0101FE510E2F0040AE012470387312277176ED038731227B170D10E2F004E1F1227B17817;
    defparam ram_memory_0_2_1.INITVAL_07 = 320'h1DCE00B4510E6F00C693026F312233026011361B09AD10E61F038141A27F040AA154AA01630020FF;
    defparam ram_memory_0_2_1.INITVAL_08 = 320'h0802701602104701B4100120A050E20E62014471064341B4270343102E310627B160D2182A1006EE;
    defparam ram_memory_0_2_1.INITVAL_09 = 320'h046970160B086021EC0D0F6B20E673018621EC0A0143F064351E627014150083800470164420140B;
    defparam ram_memory_0_2_1.INITVAL_0A = 320'h0260B08245040A01420B08E420FE6F024320364300A22000A01E4FF05E5A01660124091E009140B1;
    defparam ram_memory_0_2_1.INITVAL_0B = 320'h0441B0462015C2F01A0304E20174100E627054B2006270440B0645017EA0160C804E0B040C20E473;
    defparam ram_memory_0_2_1.INITVAL_0C = 320'h00A33162050EA01016F51BC3703623020B0140AB020B01A01008E431800919A3407800130820E423;
    defparam ram_memory_0_2_1.INITVAL_0D = 320'h0661306E1016A13078010760B1E6370601B07E7F01E2F00A3B07E0D17EAB0247301AB30620B1FE53;
    defparam ram_memory_0_2_1.INITVAL_0E = 320'h000000000707C02000A306401068430E21001203078701422B0660008673016050263C0E2B306205;
    defparam ram_memory_0_2_1.INITVAL_0F = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_2_1.INITVAL_10 = 320'h0E85F08E3304E480140B1C8730642200A470660D06422064540E6301A62301C4706E5319C4707843;
    defparam ram_memory_0_2_1.INITVAL_11 = 320'h01AF01440A1C0A30164015018020D01A02F0163F07003080A80620A1C0B31020501EA81E0B906284;
    defparam ram_memory_0_2_1.INITVAL_12 = 320'h01A2B1DAE40E40A048020E872014220E600120B7176101680B1D6441A0B4014E01A0D01643504047;
    defparam ram_memory_0_2_1.INITVAL_13 = 320'h060FF1F4870FEA706045000A01E0A817EAB10A3F01EF01AE301CC4010838020D517E2F0062F1A647;
    defparam ram_memory_0_2_1.INITVAL_14 = 320'h00615106F70A2501720A120900365015E1B00857020B101EA1016970660E0AE4017EDE0883417ED7;
    defparam ram_memory_0_2_1.INITVAL_15 = 320'h06E531204F02A720164F02A5001A0B0A0B212A15180B5006050AE0D1E2510B210160D012297176E0;
    defparam ram_memory_0_2_1.INITVAL_16 = 320'h1E8911E05917C5C00A9B0AA79060D7000CF0B2D30AE05122500A05E08A53020B3060B31E4250B835;
    defparam ram_memory_0_2_1.INITVAL_17 = 320'h1A6570AADC01EB50A0B0124C51A0B4182550F2540EA150AAF00120902A7507E120169B080150AE30;
    defparam ram_memory_0_2_1.INITVAL_18 = 320'h120B416CAB1C86C00C42086301745B0A2EF0DEA0182860E0B4080B208C750B6BC048C50E0A51E659;
    defparam ram_memory_0_2_1.INITVAL_19 = 320'h0CE660946C00C9D0CE650AEBB0CE0B016451EC570D4301AE56040A700AA10A0C01E8650EE3017ED0;
    defparam ram_memory_0_2_1.INITVAL_1A = 320'h0164E0CE320E62F154340F6BA0A0B503C6501E66016320620B0660B01A460EC0A080BB0463401AB4;
    defparam ram_memory_0_2_1.INITVAL_1B = 320'h0AA550AA55040E60E4FA0C6BA02A0B066270D8A1016160146A02C2309409160B30AA360E63700E52;
    defparam ram_memory_0_2_1.INITVAL_1C = 320'h0A0F002AF00120B0160B04A0F0020B01E7C01A0205E3015EB0122200246706A2F0E0A4160B20EA55;
    defparam ram_memory_0_2_1.INITVAL_1D = 320'h0000000000000000005C0160B0A0BF15615080520CEC70663B0140A064220442205633060E30EE0B;
    defparam ram_memory_0_2_1.INITVAL_1E = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_2_1.INITVAL_1F = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_2_1.INITVAL_20 = 320'h01602060D01A00901600170FB016801A20B014730001301401000D101A1101A111F610012031C247;
    defparam ram_memory_0_2_1.INITVAL_21 = 320'h1CE28074050DE8506622040B20441B0001508680186870220900E3102A310365601650000941E20B;
    defparam ram_memory_0_2_1.INITVAL_22 = 320'h10E50170450307511680130750148E022870B0A8188580EA4A1008E10E850762611A731100509072;
    defparam ram_memory_0_2_1.INITVAL_23 = 320'h0960E10E6504C4B008870CA260B6041E284070590F0C800A780F073100351083811E4110E8800202;
    defparam ram_memory_0_2_1.INITVAL_24 = 320'h080B01D2540166300A490EA581720E09C390EA0B120C104C970AC9B12045072760C804070070CA26;
    defparam ram_memory_0_2_1.INITVAL_25 = 320'h0601312E301D20B060290E60212A090A2900AA55126090B27E00095028D913E40170970160B19273;
    defparam ram_memory_0_2_1.INITVAL_26 = 320'h0E63405272060F91802D138501720800490140191F40112E010087E1204E138B91E022126300BE94;
    defparam ram_memory_0_2_1.INITVAL_27 = 320'h000000000000000000000000004C990048908819180F41300412E540A6970A02902E0212EBB00A29;
    defparam ram_memory_0_2_1.INITVAL_28 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_2_1.INITVAL_29 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_2_1.INITVAL_2A = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_2_1.INITVAL_2B = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_2_1.INITVAL_2C = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_2_1.INITVAL_2D = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_2_1.INITVAL_2E = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_2_1.INITVAL_2F = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_2_1.INITVAL_30 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_2_1.INITVAL_31 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_2_1.INITVAL_32 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_2_1.INITVAL_33 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_2_1.INITVAL_34 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_2_1.INITVAL_35 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_2_1.INITVAL_36 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_2_1.INITVAL_37 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_2_1.INITVAL_38 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_2_1.INITVAL_39 = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_2_1.INITVAL_3A = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_2_1.INITVAL_3B = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_2_1.INITVAL_3C = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_2_1.INITVAL_3D = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_2_1.INITVAL_3E = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    defparam ram_memory_0_2_1.INITVAL_3F = 320'h00000000000000000000000000000000000000000000000000000000000000000000000000000000;
    
endmodule
//
// Verilog Description of module \ep16(16) 
//

module \ep16(16)  (system_data_o, memory_data_i, n1476, n1493, sp, 
            n1335, p, aclk_c, n3, n1328, n8640, sp1, \p_in[5] , 
            rp, \p_sel[1] , interrupt_i_c_1, \p_in_15__N_282[0] , interrupt_i_c_0, 
            n3860, n8653, n1326, n8637, system_write, n8603, rp1, 
            arst_c, n1537, n1305, n8664, n1322, n1323, \a[10] , 
            r, \p_in[0] , \i[0] , \a[14] , \a[13] , \a[12] , \a[11] , 
            \slot[0] , n8666, GND_net, VCC_net, n1321, aclk_c_enable_78, 
            \p[13] , \p[14] , tx_en, n8606, \p[11] , \p[12] , n1435, 
            n1502, n1519, \i[5] , n1516, n1533, n1536, n8614, 
            \memory_addr[1] , n8602, n7611, \a[9] , n8675, \p_in_15__N_282[5] , 
            n6376, n1419, n1424, n7595, \a[8] , \slot[1] , n7161, 
            n1336, n1334, \t[16] , n1467, n1484, n7, n8623, n1329, 
            n1469, n1486, n1330, n8596, n1325, n1327, n1462, n1479, 
            n1331, n1332, \memory_addr[5] , n8607, n8616, n7043, 
            n1333, n1478, n1495, n963, n8663, n1371, n7549, n1361, 
            n7565, \memory_addr[4] , n8608, n8601, n8604, n8661, 
            n1366, n7564, n1411, n7550, n1401, n7562, n1416, n7548, 
            n1406, n7556, n1376, n7569, n1381, n7568, n8628, n1324, 
            n6833, n6835, n18, n7025, n1391, n7566, n1386, n7567, 
            n1396, n7563, acknowledge_o_c, n6010, n8671, n8630, 
            n8627, n8626, n8618, n8615, system_read, n8625, interrupt_i_c_3, 
            n8674, n1497, interrupt_i_c_2, interrupt_i_c_4, n8624, 
            n8617, n8613, n8619, n1, n1427, n1501, n1518, n8620, 
            n8612, n1514, n1531, n1517, n1534, n1468, n1485, n8634, 
            n1513, n1530, n1500, n1512, n1529, n8633, n1511, n1528, 
            \memory_addr[11] , \memory_addr[10] , n8599, n1466, n1483, 
            n8668, n1510, n1527, n8632, \memory_addr[9] , \memory_addr[8] , 
            n8621, n1463, n1480, n1464, n1481, n1509, n1526, n1473, 
            n1490, n1474, n1491, n1471, n1488, n1472, n1489, n1508, 
            n1525, n1507, n1524, n8631, n8622, n1506, n1523, n1515, 
            n1532, n8629, n7105, n1505, n1522, n1504, n1521, n1465, 
            n1482, aclk_c_enable_16, n1498, n1226, n7557, n1246, 
            n7558, n1477, n1494, n1256, n8667, n7559, n1304, n1309, 
            n1503, n1520, n1470, n1487, n1312, n1266, n7561, n1271, 
            n8673, n7560, n1231, n7545, n1281, n7546, n1276, n7555, 
            n1236, n7547, n1241, n7553, n1475, n1492);
    input [15:0]system_data_o;
    output [15:0]memory_data_i;
    input n1476;
    input n1493;
    output [4:0]sp;
    output n1335;
    output [15:0]p;
    input aclk_c;
    input n3;
    output n1328;
    input n8640;
    output [4:0]sp1;
    input \p_in[5] ;
    output [4:0]rp;
    output \p_sel[1] ;
    input interrupt_i_c_1;
    output \p_in_15__N_282[0] ;
    input interrupt_i_c_0;
    output n3860;
    output n8653;
    output n1326;
    output n8637;
    output system_write;
    output n8603;
    output [4:0]rp1;
    input arst_c;
    output n1537;
    input n1305;
    input n8664;
    output n1322;
    output n1323;
    output \a[10] ;
    output [16:0]r;
    input \p_in[0] ;
    output \i[0] ;
    output \a[14] ;
    output \a[13] ;
    output \a[12] ;
    output \a[11] ;
    output \slot[0] ;
    input n8666;
    input GND_net;
    input VCC_net;
    output n1321;
    output aclk_c_enable_78;
    output \p[13] ;
    output \p[14] ;
    input tx_en;
    output n8606;
    output \p[11] ;
    output \p[12] ;
    input n1435;
    input n1502;
    input n1519;
    output \i[5] ;
    input n1516;
    input n1533;
    output n1536;
    output n8614;
    output \memory_addr[1] ;
    output n8602;
    output n7611;
    output \a[9] ;
    input n8675;
    output \p_in_15__N_282[5] ;
    output n6376;
    input n1419;
    output n1424;
    output n7595;
    output \a[8] ;
    output \slot[1] ;
    output n7161;
    output n1336;
    output n1334;
    output \t[16] ;
    input n1467;
    input n1484;
    output n7;
    input n8623;
    output n1329;
    input n1469;
    input n1486;
    output n1330;
    output n8596;
    output n1325;
    output n1327;
    input n1462;
    input n1479;
    output n1331;
    output n1332;
    output \memory_addr[5] ;
    output n8607;
    output n8616;
    output n7043;
    output n1333;
    input n1478;
    input n1495;
    output n963;
    input n8663;
    input n1371;
    output n7549;
    input n1361;
    output n7565;
    output \memory_addr[4] ;
    output n8608;
    output n8601;
    output n8604;
    input n8661;
    input n1366;
    output n7564;
    input n1411;
    output n7550;
    input n1401;
    output n7562;
    input n1416;
    output n7548;
    input n1406;
    output n7556;
    input n1376;
    output n7569;
    input n1381;
    output n7568;
    input n8628;
    output n1324;
    input n6833;
    output n6835;
    input n18;
    output n7025;
    input n1391;
    output n7566;
    input n1386;
    output n7567;
    input n1396;
    output n7563;
    output acknowledge_o_c;
    output n6010;
    input n8671;
    input n8630;
    input n8627;
    input n8626;
    output n8618;
    output n8615;
    output system_read;
    input n8625;
    input interrupt_i_c_3;
    output n8674;
    output n1497;
    input interrupt_i_c_2;
    input interrupt_i_c_4;
    input n8624;
    output n8617;
    input n8613;
    input n8619;
    output n1;
    output n1427;
    input n1501;
    input n1518;
    input n8620;
    input n8612;
    input n1514;
    input n1531;
    input n1517;
    input n1534;
    input n1468;
    input n1485;
    input n8634;
    input n1513;
    input n1530;
    output n1500;
    input n1512;
    input n1529;
    input n8633;
    input n1511;
    input n1528;
    output \memory_addr[11] ;
    output \memory_addr[10] ;
    input n8599;
    input n1466;
    input n1483;
    input n8668;
    input n1510;
    input n1527;
    input n8632;
    output \memory_addr[9] ;
    output \memory_addr[8] ;
    output n8621;
    input n1463;
    input n1480;
    input n1464;
    input n1481;
    input n1509;
    input n1526;
    input n1473;
    input n1490;
    input n1474;
    input n1491;
    input n1471;
    input n1488;
    input n1472;
    input n1489;
    input n1508;
    input n1525;
    input n1507;
    input n1524;
    input n8631;
    output n8622;
    input n1506;
    input n1523;
    input n1515;
    input n1532;
    input n8629;
    output n7105;
    input n1505;
    input n1522;
    input n1504;
    input n1521;
    input n1465;
    input n1482;
    output aclk_c_enable_16;
    output n1498;
    input n1226;
    output n7557;
    input n1246;
    output n7558;
    input n1477;
    input n1494;
    input n1256;
    input n8667;
    output n7559;
    input n1304;
    output n1309;
    input n1503;
    input n1520;
    input n1470;
    input n1487;
    output n1312;
    input n1266;
    output n7561;
    input n1271;
    input n8673;
    output n7560;
    input n1231;
    output n7545;
    input n1281;
    output n7546;
    input n1276;
    output n7555;
    input n1236;
    output n7547;
    input n1241;
    output n7553;
    input n1475;
    input n1492;
    
    wire aclk_c /* synthesis SET_AS_NETWORK=aclk_c, is_clock=1 */ ;   // c:/lscc/ep16vhdl/ep16_chip.vhd(36[2:6])
    wire [3:0]t_sel;   // c:/lscc/ep16vhdl/ep16.vhd(54[9:14])
    
    wire n12, n8610, n8655, n7623, n8441;
    wire [16:0]t_in;   // c:/lscc/ep16vhdl/ep16.vhd(52[9:13])
    wire [16:0]a;   // c:/lscc/ep16vhdl/ep16.vhd(51[9:10])
    wire [16:0]sum;   // c:/lscc/ep16vhdl/ep16.vhd(50[13:16])
    wire [2:0]a_sel;   // c:/lscc/ep16vhdl/ep16.vhd(56[9:14])
    
    wire n4, aclk_c_enable_35;
    wire [15:0]p_in;   // c:/lscc/ep16vhdl/ep16.vhd(62[13:17])
    wire [4:0]code;   // c:/lscc/ep16vhdl/ep16.vhd(53[9:13])
    
    wire n2045;
    wire [3:0]t_sel_3__N_308;
    
    wire n8430, n8431, n3_c;
    wire [2:0]slot;   // c:/lscc/ep16vhdl/ep16.vhd(48[9:13])
    
    wire n3_adj_767, n7291, n9434, n3_adj_769, n8636, n8, n9, 
        n8593, n7771, n8644, n7630, n8445, pload, n2, n8600, 
        n7452;
    wire [15:0]p_c;   // c:/lscc/ep16vhdl/ep16.vhd(62[11:12])
    wire [16:0]a_in_16__N_215;
    
    wire n3_adj_770, n29, aclk_c_enable_157, n7797, n2127, n8426, 
        n8427;
    wire [15:0]i;   // c:/lscc/ep16vhdl/ep16.vhd(62[9:10])
    
    wire iload, n7637, n8449, n4_adj_771, rpopp_N_378, n6372, n8418, 
        n8419, n2_adj_772, n7455, n4_adj_773, n8609;
    wire [2:0]p_sel;   // c:/lscc/ep16vhdl/ep16.vhd(55[9:14])
    wire [15:0]p_in_15__N_282;
    wire [15:0]n646;
    
    wire n7644, n8453, n6531, n7283, n6548, n8_adj_774, n9_adj_775, 
        n7620, n4_adj_776, n30, n7791, n9_adj_777, n21, n15, n4_adj_778, 
        n3541, n5, n8414, n8415, n7883, tload, n32, n8654, aclk_c_enable_74, 
        n35, n5666, n5667, n8662;
    wire [1:0]r_sel_1__N_248;
    
    wire n8657, rload_N_400, rload, n11, aload;
    wire [16:0]a_in;   // c:/lscc/ep16vhdl/ep16.vhd(52[19:23])
    wire [16:0]r_in;   // c:/lscc/ep16vhdl/ep16.vhd(52[14:18])
    
    wire n6881, n11_adj_779, n12_adj_780, n7621, n6985, n8688, n30_adj_781, 
        n11_adj_782, n8_adj_783, n7627, slot_2__N_318;
    wire [2:0]slot_2__N_315;
    
    wire n8478, aclk_c_enable_31, n8605, n12_adj_784, n8641, n26, 
        n5665;
    wire [17:0]r_in_16__N_181;
    
    wire n7510, n7519, n5664, n7537, n7531, n2084, n6404, n6772, 
        n5663, n5662, n2012, n5654, n5655, n7793;
    wire [16:0]n1535;
    
    wire n7425, n7507, n7501, n2_adj_785, n7458, n6670, n4_adj_786, 
        n8687, n7461, n8_adj_787, n18_c, n7494, n7498, n6638, 
        n6637, n7528;
    wire [10:0]n567;
    
    wire aclk_c_enable_153, n11_adj_788, n6, n8597, n6671, n12_adj_789, 
        n7525, n11_adj_790, n12_adj_791, n7628, n5661, n6927, n7795, 
        n8210, n8479, n8480, n5653, n5962, n12_adj_792, n7522, 
        n5660, n8_adj_793, n8647, intload, n8686, n5659, n6634, 
        n25, n7495, n6420, n7386, n8722, n8697, n7441, n7414, 
        n5702, n8470, n8469, n8471, n8438, n8746, n36, n6680, 
        n7431, n8_adj_794, n9_adj_795, n7634, n7432, n7420, n7426, 
        n11_adj_796, n12_adj_797, n7635, n15_adj_798, n6775, n8442, 
        n8443, n8690, n8467, n8466, n8468, n30_adj_799, n7616, 
        n8689, n7_c, n4_adj_800, n33, n5649, n6367, n8676, n1734, 
        n5658, n7462, n7423, n7422, n7424, n6823, n8252, n7471, 
        n8693, n8692, n5652, n8251, n22, n12_adj_801, n10, n5651, 
        n8696, n5650, n8254, n7486, n8_adj_802, n9_adj_803, n7641, 
        n8463, n8462, n8464, n7651, n8457, n11_adj_804, n12_adj_805, 
        n7642, n8_adj_806, n9_adj_807, n7648, n11_adj_808, n12_adj_809, 
        n7649, n8695, n5673, n8446, n8447, aclk_c_enable_48, n8_adj_810, 
        n9_adj_811, n7655, n5672, n5656, n8255, n8450, n8451, 
        n5697, n8454, n8455, n8656, n8127, n5696, n5695, n7492, 
        n8128, n8459, n8458, n8461, n8405, n8406, n7613, n5912, 
        n8456, n7656, n9_adj_813, n6676, n5694, n9_adj_814, n8672, 
        n12_adj_815;
    wire [15:0]n663;
    
    wire n6_adj_816, n7665, n8422, n8423, n8452, n7702, n8408, 
        n8465, n7739, n8417, n7746, n8421, n9_adj_817, n9_adj_818, 
        n7662, n9_adj_819;
    wire [16:0]s;   // c:/lscc/ep16vhdl/ep16.vhd(50[11:12])
    
    wire n1_c, n6907, n6_adj_820, n3_adj_821, n9_adj_822, n6662, 
        n8448, n6663, n5703, n15_adj_823, n11_adj_824, n8325, n11_adj_825, 
        n9_adj_826, n8324, n7753, n8425, n8123, n7663, n8444, 
        n12_adj_827, n8665, n7_adj_828, n7440, n12_adj_829, n8211, 
        n8_adj_830, n7760, n8429, n5704, n7433, n8440, n8439, 
        n2024, n6664, n7767, n8433, n6913, n7658, n7774, n8437, 
        n8434, n8435, n8670, n8416, n5693, n8436, n5692, n6667, 
        n11_adj_832, n5691, n5690;
    wire [15:0]n612;
    
    wire n8432, n7265, n7273, n8_adj_833, n8407, n8428, n6770, 
        n5699, n8645, n6_adj_834, n8424, n6674, n8212, n5700, 
        n11_adj_835, n5701, n8420, n8_adj_836, n8_adj_837, n11_adj_838, 
        n12_adj_839, n8_adj_840, n2_adj_841, n7467, n7446, n4_adj_842, 
        n1_adj_843;
    wire [1:0]r_sel;   // c:/lscc/ep16vhdl/ep16.vhd(57[9:14])
    
    wire n7497, n2_adj_844, n7449, n7500, n7503, n4_adj_845, n7506, 
        n11_adj_846, n8691, n12_adj_847, n8_adj_848, n4_adj_849, n4_adj_850, 
        n11_adj_851, n6675, n6697, n6673, n12_adj_852, n8_adj_853, 
        n8635, n7509, n7512, n4_adj_855, n7515, n4_adj_856, n7518, 
        n7470, n5671, n5670, n2_adj_857, n7476, n4_adj_858, n7521, 
        n2_adj_859, n7479, n7524, n4_adj_860, n2_adj_861, n2_adj_862, 
        n7482, n7527, n4_adj_863, n7530, n7536, n7485, n8652, 
        n8646, n7413, n3_adj_864, n2_adj_865, n7488, n7416, n4_adj_866, 
        n7419, n5669, n7443, n4_adj_867, n4_adj_868;
    wire [1:0]r_sel_1__N_246;
    
    wire n7209, n2_adj_869, n8723, n7473, n2_adj_870, n5668, n7434, 
        n7435, n7464, n7465, n7764, n7765, n7772, n1968, n1550, 
        n7097, n6957, n7699, n7700, n7736, n7737, n7743, n7744, 
        n7750, n7751, n7757, n7758, n7535, n2_adj_871, n2_adj_872, 
        n30_adj_873, n7397, n7229, n7241, n7239, n7223, n7237, 
        n7231, n8684, n8683, n8685, n46, n2_adj_874, n7269, n7255, 
        n14, n2_adj_875;
    
    ORCALUT4 t_sel_3__I_0_Mux_7_i12_3_lut (.A(system_data_o[7]), .B(memory_data_i[15]), 
            .C(t_sel[0]), .Z(n12)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(137[2] 152[44])
    defparam t_sel_3__I_0_Mux_7_i12_3_lut.init = 16'hcaca;
    ORCALUT4 i6960_3_lut_4_lut (.A(n8610), .B(n8655), .C(n7623), .D(n8441), 
            .Z(t_in[6])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(211[2] 385[9])
    defparam i6960_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 a_sel_2__I_0_Mux_0_i4_3_lut (.A(a[1]), .B(sum[16]), .C(a_sel[0]), 
            .Z(n4)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(158[2] 163[17])
    defparam a_sel_2__I_0_Mux_0_i4_3_lut.init = 16'hcaca;
    ORCALUT4 mux_800_i15_3_lut (.A(n1476), .B(n1493), .C(sp[4]), .Z(n1335)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_800_i15_3_lut.init = 16'hcaca;
    FD1P3AX p_i0_i10 (.D(p_in[10]), .SP(aclk_c_enable_35), .CK(aclk_c), 
            .Q(p[10])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam p_i0_i10.GSR = "ENABLED";
    ORCALUT4 i3644_4_lut_4_lut (.A(a[0]), .B(code[0]), .C(code[2]), .D(code[1]), 
            .Z(n2045)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A (B+!(C (D))))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(153[2] 157[19])
    defparam i3644_4_lut_4_lut.init = 16'h3800;
    ORCALUT4 n8430_bdd_3_lut_4_lut (.A(t_sel_3__N_308[1]), .B(n8655), .C(memory_data_i[9]), 
            .D(n8430), .Z(n8431)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(211[2] 385[9])
    defparam n8430_bdd_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 i1_rep_36_2_lut_3_lut_4_lut (.A(n3_c), .B(slot[2]), .C(n3_adj_767), 
            .D(n7291), .Z(a_sel[2])) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_rep_36_2_lut_3_lut_4_lut.init = 16'h1000;
    ORCALUT4 i1_2_lut_rep_256_3_lut_4_lut (.A(n3_adj_767), .B(n9434), .C(n3), 
            .D(n3_adj_769), .Z(n8636)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(153[2] 157[19])
    defparam i1_2_lut_rep_256_3_lut_4_lut.init = 16'hfffe;
    PFUMX i7107 (.BLUT(n8), .ALUT(n9), .C0(n8593), .Z(n7771));
    ORCALUT4 i1_2_lut_rep_264_3_lut (.A(n3_adj_767), .B(slot[2]), .C(n3), 
            .Z(n8644)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(153[2] 157[19])
    defparam i1_2_lut_rep_264_3_lut.init = 16'hfefe;
    ORCALUT4 i6967_3_lut_4_lut (.A(n8610), .B(n8655), .C(n7630), .D(n8445), 
            .Z(t_in[5])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(211[2] 385[9])
    defparam i6967_3_lut_4_lut.init = 16'hf780;
    FD1P3AX p_i0_i9 (.D(p_in[9]), .SP(pload), .CK(aclk_c), .Q(p[9])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam p_i0_i9.GSR = "ENABLED";
    ORCALUT4 t_sel_3__I_0_Mux_7_i9_3_lut_4_lut (.A(n1328), .B(n8640), .C(t_sel[0]), 
            .D(memory_data_i[6]), .Z(n9)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam t_sel_3__I_0_Mux_7_i9_3_lut_4_lut.init = 16'h8f80;
    ORCALUT4 i6788_3_lut (.A(memory_data_i[5]), .B(n2), .C(n8600), .Z(n7452)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6788_3_lut.init = 16'hcaca;
    FD1P3AX p_i0_i8 (.D(p_in[8]), .SP(pload), .CK(aclk_c), .Q(p[8])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam p_i0_i8.GSR = "ENABLED";
    FD1P3AX p_i0_i7 (.D(p_in[7]), .SP(pload), .CK(aclk_c), .Q(p_c[7])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam p_i0_i7.GSR = "ENABLED";
    ORCALUT4 a_sel_2__I_0_Mux_5_i2_3_lut (.A(a_in_16__N_215[5]), .B(a[6]), 
            .C(a_sel[0]), .Z(n2)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(158[2] 163[17])
    defparam a_sel_2__I_0_Mux_5_i2_3_lut.init = 16'hcaca;
    ORCALUT4 mux_83_Mux_0_i29_4_lut_3_lut_4_lut (.A(n3), .B(slot[2]), .C(n3_adj_767), 
            .D(n3_adj_770), .Z(n29)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+(C)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(232[2] 384[11])
    defparam mux_83_Mux_0_i29_4_lut_3_lut_4_lut.init = 16'h2321;
    ORCALUT4 i7326_2_lut (.A(sp1[0]), .B(aclk_c_enable_157), .Z(n7797)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i7326_2_lut.init = 16'h6666;
    ORCALUT4 i1_2_lut_3_lut_4_lut (.A(n3), .B(slot[2]), .C(n3_adj_767), 
            .D(n3_adj_770), .Z(n2127)) /* synthesis lut_function=(!(A (B+!(D))+!A (B+(C+!(D))))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(232[2] 384[11])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h2300;
    FD1P3AX p_i0_i6 (.D(p_in[6]), .SP(pload), .CK(aclk_c), .Q(p_c[6])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam p_i0_i6.GSR = "ENABLED";
    ORCALUT4 n8426_bdd_3_lut_4_lut (.A(t_sel_3__N_308[1]), .B(n8655), .C(memory_data_i[10]), 
            .D(n8426), .Z(n8427)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(211[2] 385[9])
    defparam n8426_bdd_3_lut_4_lut.init = 16'hf780;
    FD1P3AX i_i0_i11 (.D(system_data_o[11]), .SP(iload), .CK(aclk_c), 
            .Q(i[11])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i_i0_i11.GSR = "ENABLED";
    ORCALUT4 i6974_3_lut_4_lut (.A(n8610), .B(n8655), .C(n7637), .D(n8449), 
            .Z(t_in[4])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(211[2] 385[9])
    defparam i6974_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 a_sel_2__I_0_Mux_5_i4_3_lut (.A(a[6]), .B(a[4]), .C(a_sel[0]), 
            .Z(n4_adj_771)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(158[2] 163[17])
    defparam a_sel_2__I_0_Mux_5_i4_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_114 (.A(n3), .B(slot[2]), .C(n3_adj_767), 
            .D(rpopp_N_378), .Z(n6372)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(153[2] 157[19])
    defparam i1_2_lut_3_lut_4_lut_adj_114.init = 16'h0002;
    FD1P3AX p_i0_i5 (.D(\p_in[5] ), .SP(pload), .CK(aclk_c), .Q(p_c[5])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam p_i0_i5.GSR = "ENABLED";
    FD1P3AX p_i0_i4 (.D(p_in[4]), .SP(pload), .CK(aclk_c), .Q(p_c[4])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam p_i0_i4.GSR = "ENABLED";
    ORCALUT4 n8418_bdd_3_lut_4_lut (.A(t_sel_3__N_308[1]), .B(n8655), .C(memory_data_i[12]), 
            .D(n8418), .Z(n8419)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(211[2] 385[9])
    defparam n8418_bdd_3_lut_4_lut.init = 16'hf780;
    FD1P3AX p_i0_i3 (.D(p_in[3]), .SP(pload), .CK(aclk_c), .Q(p_c[3])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam p_i0_i3.GSR = "ENABLED";
    ORCALUT4 i6791_3_lut (.A(memory_data_i[4]), .B(n2_adj_772), .C(n8600), 
            .Z(n7455)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6791_3_lut.init = 16'hcaca;
    ORCALUT4 i905_2_lut_rep_229 (.A(rp[2]), .B(n4_adj_773), .Z(n8609)) /* synthesis lut_function=(A (B)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(438[4] 445[11])
    defparam i905_2_lut_rep_229.init = 16'h8888;
    ORCALUT4 mux_277_i2_3_lut_4_lut (.A(p_sel[0]), .B(\p_sel[1] ), .C(p_in_15__N_282[1]), 
            .D(interrupt_i_c_1), .Z(n646[1])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(169[2] 174[19])
    defparam mux_277_i2_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i3142_3_lut_4_lut (.A(p_sel[0]), .B(\p_sel[1] ), .C(\p_in_15__N_282[0] ), 
            .D(interrupt_i_c_0), .Z(n3860)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(169[2] 174[19])
    defparam i3142_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i6981_3_lut_4_lut (.A(n8610), .B(n8655), .C(n7644), .D(n8453), 
            .Z(t_in[3])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(211[2] 385[9])
    defparam i6981_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 i1_4_lut (.A(n8653), .B(n6531), .C(n7283), .D(rp[0]), .Z(n6548)) /* synthesis lut_function=(A+(B+!(C+(D)))) */ ;
    defparam i1_4_lut.init = 16'heeef;
    PFUMX i6956 (.BLUT(n8_adj_774), .ALUT(n9_adj_775), .C0(n8593), .Z(n7620));
    ORCALUT4 i1_2_lut (.A(rp[1]), .B(rp[2]), .Z(n7283)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    ORCALUT4 a_sel_2__I_0_Mux_4_i2_3_lut (.A(a_in_16__N_215[4]), .B(a[5]), 
            .C(a_sel[0]), .Z(n2_adj_772)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(158[2] 163[17])
    defparam a_sel_2__I_0_Mux_4_i2_3_lut.init = 16'hcaca;
    ORCALUT4 i3635_4_lut_4_lut (.A(n3), .B(slot[2]), .C(n3_adj_770), .D(n4_adj_776), 
            .Z(n30)) /* synthesis lut_function=(A (B)+!A (B+(C (D)))) */ ;
    defparam i3635_4_lut_4_lut.init = 16'hdccc;
    FD1S3AX rp_599__i0 (.D(n7791), .CK(aclk_c), .Q(rp[0]));   // c:/lscc/ep16vhdl/ep16.vhd(438[4] 445[11])
    defparam rp_599__i0.GSR = "ENABLED";
    ORCALUT4 t_sel_3__I_0_Mux_5_i9_3_lut_4_lut (.A(n1326), .B(n8640), .C(t_sel[0]), 
            .D(memory_data_i[4]), .Z(n9_adj_777)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam t_sel_3__I_0_Mux_5_i9_3_lut_4_lut.init = 16'h8f80;
    ORCALUT4 i3495_3_lut_4_lut (.A(n21), .B(n3_c), .C(slot[2]), .D(n3_adj_770), 
            .Z(n15)) /* synthesis lut_function=(!(A (B+(C))+!A (B+(C+(D))))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(232[2] 384[11])
    defparam i3495_3_lut_4_lut.init = 16'h0203;
    ORCALUT4 a_sel_2__I_0_Mux_4_i4_3_lut (.A(a[5]), .B(a[3]), .C(a_sel[0]), 
            .Z(n4_adj_778)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(158[2] 163[17])
    defparam a_sel_2__I_0_Mux_4_i4_3_lut.init = 16'hcaca;
    FD1P3AX p_i0_i2 (.D(p_in[2]), .SP(pload), .CK(aclk_c), .Q(p_c[2])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam p_i0_i2.GSR = "ENABLED";
    FD1P3AX p_i0_i1 (.D(p_in[1]), .SP(pload), .CK(aclk_c), .Q(p_c[1])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam p_i0_i1.GSR = "ENABLED";
    ORCALUT4 i1_3_lut_rep_230_4_lut (.A(n3_adj_769), .B(n9434), .C(n3541), 
            .D(n5), .Z(n8610)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_3_lut_rep_230_4_lut.init = 16'hfef0;
    ORCALUT4 n8414_bdd_3_lut_4_lut (.A(t_sel_3__N_308[1]), .B(n8655), .C(memory_data_i[13]), 
            .D(n8414), .Z(n8415)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(211[2] 385[9])
    defparam n8414_bdd_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 i1_2_lut_rep_223_4_lut (.A(p_c[2]), .B(a[2]), .C(n8637), 
            .D(system_write), .Z(n8603)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(175[2] 177[35])
    defparam i1_2_lut_rep_223_4_lut.init = 16'hca00;
    ORCALUT4 i3480_rep_44_2_lut_4_lut (.A(code[4]), .B(n3541), .C(n5), 
            .D(n8655), .Z(n7883)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;
    defparam i3480_rep_44_2_lut_4_lut.init = 16'hec00;
    ORCALUT4 i7354_4_lut (.A(tload), .B(t_sel_3__N_308[0]), .C(n32), .D(n8654), 
            .Z(aclk_c_enable_74)) /* synthesis lut_function=(A (((D)+!C)+!B)) */ ;
    defparam i7354_4_lut.init = 16'haa2a;
    ORCALUT4 i1_2_lut_3_lut (.A(n3_adj_770), .B(n3), .C(slot[2]), .Z(n35)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(153[2] 157[19])
    defparam i1_2_lut_3_lut.init = 16'h0808;
    ORCALUT4 i830_2_lut_3_lut_4_lut (.A(n6531), .B(n8653), .C(rp1[4]), 
            .D(arst_c), .Z(n1537)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i830_2_lut_3_lut_4_lut.init = 16'he000;
    CCU2B add_282_add_4_3 (.A0(memory_data_i[1]), .B0(n1305), .C0(n8664), 
          .D0(n1322), .A1(memory_data_i[2]), .B1(n1305), .C1(n8664), 
          .D1(n1323), .CIN(n5666), .COUT(n5667), .S0(sum[1]), .S1(sum[2]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_282_add_4_3.INIT0 = 16'h6aaa;
    defparam add_282_add_4_3.INIT1 = 16'h6aaa;
    defparam add_282_add_4_3.INJECT1_0 = "NO";
    defparam add_282_add_4_3.INJECT1_1 = "NO";
    ORCALUT4 i1_4_lut_4_lut (.A(n8662), .B(r_sel_1__N_248[1]), .C(n8657), 
            .D(rload_N_400), .Z(rload)) /* synthesis lut_function=(A (C+(D))+!A (B)) */ ;
    defparam i1_4_lut_4_lut.init = 16'heee4;
    ORCALUT4 t_sel_3__I_0_Mux_10_i11_3_lut (.A(\a[10] ), .B(r[10]), .C(t_sel[0]), 
            .Z(n11)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(137[2] 152[44])
    defparam t_sel_3__I_0_Mux_10_i11_3_lut.init = 16'hcaca;
    FD1P3AX t__i1 (.D(t_in[0]), .SP(tload), .CK(aclk_c), .Q(memory_data_i[0])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam t__i1.GSR = "ENABLED";
    FD1P3AX a_i0_i16 (.D(a_in[16]), .SP(aload), .CK(aclk_c), .Q(a[16])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam a_i0_i16.GSR = "ENABLED";
    FD1P3AX r_i0_i0 (.D(r_in[0]), .SP(rload), .CK(aclk_c), .Q(r[0])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam r_i0_i0.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_115 (.A(n8662), .B(r_sel_1__N_248[1]), 
            .C(rp1[2]), .D(n6531), .Z(n6881)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C)+!B (C (D)+!C !(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_115.init = 16'h0fb4;
    PFUMX i6957 (.BLUT(n11_adj_779), .ALUT(n12_adj_780), .C0(n8593), .Z(n7621));
    ORCALUT4 i49_4_lut (.A(n6985), .B(n8688), .C(code[3]), .D(n30_adj_781), 
            .Z(n32)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i49_4_lut.init = 16'hcac0;
    FD1P3AX a_i0_i15 (.D(a_in[15]), .SP(aload), .CK(aclk_c), .Q(a[15])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam a_i0_i15.GSR = "ENABLED";
    FD1P3AX a_i0_i0 (.D(a_in[0]), .SP(aload), .CK(aclk_c), .Q(a[0])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam a_i0_i0.GSR = "ENABLED";
    ORCALUT4 t_sel_3__I_0_Mux_1_i11_3_lut (.A(a[1]), .B(r[1]), .C(t_sel[0]), 
            .Z(n11_adj_782)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(137[2] 152[44])
    defparam t_sel_3__I_0_Mux_1_i11_3_lut.init = 16'hcaca;
    FD1P3AX p_i0_i0 (.D(\p_in[0] ), .SP(pload), .CK(aclk_c), .Q(p_c[0])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam p_i0_i0.GSR = "ENABLED";
    FD1P3AX i_i0_i0 (.D(system_data_o[0]), .SP(iload), .CK(aclk_c), .Q(\i[0] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i_i0_i0.GSR = "ENABLED";
    FD1P3AX a_i0_i14 (.D(a_in[14]), .SP(aload), .CK(aclk_c), .Q(\a[14] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam a_i0_i14.GSR = "ENABLED";
    FD1P3AX a_i0_i13 (.D(a_in[13]), .SP(aload), .CK(aclk_c), .Q(\a[13] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam a_i0_i13.GSR = "ENABLED";
    FD1P3AX a_i0_i12 (.D(a_in[12]), .SP(aload), .CK(aclk_c), .Q(\a[12] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam a_i0_i12.GSR = "ENABLED";
    FD1P3AX a_i0_i11 (.D(a_in[11]), .SP(aload), .CK(aclk_c), .Q(\a[11] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam a_i0_i11.GSR = "ENABLED";
    PFUMX i6963 (.BLUT(n8_adj_783), .ALUT(n9_adj_777), .C0(n8593), .Z(n7627));
    FD1S3IX slot__i0 (.D(slot_2__N_315[0]), .CK(aclk_c), .CD(slot_2__N_318), 
            .Q(\slot[0] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam slot__i0.GSR = "ENABLED";
    ORCALUT4 r_sel_0__bdd_3_lut_4_lut (.A(n6531), .B(n8653), .C(rp[3]), 
            .D(rp[4]), .Z(n8478)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam r_sel_0__bdd_3_lut_4_lut.init = 16'h1fe0;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_116 (.A(n8662), .B(r_sel_1__N_248[1]), 
            .C(pload), .D(\p_sel[1] ), .Z(aclk_c_enable_31)) /* synthesis lut_function=(A (C (D))+!A (B (C)+!B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_116.init = 16'hf040;
    ORCALUT4 i1_3_lut_rep_225_4_lut (.A(n6531), .B(n8653), .C(n8666), 
            .D(rp1[2]), .Z(n8605)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (D))) */ ;
    defparam i1_3_lut_rep_225_4_lut.init = 16'hf100;
    ORCALUT4 t_sel_3__I_0_Mux_1_i12_3_lut (.A(system_data_o[1]), .B(memory_data_i[9]), 
            .C(t_sel[0]), .Z(n12_adj_784)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(137[2] 152[44])
    defparam t_sel_3__I_0_Mux_1_i12_3_lut.init = 16'hcaca;
    ORCALUT4 i1_3_lut (.A(n8641), .B(n26), .C(code[4]), .Z(n6985)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut.init = 16'h8080;
    CCU2B add_282_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(memory_data_i[0]), .B1(n1305), .C1(n8664), .D1(n1321), 
          .COUT(n5666), .S1(sum[0]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_282_add_4_1.INIT0 = 16'h0000;
    defparam add_282_add_4_1.INIT1 = 16'h6aaa;
    defparam add_282_add_4_1.INJECT1_0 = "NO";
    defparam add_282_add_4_1.INJECT1_1 = "NO";
    CCU2B p_15__I_0_259_add_4_17 (.A0(p_c[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5665), .S0(p_in_15__N_282[15]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam p_15__I_0_259_add_4_17.INIT0 = 16'haaaa;
    defparam p_15__I_0_259_add_4_17.INIT1 = 16'h0000;
    defparam p_15__I_0_259_add_4_17.INJECT1_0 = "NO";
    defparam p_15__I_0_259_add_4_17.INJECT1_1 = "NO";
    ORCALUT4 i6846_3_lut_4_lut (.A(n6531), .B(n8653), .C(p[9]), .D(r_in_16__N_181[9]), 
            .Z(n7510)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam i6846_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i6855_3_lut_4_lut (.A(n6531), .B(n8653), .C(p[8]), .D(r_in_16__N_181[8]), 
            .Z(n7519)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam i6855_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i1_2_lut_rep_231_3_lut (.A(n8662), .B(r_sel_1__N_248[1]), .C(n6531), 
            .Z(aclk_c_enable_78)) /* synthesis lut_function=(A (C)+!A (B+(C))) */ ;
    defparam i1_2_lut_rep_231_3_lut.init = 16'hf4f4;
    CCU2B p_15__I_0_259_add_4_15 (.A0(\p[13] ), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\p[14] ), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n5664), .COUT(n5665), .S0(p_in_15__N_282[13]), .S1(p_in_15__N_282[14]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam p_15__I_0_259_add_4_15.INIT0 = 16'haaaa;
    defparam p_15__I_0_259_add_4_15.INIT1 = 16'haaaa;
    defparam p_15__I_0_259_add_4_15.INJECT1_0 = "NO";
    defparam p_15__I_0_259_add_4_15.INJECT1_1 = "NO";
    ORCALUT4 i1_2_lut_rep_226_4_lut (.A(p_c[2]), .B(a[2]), .C(n8637), 
            .D(tx_en), .Z(n8606)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(175[2] 177[35])
    defparam i1_2_lut_rep_226_4_lut.init = 16'hffca;
    ORCALUT4 i6873_3_lut_4_lut (.A(n6531), .B(n8653), .C(p_c[4]), .D(r_in_16__N_181[4]), 
            .Z(n7537)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam i6873_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i6867_3_lut_4_lut (.A(n6531), .B(n8653), .C(\p[14] ), .D(r_in_16__N_181[14]), 
            .Z(n7531)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam i6867_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i1_4_lut_adj_117 (.A(n2084), .B(code[3]), .C(n6404), .D(code[0]), 
            .Z(n6772)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_4_lut_adj_117.init = 16'h0002;
    CCU2B p_15__I_0_259_add_4_13 (.A0(\p[11] ), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\p[12] ), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n5663), .COUT(n5664), .S0(p_in_15__N_282[11]), .S1(p_in_15__N_282[12]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam p_15__I_0_259_add_4_13.INIT0 = 16'haaaa;
    defparam p_15__I_0_259_add_4_13.INIT1 = 16'haaaa;
    defparam p_15__I_0_259_add_4_13.INJECT1_0 = "NO";
    defparam p_15__I_0_259_add_4_13.INJECT1_1 = "NO";
    CCU2B p_15__I_0_259_add_4_11 (.A0(p[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(p[10]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n5662), .COUT(n5663), .S0(p_in_15__N_282[9]), .S1(p_in_15__N_282[10]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam p_15__I_0_259_add_4_11.INIT0 = 16'haaaa;
    defparam p_15__I_0_259_add_4_11.INIT1 = 16'haaaa;
    defparam p_15__I_0_259_add_4_11.INJECT1_0 = "NO";
    defparam p_15__I_0_259_add_4_11.INJECT1_1 = "NO";
    ORCALUT4 i1293_3_lut_4_lut (.A(n6531), .B(n8653), .C(rp1[0]), .D(rp1[1]), 
            .Z(n2012)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (D))) */ ;
    defparam i1293_3_lut_4_lut.init = 16'hf100;
    ORCALUT4 i3491_3_lut (.A(n3_adj_767), .B(slot[2]), .C(n3_adj_770), 
            .Z(n2084)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(232[2] 384[11])
    defparam i3491_3_lut.init = 16'hecec;
    CCU2B a_16__I_0_262_add_4_13 (.A0(\a[11] ), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\a[12] ), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n5654), .COUT(n5655), .S0(a_in_16__N_215[11]), .S1(a_in_16__N_215[12]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam a_16__I_0_262_add_4_13.INIT0 = 16'haaaa;
    defparam a_16__I_0_262_add_4_13.INIT1 = 16'haaaa;
    defparam a_16__I_0_262_add_4_13.INJECT1_0 = "NO";
    defparam a_16__I_0_262_add_4_13.INJECT1_1 = "NO";
    FD1S3AX sp_598__i0 (.D(n7793), .CK(aclk_c), .Q(sp[0]));   // c:/lscc/ep16vhdl/ep16.vhd(430[4] 437[11])
    defparam sp_598__i0.GSR = "ENABLED";
    FD1P3AX a_i0_i10 (.D(a_in[10]), .SP(aload), .CK(aclk_c), .Q(\a[10] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam a_i0_i10.GSR = "ENABLED";
    ORCALUT4 i6761_4_lut (.A(n1535[1]), .B(memory_data_i[1]), .C(aclk_c_enable_78), 
            .D(n1435), .Z(n7425)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i6761_4_lut.init = 16'hcac0;
    ORCALUT4 mux_827_i2_3_lut (.A(n1502), .B(n1519), .C(rp[4]), .Z(n1535[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_827_i2_3_lut.init = 16'hcaca;
    FD1P3AX i_i0_i10 (.D(system_data_o[10]), .SP(iload), .CK(aclk_c), 
            .Q(i[10])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i_i0_i10.GSR = "ENABLED";
    FD1P3AX i_i0_i9 (.D(system_data_o[9]), .SP(iload), .CK(aclk_c), .Q(i[9])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i_i0_i9.GSR = "ENABLED";
    FD1P3AX i_i0_i8 (.D(system_data_o[8]), .SP(iload), .CK(aclk_c), .Q(i[8])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i_i0_i8.GSR = "ENABLED";
    FD1P3AX i_i0_i7 (.D(system_data_o[7]), .SP(iload), .CK(aclk_c), .Q(i[7])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i_i0_i7.GSR = "ENABLED";
    FD1P3AX i_i0_i6 (.D(system_data_o[6]), .SP(iload), .CK(aclk_c), .Q(i[6])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i_i0_i6.GSR = "ENABLED";
    FD1P3AX i_i0_i5 (.D(system_data_o[5]), .SP(iload), .CK(aclk_c), .Q(\i[5] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i_i0_i5.GSR = "ENABLED";
    FD1P3AX i_i0_i4 (.D(system_data_o[4]), .SP(iload), .CK(aclk_c), .Q(i[4])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i_i0_i4.GSR = "ENABLED";
    FD1P3AX i_i0_i3 (.D(system_data_o[3]), .SP(iload), .CK(aclk_c), .Q(i[3])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i_i0_i3.GSR = "ENABLED";
    FD1P3AX i_i0_i2 (.D(system_data_o[2]), .SP(iload), .CK(aclk_c), .Q(i[2])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i_i0_i2.GSR = "ENABLED";
    FD1P3AX i_i0_i1 (.D(system_data_o[1]), .SP(iload), .CK(aclk_c), .Q(i[1])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i_i0_i1.GSR = "ENABLED";
    FD1P3AX p_i0_i15 (.D(p_in[15]), .SP(aclk_c_enable_31), .CK(aclk_c), 
            .Q(p_c[15])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam p_i0_i15.GSR = "ENABLED";
    FD1P3AX p_i0_i14 (.D(p_in[14]), .SP(aclk_c_enable_35), .CK(aclk_c), 
            .Q(\p[14] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam p_i0_i14.GSR = "ENABLED";
    FD1P3AX p_i0_i13 (.D(p_in[13]), .SP(aclk_c_enable_35), .CK(aclk_c), 
            .Q(\p[13] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam p_i0_i13.GSR = "ENABLED";
    FD1P3AX p_i0_i12 (.D(p_in[12]), .SP(aclk_c_enable_35), .CK(aclk_c), 
            .Q(\p[12] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam p_i0_i12.GSR = "ENABLED";
    FD1P3AX p_i0_i11 (.D(p_in[11]), .SP(aclk_c_enable_35), .CK(aclk_c), 
            .Q(\p[11] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam p_i0_i11.GSR = "ENABLED";
    ORCALUT4 i6843_3_lut_4_lut (.A(n6531), .B(n8653), .C(p[10]), .D(r_in_16__N_181[10]), 
            .Z(n7507)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam i6843_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i6837_3_lut_4_lut (.A(n6531), .B(n8653), .C(\p[11] ), .D(r_in_16__N_181[11]), 
            .Z(n7501)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam i6837_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i6794_3_lut (.A(memory_data_i[13]), .B(n2_adj_785), .C(n8600), 
            .Z(n7458)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6794_3_lut.init = 16'hcaca;
    ORCALUT4 i1_3_lut_4_lut (.A(n6531), .B(n8653), .C(rp[2]), .D(n4_adj_773), 
            .Z(n6670)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h1ee1;
    ORCALUT4 a_sel_2__I_0_Mux_13_i2_3_lut (.A(a_in_16__N_215[13]), .B(\a[14] ), 
            .C(a_sel[0]), .Z(n2_adj_785)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(158[2] 163[17])
    defparam a_sel_2__I_0_Mux_13_i2_3_lut.init = 16'hcaca;
    ORCALUT4 a_sel_2__I_0_Mux_13_i4_3_lut (.A(\a[14] ), .B(\a[12] ), .C(a_sel[0]), 
            .Z(n4_adj_786)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(158[2] 163[17])
    defparam a_sel_2__I_0_Mux_13_i4_3_lut.init = 16'hcaca;
    ORCALUT4 i50_then_4_lut (.A(slot[2]), .B(n3_adj_767), .C(n3_adj_770), 
            .D(n30_adj_781), .Z(n8687)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i50_then_4_lut.init = 16'h0100;
    ORCALUT4 i6797_4_lut (.A(n1535[15]), .B(memory_data_i[15]), .C(aclk_c_enable_78), 
            .D(n1435), .Z(n7461)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i6797_4_lut.init = 16'hcac0;
    ORCALUT4 t_sel_3__I_0_Mux_14_i8_3_lut (.A(sum[13]), .B(memory_data_i[13]), 
            .C(t_sel[0]), .Z(n8_adj_787)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(137[2] 152[44])
    defparam t_sel_3__I_0_Mux_14_i8_3_lut.init = 16'hcaca;
    ORCALUT4 i6830_3_lut (.A(n18_c), .B(n21), .C(code[2]), .Z(n7494)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6830_3_lut.init = 16'hcaca;
    ORCALUT4 mux_827_i16_3_lut (.A(n1516), .B(n1533), .C(rp[4]), .Z(n1535[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_827_i16_3_lut.init = 16'hcaca;
    ORCALUT4 i1_3_lut_4_lut_adj_118 (.A(\p_sel[1] ), .B(n8653), .C(p_sel[0]), 
            .D(pload), .Z(aclk_c_enable_35)) /* synthesis lut_function=(A (D)+!A (B (D)+!B !(C+!(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_118.init = 16'hef00;
    ORCALUT4 i6834_3_lut_4_lut (.A(n6531), .B(n8653), .C(\p[12] ), .D(r_in_16__N_181[12]), 
            .Z(n7498)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam i6834_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i1_3_lut_4_lut_adj_119 (.A(n6531), .B(n8653), .C(rp[1]), 
            .D(rp[0]), .Z(n6638)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_119.init = 16'h1ee1;
    ORCALUT4 i1_3_lut_4_lut_adj_120 (.A(n6531), .B(n8653), .C(rp1[1]), 
            .D(rp1[0]), .Z(n6637)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_120.init = 16'h1ee1;
    ORCALUT4 i829_2_lut_3_lut_4_lut (.A(n6531), .B(n8653), .C(rp1[4]), 
            .D(arst_c), .Z(n1536)) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;
    defparam i829_2_lut_3_lut_4_lut.init = 16'h0e00;
    ORCALUT4 i6864_3_lut_4_lut (.A(n6531), .B(n8653), .C(p_c[5]), .D(r_in_16__N_181[5]), 
            .Z(n7528)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam i6864_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i3463_3_lut_4_lut (.A(n6531), .B(n8653), .C(n8655), .D(n567[8]), 
            .Z(aclk_c_enable_153)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i3463_3_lut_4_lut.init = 16'hfeee;
    ORCALUT4 t_sel_3__I_0_Mux_14_i11_3_lut (.A(\a[14] ), .B(r[14]), .C(t_sel[0]), 
            .Z(n11_adj_788)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(137[2] 152[44])
    defparam t_sel_3__I_0_Mux_14_i11_3_lut.init = 16'hcaca;
    ORCALUT4 i1_3_lut_4_lut_adj_121 (.A(n6), .B(n8597), .C(sp[3]), .D(n8614), 
            .Z(n6671)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A (C (D)+!C !(D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(430[4] 437[11])
    defparam i1_3_lut_4_lut_adj_121.init = 16'h2dd2;
    ORCALUT4 t_sel_3__I_0_Mux_14_i12_3_lut (.A(system_data_o[14]), .B(memory_data_i[6]), 
            .C(t_sel[0]), .Z(n12_adj_789)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(137[2] 152[44])
    defparam t_sel_3__I_0_Mux_14_i12_3_lut.init = 16'hcaca;
    ORCALUT4 i6861_3_lut_4_lut (.A(n6531), .B(n8653), .C(p_c[6]), .D(r_in_16__N_181[6]), 
            .Z(n7525)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam i6861_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i1463_2_lut_rep_222_4_lut (.A(p_c[0]), .B(a[0]), .C(n8637), 
            .D(\memory_addr[1] ), .Z(n8602)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(175[2] 177[35])
    defparam i1463_2_lut_rep_222_4_lut.init = 16'h00ca;
    ORCALUT4 i7375_2_lut_4_lut (.A(p_c[0]), .B(a[0]), .C(n8637), .D(\memory_addr[1] ), 
            .Z(n7611)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(175[2] 177[35])
    defparam i7375_2_lut_4_lut.init = 16'hffca;
    PFUMX i6964 (.BLUT(n11_adj_790), .ALUT(n12_adj_791), .C0(n8593), .Z(n7628));
    CCU2B p_15__I_0_259_add_4_9 (.A0(p_c[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(p[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n5661), .COUT(n5662), .S0(p_in_15__N_282[7]), .S1(p_in_15__N_282[8]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam p_15__I_0_259_add_4_9.INIT0 = 16'haaaa;
    defparam p_15__I_0_259_add_4_9.INIT1 = 16'haaaa;
    defparam p_15__I_0_259_add_4_9.INJECT1_0 = "NO";
    defparam p_15__I_0_259_add_4_9.INJECT1_1 = "NO";
    ORCALUT4 i1_2_lut_3_lut_adj_122 (.A(n8662), .B(r_sel_1__N_248[1]), .C(rp1[0]), 
            .Z(n6927)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;
    defparam i1_2_lut_3_lut_adj_122.init = 16'hb0b0;
    FD1S3AY rp1_i0_i0 (.D(n7795), .CK(aclk_c), .Q(rp1[0])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam rp1_i0_i0.GSR = "ENABLED";
    ORCALUT4 r_sel_0__bdd_3_lut_7491_4_lut (.A(n6531), .B(n8653), .C(rp1[3]), 
            .D(rp1[4]), .Z(n8210)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam r_sel_0__bdd_3_lut_7491_4_lut.init = 16'h1fe0;
    PFUMX i7582 (.BLUT(n8479), .ALUT(n8478), .C0(n8609), .Z(n8480));
    CCU2B a_16__I_0_262_add_4_11 (.A0(\a[9] ), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\a[10] ), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n5653), .COUT(n5654), .S0(a_in_16__N_215[9]), .S1(a_in_16__N_215[10]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam a_16__I_0_262_add_4_11.INIT0 = 16'haaaa;
    defparam a_16__I_0_262_add_4_11.INIT1 = 16'haaaa;
    defparam a_16__I_0_262_add_4_11.INJECT1_0 = "NO";
    defparam a_16__I_0_262_add_4_11.INJECT1_1 = "NO";
    ORCALUT4 i1_3_lut_4_lut_adj_123 (.A(n8662), .B(r_sel_1__N_248[1]), .C(n8675), 
            .D(n6531), .Z(n5962)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;
    defparam i1_3_lut_4_lut_adj_123.init = 16'h00b0;
    ORCALUT4 t_sel_3__I_0_Mux_10_i12_3_lut (.A(system_data_o[10]), .B(memory_data_i[2]), 
            .C(t_sel[0]), .Z(n12_adj_792)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(137[2] 152[44])
    defparam t_sel_3__I_0_Mux_10_i12_3_lut.init = 16'hcaca;
    ORCALUT4 i6858_3_lut_4_lut (.A(n6531), .B(n8653), .C(p_c[7]), .D(r_in_16__N_181[7]), 
            .Z(n7522)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam i6858_3_lut_4_lut.init = 16'hf1e0;
    CCU2B p_15__I_0_259_add_4_7 (.A0(p_c[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(p_c[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n5660), .COUT(n5661), .S0(\p_in_15__N_282[5] ), .S1(p_in_15__N_282[6]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam p_15__I_0_259_add_4_7.INIT0 = 16'haaaa;
    defparam p_15__I_0_259_add_4_7.INIT1 = 16'haaaa;
    defparam p_15__I_0_259_add_4_7.INJECT1_0 = "NO";
    defparam p_15__I_0_259_add_4_7.INJECT1_1 = "NO";
    ORCALUT4 t_sel_3__I_0_Mux_9_i8_3_lut (.A(sum[8]), .B(memory_data_i[8]), 
            .C(t_sel[0]), .Z(n8_adj_793)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(137[2] 152[44])
    defparam t_sel_3__I_0_Mux_9_i8_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_4_lut (.A(n21), .B(n8647), .C(code[2]), .D(n6376), 
            .Z(intload)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(232[2] 384[11])
    defparam i1_2_lut_4_lut.init = 16'hca00;
    ORCALUT4 i50_else_4_lut (.A(n3), .B(slot[2]), .C(n3_adj_767), .D(n3_adj_770), 
            .Z(n8686)) /* synthesis lut_function=(!(A (B+(D))+!A (B+!(C)))) */ ;
    defparam i50_else_4_lut.init = 16'h1032;
    ORCALUT4 i780_3_lut_4_lut (.A(aclk_c_enable_78), .B(arst_c), .C(n1419), 
            .D(rp1[4]), .Z(n1424)) /* synthesis lut_function=(!(((C (D))+!B)+!A)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i780_3_lut_4_lut.init = 16'h0888;
    ORCALUT4 i7377_2_lut_3_lut (.A(n8662), .B(r_sel_1__N_248[1]), .C(\p_sel[1] ), 
            .Z(n7595)) /* synthesis lut_function=(!(A (C)+!A !(B+!(C)))) */ ;
    defparam i7377_2_lut_3_lut.init = 16'h4f4f;
    CCU2B p_15__I_0_259_add_4_5 (.A0(p_c[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(p_c[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n5659), .COUT(n5660), .S0(p_in_15__N_282[3]), .S1(p_in_15__N_282[4]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam p_15__I_0_259_add_4_5.INIT0 = 16'haaaa;
    defparam p_15__I_0_259_add_4_5.INIT1 = 16'haaaa;
    defparam p_15__I_0_259_add_4_5.INJECT1_0 = "NO";
    defparam p_15__I_0_259_add_4_5.INJECT1_1 = "NO";
    FD1P3AX a_i0_i9 (.D(a_in[9]), .SP(aload), .CK(aclk_c), .Q(\a[9] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam a_i0_i9.GSR = "ENABLED";
    ORCALUT4 i1_3_lut_4_lut_adj_124 (.A(n8662), .B(r_sel_1__N_248[1]), .C(r_in_16__N_181[16]), 
            .D(n6531), .Z(n6634)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;
    defparam i1_3_lut_4_lut_adj_124.init = 16'h00b0;
    FD1P3AX a_i0_i8 (.D(a_in[8]), .SP(aload), .CK(aclk_c), .Q(\a[8] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam a_i0_i8.GSR = "ENABLED";
    ORCALUT4 i6831_3_lut_4_lut (.A(code[0]), .B(code[1]), .C(code[2]), 
            .D(n25), .Z(n7495)) /* synthesis lut_function=(A (C+(D))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(232[2] 384[11])
    defparam i6831_3_lut_4_lut.init = 16'hbfb0;
    ORCALUT4 i5785_2_lut (.A(\slot[1] ), .B(i[7]), .Z(n6420)) /* synthesis lut_function=(A (B)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(153[2] 157[19])
    defparam i5785_2_lut.init = 16'h8888;
    ORCALUT4 i2844_3_lut_4_lut (.A(code[0]), .B(code[1]), .C(code[3]), 
            .D(n8641), .Z(n5)) /* synthesis lut_function=(A (C+(D))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(232[2] 384[11])
    defparam i2844_3_lut_4_lut.init = 16'hbfb0;
    ORCALUT4 i6722_4_lut (.A(slot[2]), .B(n3_adj_770), .C(\slot[1] ), 
            .D(i[15]), .Z(n7386)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(232[2] 384[11])
    defparam i6722_4_lut.init = 16'heeea;
    ORCALUT4 i1_4_lut_else_4_lut (.A(slot[2]), .B(n3), .C(n3_c), .D(n3_adj_769), 
            .Z(n8722)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(153[2] 157[19])
    defparam i1_4_lut_else_4_lut.init = 16'h0040;
    ORCALUT4 i7244_3_lut_4_lut (.A(n8697), .B(n29), .C(n3_c), .D(slot[2]), 
            .Z(n7441)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;
    defparam i7244_3_lut_4_lut.init = 16'hccca;
    ORCALUT4 i6750_3_lut_4_lut (.A(n6531), .B(n8653), .C(p_c[3]), .D(r_in_16__N_181[3]), 
            .Z(n7414)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam i6750_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i5069_3_lut (.A(sum[14]), .B(memory_data_i[14]), .C(t_sel[0]), 
            .Z(n5702)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i5069_3_lut.init = 16'hcaca;
    PFUMX i7578 (.BLUT(n8470), .ALUT(n8469), .C0(t_sel[2]), .Z(n8471));
    FD1P3AX a_i0_i7 (.D(a_in[7]), .SP(aload), .CK(aclk_c), .Q(a[7])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam a_i0_i7.GSR = "ENABLED";
    ORCALUT4 t_sel_1__bdd_3_lut_7553 (.A(t_sel[0]), .B(sum[7]), .C(sum[6]), 
            .Z(n8438)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam t_sel_1__bdd_3_lut_7553.init = 16'hd8d8;
    ORCALUT4 r_sel_1__N_248_1__bdd_4_lut (.A(r_sel_1__N_248[1]), .B(\slot[1] ), 
            .C(\slot[0] ), .D(slot[2]), .Z(n8746)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam r_sel_1__N_248_1__bdd_4_lut.init = 16'h00c2;
    FD1P3AX a_i0_i6 (.D(a_in[6]), .SP(aload), .CK(aclk_c), .Q(a[6])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam a_i0_i6.GSR = "ENABLED";
    FD1P3AX a_i0_i5 (.D(a_in[5]), .SP(aload), .CK(aclk_c), .Q(a[5])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam a_i0_i5.GSR = "ENABLED";
    FD1P3AX a_i0_i4 (.D(a_in[4]), .SP(aload), .CK(aclk_c), .Q(a[4])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam a_i0_i4.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_4_lut_4_lut (.A(n3_adj_767), .B(slot[2]), .C(n3_adj_770), 
            .D(n3), .Z(n36)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(153[2] 157[19])
    defparam i1_2_lut_4_lut_4_lut.init = 16'h1000;
    ORCALUT4 i1_3_lut_4_lut_adj_125 (.A(n8605), .B(n5962), .C(rp1[3]), 
            .D(aclk_c_enable_78), .Z(n6680)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(438[4] 445[11])
    defparam i1_3_lut_4_lut_adj_125.init = 16'h1ee1;
    ORCALUT4 i6767_3_lut (.A(a[15]), .B(r[15]), .C(t_sel[0]), .Z(n7431)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6767_3_lut.init = 16'hcaca;
    PFUMX i6970 (.BLUT(n8_adj_794), .ALUT(n9_adj_795), .C0(n8593), .Z(n7634));
    ORCALUT4 i6768_3_lut (.A(system_data_o[15]), .B(memory_data_i[7]), .C(t_sel[0]), 
            .Z(n7432)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6768_3_lut.init = 16'hcaca;
    ORCALUT4 i6756_3_lut_4_lut (.A(n6531), .B(n8653), .C(p_c[2]), .D(r_in_16__N_181[2]), 
            .Z(n7420)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam i6756_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i6762_3_lut_4_lut (.A(n6531), .B(n8653), .C(p_c[1]), .D(r_in_16__N_181[1]), 
            .Z(n7426)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam i6762_3_lut_4_lut.init = 16'hf1e0;
    PFUMX i6971 (.BLUT(n11_adj_796), .ALUT(n12_adj_797), .C0(n8593), .Z(n7635));
    FD1P3AX a_i0_i3 (.D(a_in[3]), .SP(aload), .CK(aclk_c), .Q(a[3])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam a_i0_i3.GSR = "ENABLED";
    FD1P3AX a_i0_i2 (.D(a_in[2]), .SP(aload), .CK(aclk_c), .Q(a[2])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam a_i0_i2.GSR = "ENABLED";
    PFUMX mux_265_Mux_8_i31 (.BLUT(n15_adj_798), .ALUT(n6775), .C0(code[4]), 
          .Z(n567[8])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;
    ORCALUT4 n8442_bdd_3_lut_4_lut (.A(t_sel_3__N_308[1]), .B(n8655), .C(memory_data_i[6]), 
            .D(n8442), .Z(n8443)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(211[2] 385[9])
    defparam n8442_bdd_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 i2852_4_lut_4_lut_then_4_lut (.A(n3_adj_767), .B(slot[2]), 
            .C(n3_adj_770), .D(n3_c), .Z(n8690)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i2852_4_lut_4_lut_then_4_lut.init = 16'h0001;
    PFUMX i7575 (.BLUT(n8467), .ALUT(n8466), .C0(t_sel[2]), .Z(n8468));
    PFUMX mux_83_Mux_2_i31 (.BLUT(n26), .ALUT(n30_adj_799), .C0(n7616), 
          .Z(t_sel_3__N_308[2])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;
    ORCALUT4 i2852_4_lut_4_lut_else_4_lut (.A(n3_adj_767), .B(slot[2]), 
            .C(n3_adj_770), .D(n3_c), .Z(n8689)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i2852_4_lut_4_lut_else_4_lut.init = 16'h0200;
    ORCALUT4 i1_3_lut_4_lut_adj_126 (.A(n8657), .B(n8662), .C(n7_c), .D(code[4]), 
            .Z(pload)) /* synthesis lut_function=(A+!(B ((D)+!C))) */ ;
    defparam i1_3_lut_4_lut_adj_126.init = 16'hbbfb;
    FD1P3AX a_i0_i1 (.D(a_in[1]), .SP(aload), .CK(aclk_c), .Q(a[1])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam a_i0_i1.GSR = "ENABLED";
    FD1P3AX r_i0_i16 (.D(r_in[16]), .SP(rload), .CK(aclk_c), .Q(r[16])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam r_i0_i16.GSR = "ENABLED";
    ORCALUT4 t_sel_3__I_0_Mux_0_i4_3_lut (.A(sum[0]), .B(sum[1]), .C(t_sel[0]), 
            .Z(n4_adj_800)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(137[2] 152[44])
    defparam t_sel_3__I_0_Mux_0_i4_3_lut.init = 16'hcaca;
    FD1P3AX r_i0_i15 (.D(r_in[15]), .SP(rload), .CK(aclk_c), .Q(r[15])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam r_i0_i15.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_127 (.A(n8662), .B(n8657), .C(n33), 
            .D(code[4]), .Z(a_sel[0])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(48[9:13])
    defparam i1_2_lut_3_lut_4_lut_adj_127.init = 16'h2000;
    FD1P3AX r_i0_i14 (.D(r_in[14]), .SP(rload), .CK(aclk_c), .Q(r[14])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam r_i0_i14.GSR = "ENABLED";
    CCU2B a_16__I_0_262_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(a[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n5649), .S1(a_in_16__N_215[0]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam a_16__I_0_262_add_4_1.INIT0 = 16'h0000;
    defparam a_16__I_0_262_add_4_1.INIT1 = 16'h555a;
    defparam a_16__I_0_262_add_4_1.INJECT1_0 = "NO";
    defparam a_16__I_0_262_add_4_1.INJECT1_1 = "NO";
    FD1P3AX r_i0_i13 (.D(r_in[13]), .SP(rload), .CK(aclk_c), .Q(r[13])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam r_i0_i13.GSR = "ENABLED";
    FD1P3AX r_i0_i12 (.D(r_in[12]), .SP(rload), .CK(aclk_c), .Q(r[12])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam r_i0_i12.GSR = "ENABLED";
    FD1P3AX r_i0_i11 (.D(r_in[11]), .SP(rload), .CK(aclk_c), .Q(r[11])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam r_i0_i11.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_rep_257_3_lut_4_lut (.A(n8662), .B(n8657), .C(n6367), 
            .D(code[3]), .Z(n8637)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(48[9:13])
    defparam i1_2_lut_rep_257_3_lut_4_lut.init = 16'h2000;
    ORCALUT4 i1_4_lut_adj_128 (.A(rp1[2]), .B(n8666), .C(rp1[3]), .D(arst_c), 
            .Z(n7161)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i1_4_lut_adj_128.init = 16'h0400;
    ORCALUT4 i1047_2_lut_3_lut_4_lut (.A(sp[2]), .B(n8676), .C(sp[3]), 
            .D(n6), .Z(n1734)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A !((D)+!C)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(430[4] 437[11])
    defparam i1047_2_lut_3_lut_4_lut.init = 16'h80f0;
    CCU2B p_15__I_0_259_add_4_3 (.A0(p_c[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(p_c[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n5658), .COUT(n5659), .S0(p_in_15__N_282[1]), .S1(p_in_15__N_282[2]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam p_15__I_0_259_add_4_3.INIT0 = 16'haaaa;
    defparam p_15__I_0_259_add_4_3.INIT1 = 16'haaaa;
    defparam p_15__I_0_259_add_4_3.INJECT1_0 = "NO";
    defparam p_15__I_0_259_add_4_3.INJECT1_1 = "NO";
    FD1P3AX r_i0_i10 (.D(r_in[10]), .SP(rload), .CK(aclk_c), .Q(r[10])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam r_i0_i10.GSR = "ENABLED";
    FD1P3AX r_i0_i9 (.D(r_in[9]), .SP(rload), .CK(aclk_c), .Q(r[9])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam r_i0_i9.GSR = "ENABLED";
    ORCALUT4 i6798_3_lut_4_lut (.A(n6531), .B(n8653), .C(p_c[15]), .D(r_in_16__N_181[15]), 
            .Z(n7462)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam i6798_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i7310_3_lut_4_lut (.A(t_sel_3__N_308[1]), .B(n8655), .C(n7423), 
            .D(n7422), .Z(n7424)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(211[2] 385[9])
    defparam i7310_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 i1_3_lut_4_lut_adj_129 (.A(code[1]), .B(code[0]), .C(code[3]), 
            .D(code[2]), .Z(n6823)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(153[2] 157[19])
    defparam i1_3_lut_4_lut_adj_129.init = 16'h00e0;
    FD1P3AX r_i0_i8 (.D(r_in[8]), .SP(rload), .CK(aclk_c), .Q(r[8])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam r_i0_i8.GSR = "ENABLED";
    ORCALUT4 i_14__bdd_2_lut (.A(\slot[1] ), .B(i[9]), .Z(n8252)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i_14__bdd_2_lut.init = 16'hdddd;
    ORCALUT4 i6807_3_lut_4_lut (.A(n6531), .B(n8653), .C(p_c[0]), .D(r_in_16__N_181[0]), 
            .Z(n7471)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam i6807_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 code_4__I_0_275_i15_then_4_lut (.A(slot[2]), .B(n3_adj_767), 
            .C(n3_adj_769), .D(n3), .Z(n8693)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam code_4__I_0_275_i15_then_4_lut.init = 16'h0010;
    ORCALUT4 code_4__I_0_275_i15_else_4_lut (.A(slot[2]), .B(n3_adj_767), 
            .C(n3_adj_769), .D(n3), .Z(n8692)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam code_4__I_0_275_i15_else_4_lut.init = 16'h0100;
    FD1P3AX r_i0_i7 (.D(r_in[7]), .SP(rload), .CK(aclk_c), .Q(r[7])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam r_i0_i7.GSR = "ENABLED";
    CCU2B a_16__I_0_262_add_4_9 (.A0(a[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\a[8] ), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n5652), .COUT(n5653), .S0(a_in_16__N_215[7]), .S1(a_in_16__N_215[8]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam a_16__I_0_262_add_4_9.INIT0 = 16'haaaa;
    defparam a_16__I_0_262_add_4_9.INIT1 = 16'haaaa;
    defparam a_16__I_0_262_add_4_9.INJECT1_0 = "NO";
    defparam a_16__I_0_262_add_4_9.INJECT1_1 = "NO";
    FD1P3AX r_i0_i6 (.D(r_in[6]), .SP(rload), .CK(aclk_c), .Q(r[6])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam r_i0_i6.GSR = "ENABLED";
    FD1P3AX r_i0_i5 (.D(r_in[5]), .SP(rload), .CK(aclk_c), .Q(r[5])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam r_i0_i5.GSR = "ENABLED";
    ORCALUT4 i_14__bdd_3_lut (.A(i[14]), .B(\slot[1] ), .C(i[4]), .Z(n8251)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam i_14__bdd_3_lut.init = 16'he2e2;
    PFUMX i25 (.BLUT(n22), .ALUT(n12_adj_801), .C0(n7616), .Z(n10));
    CCU2B a_16__I_0_262_add_4_7 (.A0(a[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(a[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n5651), .COUT(n5652), .S0(a_in_16__N_215[5]), .S1(a_in_16__N_215[6]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam a_16__I_0_262_add_4_7.INIT0 = 16'haaaa;
    defparam a_16__I_0_262_add_4_7.INIT1 = 16'haaaa;
    defparam a_16__I_0_262_add_4_7.INJECT1_0 = "NO";
    defparam a_16__I_0_262_add_4_7.INJECT1_1 = "NO";
    FD1P3AX r_i0_i4 (.D(r_in[4]), .SP(rload), .CK(aclk_c), .Q(r[4])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam r_i0_i4.GSR = "ENABLED";
    FD1P3AX r_i0_i3 (.D(r_in[3]), .SP(rload), .CK(aclk_c), .Q(r[3])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam r_i0_i3.GSR = "ENABLED";
    ORCALUT4 mux_83_Mux_0_i22_4_lut_then_1_lut (.A(sum[16]), .Z(n8696)) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(232[2] 384[11])
    defparam mux_83_Mux_0_i22_4_lut_then_1_lut.init = 16'h5555;
    CCU2B p_15__I_0_259_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(p_c[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n5658), .S1(\p_in_15__N_282[0] ));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam p_15__I_0_259_add_4_1.INIT0 = 16'h0000;
    defparam p_15__I_0_259_add_4_1.INIT1 = 16'h555a;
    defparam p_15__I_0_259_add_4_1.INJECT1_0 = "NO";
    defparam p_15__I_0_259_add_4_1.INJECT1_1 = "NO";
    CCU2B a_16__I_0_262_add_4_5 (.A0(a[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(a[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n5650), .COUT(n5651), .S0(a_in_16__N_215[3]), .S1(a_in_16__N_215[4]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam a_16__I_0_262_add_4_5.INIT0 = 16'haaaa;
    defparam a_16__I_0_262_add_4_5.INIT1 = 16'haaaa;
    defparam a_16__I_0_262_add_4_5.INJECT1_0 = "NO";
    defparam a_16__I_0_262_add_4_5.INJECT1_1 = "NO";
    ORCALUT4 i_13__bdd_3_lut (.A(i[13]), .B(\slot[1] ), .C(i[3]), .Z(n8254)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam i_13__bdd_3_lut.init = 16'he2e2;
    FD1P3AX r_i0_i2 (.D(r_in[2]), .SP(rload), .CK(aclk_c), .Q(r[2])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam r_i0_i2.GSR = "ENABLED";
    FD1P3AX r_i0_i1 (.D(r_in[1]), .SP(rload), .CK(aclk_c), .Q(r[1])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam r_i0_i1.GSR = "ENABLED";
    ORCALUT4 i6822_3_lut_4_lut (.A(n6531), .B(n8653), .C(\p[13] ), .D(r_in_16__N_181[13]), 
            .Z(n7486)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam i6822_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 mux_83_Mux_3_i22_3_lut_rep_261_4_lut (.A(code[0]), .B(code[1]), 
            .C(code[2]), .D(n21), .Z(n8641)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(232[2] 384[11])
    defparam mux_83_Mux_3_i22_3_lut_rep_261_4_lut.init = 16'h4f40;
    PFUMX i6977 (.BLUT(n8_adj_802), .ALUT(n9_adj_803), .C0(n8593), .Z(n7641));
    PFUMX i7573 (.BLUT(n8463), .ALUT(n8462), .C0(t_sel[2]), .Z(n8464));
    ORCALUT4 i6988_3_lut_4_lut (.A(n8610), .B(n8655), .C(n7651), .D(n8457), 
            .Z(t_in[2])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(211[2] 385[9])
    defparam i6988_3_lut_4_lut.init = 16'hf780;
    PFUMX i38 (.BLUT(n2045), .ALUT(n36), .C0(code[3]), .Z(n33));
    PFUMX i6978 (.BLUT(n11_adj_804), .ALUT(n12_adj_805), .C0(n8593), .Z(n7642));
    PFUMX i6984 (.BLUT(n8_adj_806), .ALUT(n9_adj_807), .C0(n8593), .Z(n7648));
    PFUMX i6985 (.BLUT(n11_adj_808), .ALUT(n12_adj_809), .C0(n8593), .Z(n7649));
    ORCALUT4 mux_83_Mux_0_i22_4_lut_else_1_lut (.A(n3_adj_767), .B(n3_adj_770), 
            .C(n3), .D(sum[16]), .Z(n8695)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C))+!A ((C)+!B))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(232[2] 384[11])
    defparam mux_83_Mux_0_i22_4_lut_else_1_lut.init = 16'h242c;
    ORCALUT4 t_sel_3__I_0_Mux_7_i8_3_lut (.A(sum[6]), .B(memory_data_i[6]), 
            .C(t_sel[0]), .Z(n8)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(137[2] 152[44])
    defparam t_sel_3__I_0_Mux_7_i8_3_lut.init = 16'hcaca;
    CCU2B add_282_add_4_17 (.A0(memory_data_i[15]), .B0(n1305), .C0(n8664), 
          .D0(n1336), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5673), .S0(sum[15]), .S1(sum[16]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_282_add_4_17.INIT0 = 16'h6aaa;
    defparam add_282_add_4_17.INIT1 = 16'h0000;
    defparam add_282_add_4_17.INJECT1_0 = "NO";
    defparam add_282_add_4_17.INJECT1_1 = "NO";
    ORCALUT4 n8446_bdd_3_lut_4_lut (.A(t_sel_3__N_308[1]), .B(n8655), .C(memory_data_i[5]), 
            .D(n8446), .Z(n8447)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(211[2] 385[9])
    defparam n8446_bdd_3_lut_4_lut.init = 16'hf780;
    FD1P3AX t__i16 (.D(t_in[15]), .SP(aclk_c_enable_48), .CK(aclk_c), 
            .Q(memory_data_i[15])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam t__i16.GSR = "ENABLED";
    FD1P3AX t__i15 (.D(t_in[14]), .SP(tload), .CK(aclk_c), .Q(memory_data_i[14])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam t__i15.GSR = "ENABLED";
    FD1P3AX t__i14 (.D(t_in[13]), .SP(tload), .CK(aclk_c), .Q(memory_data_i[13])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam t__i14.GSR = "ENABLED";
    FD1P3AX t__i13 (.D(t_in[12]), .SP(tload), .CK(aclk_c), .Q(memory_data_i[12])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam t__i13.GSR = "ENABLED";
    ORCALUT4 i514_2_lut (.A(\slot[0] ), .B(\slot[1] ), .Z(slot_2__N_315[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(410[17:21])
    defparam i514_2_lut.init = 16'h6666;
    PFUMX i6991 (.BLUT(n8_adj_810), .ALUT(n9_adj_811), .C0(n8593), .Z(n7655));
    FD1P3AX t__i12 (.D(t_in[11]), .SP(tload), .CK(aclk_c), .Q(memory_data_i[11])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam t__i12.GSR = "ENABLED";
    FD1P3AX t__i11 (.D(t_in[10]), .SP(tload), .CK(aclk_c), .Q(memory_data_i[10])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam t__i11.GSR = "ENABLED";
    FD1P3AX t__i10 (.D(t_in[9]), .SP(tload), .CK(aclk_c), .Q(memory_data_i[9])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam t__i10.GSR = "ENABLED";
    ORCALUT4 mux_265_Mux_3_i22_3_lut_4_lut (.A(code[0]), .B(code[1]), .C(code[2]), 
            .D(n25), .Z(n22)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(232[2] 384[11])
    defparam mux_265_Mux_3_i22_3_lut_4_lut.init = 16'h4f40;
    FD1P3AX t__i9 (.D(t_in[8]), .SP(tload), .CK(aclk_c), .Q(memory_data_i[8])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam t__i9.GSR = "ENABLED";
    FD1P3AX t__i8 (.D(t_in[7]), .SP(tload), .CK(aclk_c), .Q(memory_data_i[7])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam t__i8.GSR = "ENABLED";
    CCU2B add_282_add_4_15 (.A0(memory_data_i[13]), .B0(n1305), .C0(n8664), 
          .D0(n1334), .A1(memory_data_i[14]), .B1(n1305), .C1(n8664), 
          .D1(n1335), .CIN(n5672), .COUT(n5673), .S0(sum[13]), .S1(sum[14]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_282_add_4_15.INIT0 = 16'h6aaa;
    defparam add_282_add_4_15.INIT1 = 16'h6aaa;
    defparam add_282_add_4_15.INJECT1_0 = "NO";
    defparam add_282_add_4_15.INJECT1_1 = "NO";
    FD1P3AX t__i7 (.D(t_in[6]), .SP(tload), .CK(aclk_c), .Q(memory_data_i[6])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam t__i7.GSR = "ENABLED";
    FD1P3AX t__i6 (.D(t_in[5]), .SP(tload), .CK(aclk_c), .Q(memory_data_i[5])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam t__i6.GSR = "ENABLED";
    CCU2B a_16__I_0_262_add_4_17 (.A0(a[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(a[16]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n5656), .S0(a_in_16__N_215[15]), .S1(a_in_16__N_215[16]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam a_16__I_0_262_add_4_17.INIT0 = 16'haaaa;
    defparam a_16__I_0_262_add_4_17.INIT1 = 16'haaaa;
    defparam a_16__I_0_262_add_4_17.INJECT1_0 = "NO";
    defparam a_16__I_0_262_add_4_17.INJECT1_1 = "NO";
    FD1P3AX t__i5 (.D(t_in[4]), .SP(tload), .CK(aclk_c), .Q(memory_data_i[4])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam t__i5.GSR = "ENABLED";
    FD1P3AX t__i4 (.D(t_in[3]), .SP(tload), .CK(aclk_c), .Q(memory_data_i[3])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam t__i4.GSR = "ENABLED";
    FD1P3AX t__i3 (.D(t_in[2]), .SP(tload), .CK(aclk_c), .Q(memory_data_i[2])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam t__i3.GSR = "ENABLED";
    FD1P3AX t__i2 (.D(t_in[1]), .SP(tload), .CK(aclk_c), .Q(memory_data_i[1])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam t__i2.GSR = "ENABLED";
    ORCALUT4 i_13__bdd_2_lut (.A(\slot[1] ), .B(i[8]), .Z(n8255)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i_13__bdd_2_lut.init = 16'hdddd;
    ORCALUT4 n8450_bdd_3_lut_4_lut (.A(t_sel_3__N_308[1]), .B(n8655), .C(memory_data_i[4]), 
            .D(n8450), .Z(n8451)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(211[2] 385[9])
    defparam n8450_bdd_3_lut_4_lut.init = 16'hf780;
    CCU2B add_283_add_4_17 (.A0(r[15]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(r[16]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n5697), 
          .S0(r_in_16__N_181[15]), .S1(r_in_16__N_181[16]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam add_283_add_4_17.INIT0 = 16'h555a;
    defparam add_283_add_4_17.INIT1 = 16'h555a;
    defparam add_283_add_4_17.INJECT1_0 = "NO";
    defparam add_283_add_4_17.INJECT1_1 = "NO";
    ORCALUT4 n8454_bdd_3_lut_4_lut (.A(t_sel_3__N_308[1]), .B(n8655), .C(memory_data_i[3]), 
            .D(n8454), .Z(n8455)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(211[2] 385[9])
    defparam n8454_bdd_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 n8126_bdd_2_lut_4_lut (.A(n8656), .B(\t[16] ), .C(code[0]), 
            .D(code[2]), .Z(n8127)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n8126_bdd_2_lut_4_lut.init = 16'h00ca;
    ORCALUT4 i3452_3_lut_4_lut (.A(n8662), .B(n8657), .C(n567[4]), .D(n8614), 
            .Z(aclk_c_enable_157)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (D)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(48[9:13])
    defparam i3452_3_lut_4_lut.init = 16'hff20;
    CCU2B add_283_add_4_15 (.A0(r[13]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(r[14]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n5696), 
          .COUT(n5697), .S0(r_in_16__N_181[13]), .S1(r_in_16__N_181[14]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam add_283_add_4_15.INIT0 = 16'h555a;
    defparam add_283_add_4_15.INIT1 = 16'h555a;
    defparam add_283_add_4_15.INJECT1_0 = "NO";
    defparam add_283_add_4_15.INJECT1_1 = "NO";
    FD1S3AY sp1_i0_i0 (.D(n7797), .CK(aclk_c), .Q(sp1[0])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam sp1_i0_i0.GSR = "ENABLED";
    FD1P3AX rp_599__i4 (.D(n8480), .SP(aclk_c_enable_153), .CK(aclk_c), 
            .Q(rp[4]));   // c:/lscc/ep16vhdl/ep16.vhd(438[4] 445[11])
    defparam rp_599__i4.GSR = "ENABLED";
    CCU2B add_283_add_4_13 (.A0(r[11]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(r[12]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n5695), 
          .COUT(n5696), .S0(r_in_16__N_181[11]), .S1(r_in_16__N_181[12]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam add_283_add_4_13.INIT0 = 16'h555a;
    defparam add_283_add_4_13.INIT1 = 16'h555a;
    defparam add_283_add_4_13.INJECT1_0 = "NO";
    defparam add_283_add_4_13.INJECT1_1 = "NO";
    ORCALUT4 t_sel_3__I_0_Mux_5_i8_3_lut (.A(sum[4]), .B(memory_data_i[4]), 
            .C(t_sel[0]), .Z(n8_adj_783)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(137[2] 152[44])
    defparam t_sel_3__I_0_Mux_5_i8_3_lut.init = 16'hcaca;
    ORCALUT4 mux_800_i6_3_lut (.A(n1467), .B(n1484), .C(sp[4]), .Z(n1326)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_800_i6_3_lut.init = 16'hcaca;
    ORCALUT4 i6829_3_lut_4_lut (.A(n8610), .B(n8655), .C(n7492), .D(n8471), 
            .Z(t_in[15])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(211[2] 385[9])
    defparam i6829_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 i1_3_lut_4_lut_adj_130 (.A(n8662), .B(n8657), .C(n3_c), .D(code[4]), 
            .Z(n6376)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(48[9:13])
    defparam i1_3_lut_4_lut_adj_130.init = 16'h0002;
    PFUMX i7422 (.BLUT(n8128), .ALUT(n8127), .C0(code[1]), .Z(n7));
    PFUMX i7569 (.BLUT(n8459), .ALUT(n8458), .C0(\slot[0] ), .Z(n3_adj_767));
    ORCALUT4 i1_4_lut_adj_131 (.A(n8746), .B(n8662), .C(n567[9]), .D(n8657), 
            .Z(slot_2__N_318)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(408[7:26])
    defparam i1_4_lut_adj_131.init = 16'heeea;
    ORCALUT4 n8461_bdd_3_lut_4_lut (.A(t_sel_3__N_308[1]), .B(n8655), .C(memory_data_i[2]), 
            .D(n8461), .Z(n8462)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(211[2] 385[9])
    defparam n8461_bdd_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 n8405_bdd_3_lut_4_lut (.A(t_sel_3__N_308[1]), .B(n8655), .C(memory_data_i[14]), 
            .D(n8405), .Z(n8406)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(211[2] 385[9])
    defparam n8405_bdd_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 i1_1_lut (.A(\slot[0] ), .Z(slot_2__N_315[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(410[17:21])
    defparam i1_1_lut.init = 16'h5555;
    ORCALUT4 i7367_2_lut_3_lut_4_lut (.A(n8662), .B(n8657), .C(t_sel[2]), 
            .D(t_sel_3__N_308[1]), .Z(n7613)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(48[9:13])
    defparam i7367_2_lut_3_lut_4_lut.init = 16'hf2f0;
    ORCALUT4 i11_4_lut (.A(a[15]), .B(n8623), .C(n8593), .D(t_sel[0]), 
            .Z(n5912)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(54[9:14])
    defparam i11_4_lut.init = 16'hca0a;
    PFUMX i7567 (.BLUT(n8456), .ALUT(n8455), .C0(t_sel[2]), .Z(n8457));
    PFUMX i6992 (.BLUT(n11_adj_782), .ALUT(n12_adj_784), .C0(n8593), .Z(n7656));
    ORCALUT4 t_sel_3__I_0_Mux_8_i9_3_lut_4_lut (.A(n1329), .B(n8640), .C(t_sel[0]), 
            .D(memory_data_i[7]), .Z(n9_adj_813)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam t_sel_3__I_0_Mux_8_i9_3_lut_4_lut.init = 16'h8f80;
    ORCALUT4 mux_800_i8_3_lut (.A(n1469), .B(n1486), .C(sp[4]), .Z(n1328)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_800_i8_3_lut.init = 16'hcaca;
    ORCALUT4 i1_3_lut_4_lut_adj_132 (.A(n6548), .B(n8609), .C(rp[3]), 
            .D(aclk_c_enable_78), .Z(n6676)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A (C (D)+!C !(D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(438[4] 445[11])
    defparam i1_3_lut_4_lut_adj_132.init = 16'h2dd2;
    ORCALUT4 i6758_3_lut (.A(a[0]), .B(r[0]), .C(t_sel[0]), .Z(n7422)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6758_3_lut.init = 16'hcaca;
    CCU2B add_283_add_4_11 (.A0(r[9]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(r[10]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n5694), 
          .COUT(n5695), .S0(r_in_16__N_181[9]), .S1(r_in_16__N_181[10]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam add_283_add_4_11.INIT0 = 16'h555a;
    defparam add_283_add_4_11.INIT1 = 16'h555a;
    defparam add_283_add_4_11.INJECT1_0 = "NO";
    defparam add_283_add_4_11.INJECT1_1 = "NO";
    ORCALUT4 i3497_rep_19_2_lut (.A(n3_c), .B(slot[2]), .Z(code[3])) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(153[2] 157[19])
    defparam i3497_rep_19_2_lut.init = 16'heeee;
    ORCALUT4 t_sel_3__I_0_Mux_9_i9_3_lut_4_lut (.A(n1330), .B(n8640), .C(t_sel[0]), 
            .D(memory_data_i[8]), .Z(n9_adj_814)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam t_sel_3__I_0_Mux_9_i9_3_lut_4_lut.init = 16'h8f80;
    ORCALUT4 i6759_3_lut (.A(system_data_o[0]), .B(memory_data_i[8]), .C(t_sel[0]), 
            .Z(n7423)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6759_3_lut.init = 16'hcaca;
    ORCALUT4 i1_3_lut_rep_220_4_lut_4_lut (.A(n8672), .B(n9434), .C(n12_adj_815), 
            .D(n8662), .Z(n8600)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_3_lut_rep_220_4_lut_4_lut.init = 16'h1000;
    ORCALUT4 mux_281_i13_4_lut (.A(i[12]), .B(p_in_15__N_282[12]), .C(n8653), 
            .D(n8596), .Z(n663[12])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(169[2] 174[19])
    defparam mux_281_i13_4_lut.init = 16'hca0a;
    ORCALUT4 t_sel_3__I_0_Mux_0_i6_3_lut_4_lut (.A(t_sel_3__N_308[1]), .B(n8655), 
            .C(memory_data_i[1]), .D(n4_adj_800), .Z(n6_adj_816)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(211[2] 385[9])
    defparam t_sel_3__I_0_Mux_0_i6_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 t_sel_3__I_0_Mux_4_i9_3_lut_4_lut (.A(n1325), .B(n8640), .C(t_sel[0]), 
            .D(memory_data_i[3]), .Z(n9_adj_795)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam t_sel_3__I_0_Mux_4_i9_3_lut_4_lut.init = 16'h8f80;
    ORCALUT4 i7002_3_lut_4_lut (.A(n8610), .B(n8655), .C(n7665), .D(n8468), 
            .Z(t_in[14])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(211[2] 385[9])
    defparam i7002_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 n8422_bdd_3_lut_4_lut (.A(t_sel_3__N_308[1]), .B(n8655), .C(memory_data_i[11]), 
            .D(n8422), .Z(n8423)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(211[2] 385[9])
    defparam n8422_bdd_3_lut_4_lut.init = 16'hf780;
    PFUMX i7563 (.BLUT(n8452), .ALUT(n8451), .C0(t_sel[2]), .Z(n8453));
    ORCALUT4 i3422_2_lut_3_lut_4_lut (.A(n8672), .B(n9434), .C(t_sel_3__N_308[0]), 
            .D(n8662), .Z(t_sel[0])) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;
    defparam i3422_2_lut_3_lut_4_lut.init = 16'hd000;
    ORCALUT4 t_sel_3__I_0_Mux_6_i9_3_lut_4_lut (.A(n1327), .B(n8640), .C(t_sel[0]), 
            .D(memory_data_i[5]), .Z(n9_adj_775)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam t_sel_3__I_0_Mux_6_i9_3_lut_4_lut.init = 16'h8f80;
    ORCALUT4 i7039_3_lut_4_lut (.A(n8610), .B(n8655), .C(n7702), .D(n8408), 
            .Z(t_in[13])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(211[2] 385[9])
    defparam i7039_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 i3482_rep_33_2_lut_3_lut_4_lut (.A(n8672), .B(n9434), .C(t_sel_3__N_308[1]), 
            .D(n8662), .Z(n8593)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;
    defparam i3482_rep_33_2_lut_3_lut_4_lut.init = 16'hd000;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_133 (.A(n8672), .B(slot[2]), .C(n10), 
            .D(n8662), .Z(aload)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_133.init = 16'hd000;
    ORCALUT4 n8465_bdd_3_lut_4_lut (.A(t_sel_3__N_308[1]), .B(n8655), .C(memory_data_i[15]), 
            .D(n8465), .Z(n8466)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(211[2] 385[9])
    defparam n8465_bdd_3_lut_4_lut.init = 16'hf780;
    FD1P3AX rp_599__i3 (.D(n6676), .SP(aclk_c_enable_153), .CK(aclk_c), 
            .Q(rp[3]));   // c:/lscc/ep16vhdl/ep16.vhd(438[4] 445[11])
    defparam rp_599__i3.GSR = "ENABLED";
    FD1P3AX rp_599__i2 (.D(n6670), .SP(aclk_c_enable_153), .CK(aclk_c), 
            .Q(rp[2]));   // c:/lscc/ep16vhdl/ep16.vhd(438[4] 445[11])
    defparam rp_599__i2.GSR = "ENABLED";
    FD1P3AX rp_599__i1 (.D(n6638), .SP(aclk_c_enable_153), .CK(aclk_c), 
            .Q(rp[1]));   // c:/lscc/ep16vhdl/ep16.vhd(438[4] 445[11])
    defparam rp_599__i1.GSR = "ENABLED";
    FD1P3AX i_i0_i12 (.D(system_data_o[12]), .SP(iload), .CK(aclk_c), 
            .Q(i[12])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i_i0_i12.GSR = "ENABLED";
    ORCALUT4 mux_800_i1_3_lut (.A(n1462), .B(n1479), .C(sp[4]), .Z(n1321)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_800_i1_3_lut.init = 16'hcaca;
    ORCALUT4 i3481_rep_51_2_lut_3_lut_4_lut (.A(n8672), .B(slot[2]), .C(t_sel_3__N_308[2]), 
            .D(n8662), .Z(t_sel[2])) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;
    defparam i3481_rep_51_2_lut_3_lut_4_lut.init = 16'hd000;
    ORCALUT4 i7076_3_lut_4_lut (.A(n8610), .B(n8655), .C(n7739), .D(n8417), 
            .Z(t_in[12])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(211[2] 385[9])
    defparam i7076_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 i7083_3_lut_4_lut (.A(n8610), .B(n8655), .C(n7746), .D(n8421), 
            .Z(t_in[11])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(211[2] 385[9])
    defparam i7083_3_lut_4_lut.init = 16'hf780;
    PFUMX mux_265_Mux_9_i31 (.BLUT(n15), .ALUT(n30), .C0(code[4]), .Z(n567[9])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;
    ORCALUT4 t_sel_3__I_0_Mux_10_i9_3_lut_4_lut (.A(n1331), .B(n8640), .C(t_sel[0]), 
            .D(memory_data_i[9]), .Z(n9_adj_817)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam t_sel_3__I_0_Mux_10_i9_3_lut_4_lut.init = 16'h8f80;
    PFUMX i6998 (.BLUT(n8_adj_787), .ALUT(n9_adj_818), .C0(n8593), .Z(n7662));
    ORCALUT4 t_sel_3__I_0_Mux_11_i9_3_lut_4_lut (.A(n1332), .B(n8640), .C(t_sel[0]), 
            .D(memory_data_i[10]), .Z(n9_adj_819)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam t_sel_3__I_0_Mux_11_i9_3_lut_4_lut.init = 16'h8f80;
    ORCALUT4 t_sel_3__I_0_Mux_16_i1_3_lut (.A(\t[16] ), .B(s[16]), .C(t_sel[0]), 
            .Z(n1_c)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+!(C)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(137[2] 152[44])
    defparam t_sel_3__I_0_Mux_16_i1_3_lut.init = 16'h6565;
    ORCALUT4 i1_2_lut_rep_227_4_lut (.A(p_c[6]), .B(a[6]), .C(n8637), 
            .D(\memory_addr[5] ), .Z(n8607)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(175[2] 177[35])
    defparam i1_2_lut_rep_227_4_lut.init = 16'hffca;
    ORCALUT4 i7308_4_lut (.A(n6907), .B(n6_adj_820), .C(t_sel[2]), .D(t_sel[0]), 
            .Z(n3_adj_821)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i7308_4_lut.init = 16'hc0ca;
    ORCALUT4 i1_2_lut_adj_134 (.A(s[16]), .B(\t[16] ), .Z(n6907)) /* synthesis lut_function=(A (B)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(137[2] 152[44])
    defparam i1_2_lut_adj_134.init = 16'h8888;
    ORCALUT4 i3506_4_lut (.A(sum[16]), .B(t_sel_3__N_308[0]), .C(n8655), 
            .D(t_sel_3__N_308[1]), .Z(n6_adj_820)) /* synthesis lut_function=(!((B (C)+!B (C (D)))+!A)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(137[2] 152[44])
    defparam i3506_4_lut.init = 16'h0a2a;
    PFUMX i6832 (.BLUT(n7494), .ALUT(n7495), .C0(code[3]), .Z(n30_adj_781));
    ORCALUT4 i1_2_lut_4_lut_adj_135 (.A(p_c[6]), .B(a[6]), .C(n8637), 
            .D(n8616), .Z(n7043)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(175[2] 177[35])
    defparam i1_2_lut_4_lut_adj_135.init = 16'hffca;
    ORCALUT4 t_sel_3__I_0_Mux_12_i9_3_lut_4_lut (.A(n1333), .B(n8640), .C(t_sel[0]), 
            .D(memory_data_i[11]), .Z(n9_adj_822)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam t_sel_3__I_0_Mux_12_i9_3_lut_4_lut.init = 16'h8f80;
    ORCALUT4 i1_3_lut_adj_136 (.A(sp[0]), .B(n8614), .C(sp[1]), .Z(n6662)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B (C)+!B !(C)))) */ ;
    defparam i1_3_lut_adj_136.init = 16'h6969;
    PFUMX i7559 (.BLUT(n8448), .ALUT(n8447), .C0(t_sel[2]), .Z(n8449));
    ORCALUT4 i1_3_lut_adj_137 (.A(n8614), .B(n8676), .C(sp[2]), .Z(n6663)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B (C)+!B !(C)))) */ ;
    defparam i1_3_lut_adj_137.init = 16'h6969;
    ORCALUT4 i5070_3_lut_4_lut (.A(n1336), .B(n8640), .C(t_sel[0]), .D(memory_data_i[14]), 
            .Z(n5703)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam i5070_3_lut_4_lut.init = 16'h8f80;
    PFUMX mux_265_Mux_4_i31 (.BLUT(n15_adj_823), .ALUT(n2127), .C0(code[4]), 
          .Z(n567[4])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;
    ORCALUT4 t_sel_3__I_0_Mux_8_i11_3_lut (.A(\a[8] ), .B(r[8]), .C(t_sel[0]), 
            .Z(n11_adj_824)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(137[2] 152[44])
    defparam t_sel_3__I_0_Mux_8_i11_3_lut.init = 16'hcaca;
    ORCALUT4 i_12__bdd_2_lut (.A(\slot[1] ), .B(i[7]), .Z(n8325)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i_12__bdd_2_lut.init = 16'hdddd;
    ORCALUT4 t_sel_3__I_0_Mux_9_i11_3_lut (.A(\a[9] ), .B(r[9]), .C(t_sel[0]), 
            .Z(n11_adj_825)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(137[2] 152[44])
    defparam t_sel_3__I_0_Mux_9_i11_3_lut.init = 16'hcaca;
    ORCALUT4 t_sel_3__I_0_Mux_13_i9_3_lut_4_lut (.A(n1334), .B(n8640), .C(t_sel[0]), 
            .D(memory_data_i[12]), .Z(n9_adj_826)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam t_sel_3__I_0_Mux_13_i9_3_lut_4_lut.init = 16'h8f80;
    ORCALUT4 i_12__bdd_3_lut (.A(i[12]), .B(\slot[1] ), .C(i[2]), .Z(n8324)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam i_12__bdd_3_lut.init = 16'he2e2;
    ORCALUT4 i3513_4_lut (.A(n1478), .B(n8640), .C(n1495), .D(sp[4]), 
            .Z(s[16])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam i3513_4_lut.init = 16'hc088;
    ORCALUT4 t_sel_3__I_0_Mux_14_i9_3_lut_4_lut (.A(n1335), .B(n8640), .C(t_sel[0]), 
            .D(memory_data_i[13]), .Z(n9_adj_818)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam t_sel_3__I_0_Mux_14_i9_3_lut_4_lut.init = 16'h8f80;
    ORCALUT4 i7090_3_lut_4_lut (.A(n8610), .B(n8655), .C(n7753), .D(n8425), 
            .Z(t_in[10])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(211[2] 385[9])
    defparam i7090_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 mux_265_Mux_4_i15_3_lut_4_lut (.A(code[1]), .B(code[2]), .C(code[3]), 
            .D(n35), .Z(n15_adj_823)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(232[2] 384[11])
    defparam mux_265_Mux_4_i15_3_lut_4_lut.init = 16'hf202;
    ORCALUT4 n7265_bdd_4_lut_7435 (.A(memory_data_i[0]), .B(memory_data_i[7]), 
            .C(memory_data_i[10]), .D(memory_data_i[13]), .Z(n8123)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam n7265_bdd_4_lut_7435.init = 16'h0001;
    PFUMX i6999 (.BLUT(n11_adj_788), .ALUT(n12_adj_789), .C0(n8593), .Z(n7663));
    PFUMX i7555 (.BLUT(n8444), .ALUT(n8443), .C0(t_sel[2]), .Z(n8445));
    ORCALUT4 t_sel_3__I_0_Mux_9_i12_3_lut (.A(system_data_o[9]), .B(memory_data_i[1]), 
            .C(t_sel[0]), .Z(n12_adj_827)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(137[2] 152[44])
    defparam t_sel_3__I_0_Mux_9_i12_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_138 (.A(n8655), .B(n8636), .C(code[3]), .D(code[2]), 
            .Z(n963)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i1_4_lut_adj_138.init = 16'hff7f;
    ORCALUT4 i6885_4_lut_4_lut (.A(rp1[3]), .B(n8665), .C(n8663), .D(n1371), 
            .Z(n7549)) /* synthesis lut_function=(A (D)+!A (B ((D)+!C)+!B (D))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i6885_4_lut_4_lut.init = 16'hff04;
    ORCALUT4 i1_4_lut_adj_139 (.A(n8614), .B(sp[1]), .C(sp[0]), .D(sp[2]), 
            .Z(n6)) /* synthesis lut_function=(A+!(B+(C+(D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(430[4] 437[11])
    defparam i1_4_lut_adj_139.init = 16'haaab;
    ORCALUT4 i6901_4_lut_4_lut (.A(rp1[3]), .B(n8665), .C(n8675), .D(n1361), 
            .Z(n7565)) /* synthesis lut_function=(A (D)+!A (B ((D)+!C)+!B (D))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i6901_4_lut_4_lut.init = 16'hff04;
    PFUMX i18 (.BLUT(n6420), .ALUT(n7386), .C0(\slot[0] ), .Z(n7_adj_828));
    ORCALUT4 i1_2_lut_rep_228_4_lut (.A(p_c[7]), .B(a[7]), .C(n8637), 
            .D(\memory_addr[4] ), .Z(n8608)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(175[2] 177[35])
    defparam i1_2_lut_rep_228_4_lut.init = 16'hffca;
    ORCALUT4 i6776_4_lut_4_lut (.A(code[1]), .B(code[2]), .C(n8644), .D(code[3]), 
            .Z(n7440)) /* synthesis lut_function=(A (B (C (D))+!B !(D))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(232[2] 384[11])
    defparam i6776_4_lut_4_lut.init = 16'hc022;
    ORCALUT4 t_sel_3__I_0_Mux_8_i12_3_lut (.A(system_data_o[8]), .B(memory_data_i[0]), 
            .C(t_sel[0]), .Z(n12_adj_829)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(137[2] 152[44])
    defparam t_sel_3__I_0_Mux_8_i12_3_lut.init = 16'hcaca;
    ORCALUT4 r_sel_0__bdd_4_lut_7476 (.A(aclk_c_enable_78), .B(rp1[4]), 
            .C(rp1[3]), .D(n5962), .Z(n8211)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C (D)))+!A !(B (C+(D))+!B !(C+(D))))) */ ;
    defparam r_sel_0__bdd_4_lut_7476.init = 16'h6cc9;
    ORCALUT4 t_sel_3__I_0_Mux_8_i8_3_lut (.A(sum[7]), .B(memory_data_i[7]), 
            .C(t_sel[0]), .Z(n8_adj_830)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(137[2] 152[44])
    defparam t_sel_3__I_0_Mux_8_i8_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_rep_221_4_lut (.A(p_c[3]), .B(a[3]), .C(n8637), 
            .D(\memory_addr[4] ), .Z(n8601)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(175[2] 177[35])
    defparam i1_2_lut_rep_221_4_lut.init = 16'hffca;
    ORCALUT4 i900_4_lut_4_lut (.A(n8653), .B(rp[1]), .C(rp[0]), .D(n6531), 
            .Z(n4_adj_773)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !((D)+!C))) */ ;
    defparam i900_4_lut_4_lut.init = 16'hc0d4;
    ORCALUT4 i1_2_lut_rep_224_4_lut (.A(p_c[3]), .B(a[3]), .C(n8637), 
            .D(\memory_addr[5] ), .Z(n8604)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(175[2] 177[35])
    defparam i1_2_lut_rep_224_4_lut.init = 16'hffca;
    ORCALUT4 i7097_3_lut_4_lut (.A(n8610), .B(n8655), .C(n7760), .D(n8429), 
            .Z(t_in[9])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(211[2] 385[9])
    defparam i7097_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 i6900_4_lut_4_lut (.A(rp1[3]), .B(n8665), .C(n8661), .D(n1366), 
            .Z(n7564)) /* synthesis lut_function=(A (D)+!A (B ((D)+!C)+!B (D))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i6900_4_lut_4_lut.init = 16'hff04;
    PFUMX i5071 (.BLUT(n5702), .ALUT(n5703), .C0(n8593), .Z(n5704));
    PFUMX i6769 (.BLUT(n7431), .ALUT(n7432), .C0(n8593), .Z(n7433));
    PFUMX i7551 (.BLUT(n8440), .ALUT(n8439), .C0(t_sel[2]), .Z(n8441));
    ORCALUT4 i6886_4_lut_4_lut (.A(n8665), .B(rp1[3]), .C(n8663), .D(n1411), 
            .Z(n7550)) /* synthesis lut_function=(A (B ((D)+!C)+!B (D))+!A (D)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i6886_4_lut_4_lut.init = 16'hff08;
    ORCALUT4 i6898_4_lut_4_lut (.A(n8665), .B(rp1[3]), .C(n8675), .D(n1401), 
            .Z(n7562)) /* synthesis lut_function=(A (B ((D)+!C)+!B (D))+!A (D)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i6898_4_lut_4_lut.init = 16'hff08;
    ORCALUT4 n8438_bdd_3_lut_4_lut (.A(t_sel_3__N_308[1]), .B(n8655), .C(memory_data_i[7]), 
            .D(n8438), .Z(n8439)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(211[2] 385[9])
    defparam n8438_bdd_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 i6884_4_lut_4_lut (.A(n8665), .B(rp1[3]), .C(n8666), .D(n1416), 
            .Z(n7548)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (D)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i6884_4_lut_4_lut.init = 16'hff80;
    FD1P3AX i_i0_i13 (.D(system_data_o[13]), .SP(iload), .CK(aclk_c), 
            .Q(i[13])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i_i0_i13.GSR = "ENABLED";
    FD1P3AX i_i0_i14 (.D(system_data_o[14]), .SP(iload), .CK(aclk_c), 
            .Q(i[14])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i_i0_i14.GSR = "ENABLED";
    FD1P3AX i_i0_i15 (.D(system_data_o[15]), .SP(iload), .CK(aclk_c), 
            .Q(i[15])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i_i0_i15.GSR = "ENABLED";
    ORCALUT4 t_sel_3__I_0_Mux_1_i9_3_lut_4_lut (.A(n1322), .B(n8640), .C(t_sel[0]), 
            .D(memory_data_i[0]), .Z(n9_adj_811)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam t_sel_3__I_0_Mux_1_i9_3_lut_4_lut.init = 16'h8f80;
    ORCALUT4 i1_4_lut_adj_140 (.A(n8614), .B(n2024), .C(sp[4]), .D(n1734), 
            .Z(n6664)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)+!C !(D)))+!A !(B (C)+!B (C (D)+!C !(D))))) */ ;
    defparam i1_4_lut_adj_140.init = 16'h5a69;
    ORCALUT4 i1300_4_lut (.A(n963), .B(n6), .C(n8597), .D(sp[3]), .Z(n2024)) /* synthesis lut_function=(A ((C+(D))+!B)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(430[4] 437[11])
    defparam i1300_4_lut.init = 16'haaa2;
    ORCALUT4 i7104_3_lut_4_lut (.A(n8610), .B(n8655), .C(n7767), .D(n8433), 
            .Z(t_in[8])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(211[2] 385[9])
    defparam i7104_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 i1_3_lut_4_lut_adj_141 (.A(n8610), .B(n8655), .C(tload), 
            .D(n6913), .Z(aclk_c_enable_48)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C (D))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(211[2] 385[9])
    defparam i1_3_lut_4_lut_adj_141.init = 16'hf080;
    ORCALUT4 i6995_3_lut_4_lut (.A(n8610), .B(n8655), .C(n7658), .D(n8464), 
            .Z(t_in[1])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(211[2] 385[9])
    defparam i6995_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 i6892_4_lut_4_lut (.A(n8665), .B(rp1[3]), .C(n8661), .D(n1406), 
            .Z(n7556)) /* synthesis lut_function=(A (B ((D)+!C)+!B (D))+!A (D)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i6892_4_lut_4_lut.init = 16'hff08;
    ORCALUT4 t_sel_3__I_0_Mux_2_i9_3_lut_4_lut (.A(n1323), .B(n8640), .C(t_sel[0]), 
            .D(memory_data_i[1]), .Z(n9_adj_807)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam t_sel_3__I_0_Mux_2_i9_3_lut_4_lut.init = 16'h8f80;
    ORCALUT4 i6905_4_lut_4_lut (.A(n8666), .B(n8665), .C(rp1[3]), .D(n1376), 
            .Z(n7569)) /* synthesis lut_function=(A (B ((D)+!C)+!B (D))+!A (D)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i6905_4_lut_4_lut.init = 16'hff08;
    ORCALUT4 i7111_3_lut_4_lut (.A(n8610), .B(n8655), .C(n7774), .D(n8437), 
            .Z(t_in[7])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(211[2] 385[9])
    defparam i7111_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 n8434_bdd_3_lut_4_lut (.A(t_sel_3__N_308[1]), .B(n8655), .C(memory_data_i[8]), 
            .D(n8434), .Z(n8435)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(211[2] 385[9])
    defparam n8434_bdd_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 i1_2_lut_adj_142 (.A(n7), .B(n6376), .Z(p_sel[0])) /* synthesis lut_function=(A (B)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(53[9:13])
    defparam i1_2_lut_adj_142.init = 16'h8888;
    ORCALUT4 i6904_4_lut_4_lut (.A(rp1[2]), .B(n8670), .C(n8675), .D(n1381), 
            .Z(n7568)) /* synthesis lut_function=(A (D)+!A (B ((D)+!C)+!B (D))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i6904_4_lut_4_lut.init = 16'hff04;
    FD1S3IX slot__i1 (.D(slot_2__N_315[1]), .CK(aclk_c), .CD(slot_2__N_318), 
            .Q(\slot[1] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam slot__i1.GSR = "ENABLED";
    ORCALUT4 sum_13__bdd_4_lut (.A(t_sel[0]), .B(n8593), .C(n8628), .D(memory_data_i[12]), 
            .Z(n8416)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)+!C !(D)))+!A (B (C (D))+!B !(D))) */ ;
    defparam sum_13__bdd_4_lut.init = 16'hc231;
    CCU2B add_283_add_4_9 (.A0(r[7]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(r[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n5693), 
          .COUT(n5694), .S0(r_in_16__N_181[7]), .S1(r_in_16__N_181[8]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam add_283_add_4_9.INIT0 = 16'h555a;
    defparam add_283_add_4_9.INIT1 = 16'h555a;
    defparam add_283_add_4_9.INJECT1_0 = "NO";
    defparam add_283_add_4_9.INJECT1_1 = "NO";
    ORCALUT4 t_sel_3__I_0_Mux_3_i9_3_lut_4_lut (.A(n1324), .B(n8640), .C(t_sel[0]), 
            .D(memory_data_i[2]), .Z(n9_adj_803)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(47[9:16])
    defparam t_sel_3__I_0_Mux_3_i9_3_lut_4_lut.init = 16'h8f80;
    ORCALUT4 i1_2_lut_4_lut_adj_143 (.A(p_c[15]), .B(a[15]), .C(n8637), 
            .D(n6833), .Z(n6835)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(175[2] 177[35])
    defparam i1_2_lut_4_lut_adj_143.init = 16'hca00;
    PFUMX i7549 (.BLUT(n8436), .ALUT(n8435), .C0(t_sel[2]), .Z(n8437));
    CCU2B add_283_add_4_7 (.A0(r[5]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(r[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n5692), 
          .COUT(n5693), .S0(r_in_16__N_181[5]), .S1(r_in_16__N_181[6]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam add_283_add_4_7.INIT0 = 16'h555a;
    defparam add_283_add_4_7.INIT1 = 16'h555a;
    defparam add_283_add_4_7.INJECT1_0 = "NO";
    defparam add_283_add_4_7.INJECT1_1 = "NO";
    ORCALUT4 i1_4_lut_adj_144 (.A(n6881), .B(n2012), .C(n6927), .D(n6531), 
            .Z(n6667)) /* synthesis lut_function=(A (B+!((D)+!C))+!A !(B+!((D)+!C))) */ ;
    defparam i1_4_lut_adj_144.init = 16'h99a9;
    FD1S3IX slot__i2 (.D(slot_2__N_315[2]), .CK(aclk_c), .CD(slot_2__N_318), 
            .Q(slot[2])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam slot__i2.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_4_lut_adj_145 (.A(p_c[15]), .B(a[15]), .C(n8637), 
            .D(n18), .Z(n7025)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(175[2] 177[35])
    defparam i1_2_lut_4_lut_adj_145.init = 16'hca00;
    ORCALUT4 i6902_4_lut_4_lut (.A(rp1[2]), .B(n8670), .C(n8663), .D(n1391), 
            .Z(n7566)) /* synthesis lut_function=(A (D)+!A (B ((D)+!C)+!B (D))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i6902_4_lut_4_lut.init = 16'hff04;
    ORCALUT4 i6903_4_lut_4_lut (.A(rp1[2]), .B(n8670), .C(n8661), .D(n1386), 
            .Z(n7567)) /* synthesis lut_function=(A (D)+!A (B ((D)+!C)+!B (D))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i6903_4_lut_4_lut.init = 16'hff04;
    ORCALUT4 t_sel_3__I_0_Mux_7_i11_3_lut (.A(a[7]), .B(r[7]), .C(t_sel[0]), 
            .Z(n11_adj_832)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(137[2] 152[44])
    defparam t_sel_3__I_0_Mux_7_i11_3_lut.init = 16'hcaca;
    ORCALUT4 i6899_4_lut_4_lut (.A(n8666), .B(n8670), .C(rp1[2]), .D(n1396), 
            .Z(n7563)) /* synthesis lut_function=(A (B ((D)+!C)+!B (D))+!A (D)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i6899_4_lut_4_lut.init = 16'hff08;
    CCU2B add_283_add_4_5 (.A0(r[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(r[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n5691), 
          .COUT(n5692), .S0(r_in_16__N_181[3]), .S1(r_in_16__N_181[4]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam add_283_add_4_5.INIT0 = 16'h555a;
    defparam add_283_add_4_5.INIT1 = 16'h555a;
    defparam add_283_add_4_5.INJECT1_0 = "NO";
    defparam add_283_add_4_5.INJECT1_1 = "NO";
    CCU2B add_283_add_4_3 (.A0(r[1]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(r[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n5690), 
          .COUT(n5691), .S0(r_in_16__N_181[1]), .S1(r_in_16__N_181[2]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam add_283_add_4_3.INIT0 = 16'h555a;
    defparam add_283_add_4_3.INIT1 = 16'h555a;
    defparam add_283_add_4_3.INJECT1_0 = "NO";
    defparam add_283_add_4_3.INJECT1_1 = "NO";
    ORCALUT4 mux_278_i2_3_lut_4_lut (.A(p_in_15__N_282[1]), .B(r[1]), .C(n7), 
            .D(n6376), .Z(n612[1])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(169[2] 174[19])
    defparam mux_278_i2_3_lut_4_lut.init = 16'hcaaa;
    PFUMX i7547 (.BLUT(n8432), .ALUT(n8431), .C0(t_sel[2]), .Z(n8433));
    ORCALUT4 n8124_bdd_2_lut_rep_276_3_lut (.A(n8123), .B(n7265), .C(n7273), 
            .Z(n8656)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam n8124_bdd_2_lut_rep_276_3_lut.init = 16'h0202;
    FD1P3AX t__i17 (.D(t_in[16]), .SP(aclk_c_enable_74), .CK(aclk_c), 
            .Q(\t[16] )) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam t__i17.GSR = "ENABLED";
    FD1P3AX inten_239 (.D(n6772), .SP(intload), .CK(aclk_c), .Q(acknowledge_o_c));   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam inten_239.GSR = "ENABLED";
    ORCALUT4 i879_4_lut_4_lut (.A(n6010), .B(n963), .C(n8671), .D(sp1[3]), 
            .Z(n8_adj_833)) /* synthesis lut_function=(A (B+(D))+!A (B (C+(D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(430[4] 437[11])
    defparam i879_4_lut_4_lut.init = 16'heec8;
    ORCALUT4 sum_13__bdd_4_lut_7534 (.A(t_sel[0]), .B(n8593), .C(n8630), 
            .D(memory_data_i[13]), .Z(n8407)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)+!C !(D)))+!A (B (C (D))+!B !(D))) */ ;
    defparam sum_13__bdd_4_lut_7534.init = 16'hc231;
    ORCALUT4 sum_13__bdd_3_lut_7533 (.A(sum[13]), .B(t_sel[0]), .C(sum[14]), 
            .Z(n8405)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam sum_13__bdd_3_lut_7533.init = 16'he2e2;
    ORCALUT4 i1_3_lut_rep_282 (.A(\slot[0] ), .B(n9434), .C(\slot[1] ), 
            .Z(n8662)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(211[5:11])
    defparam i1_3_lut_rep_282.init = 16'hfefe;
    ORCALUT4 i1_2_lut_rep_273_4_lut (.A(\slot[0] ), .B(n9434), .C(\slot[1] ), 
            .D(r_sel_1__N_248[1]), .Z(n8653)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(211[5:11])
    defparam i1_2_lut_rep_273_4_lut.init = 16'h0100;
    FD1P3AX sp_598__i1 (.D(n6662), .SP(aclk_c_enable_157), .CK(aclk_c), 
            .Q(sp[1]));   // c:/lscc/ep16vhdl/ep16.vhd(430[4] 437[11])
    defparam sp_598__i1.GSR = "ENABLED";
    ORCALUT4 i7335_2_lut_4_lut (.A(\slot[0] ), .B(slot[2]), .C(\slot[1] ), 
            .D(r_sel_1__N_248[1]), .Z(iload)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(211[5:11])
    defparam i7335_2_lut_4_lut.init = 16'h0001;
    PFUMX i7543 (.BLUT(n8428), .ALUT(n8427), .C0(t_sel[2]), .Z(n8429));
    FD1P3AX sp_598__i2 (.D(n6663), .SP(aclk_c_enable_157), .CK(aclk_c), 
            .Q(sp[2]));   // c:/lscc/ep16vhdl/ep16.vhd(430[4] 437[11])
    defparam sp_598__i2.GSR = "ENABLED";
    FD1P3AX sp_598__i3 (.D(n6671), .SP(aclk_c_enable_157), .CK(aclk_c), 
            .Q(sp[3]));   // c:/lscc/ep16vhdl/ep16.vhd(430[4] 437[11])
    defparam sp_598__i3.GSR = "ENABLED";
    FD1P3AX sp_598__i4 (.D(n6664), .SP(aclk_c_enable_157), .CK(aclk_c), 
            .Q(sp[4]));   // c:/lscc/ep16vhdl/ep16.vhd(430[4] 437[11])
    defparam sp_598__i4.GSR = "ENABLED";
    FD1P3AX rp1_i0_i1 (.D(n6637), .SP(aclk_c_enable_153), .CK(aclk_c), 
            .Q(rp1[1])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam rp1_i0_i1.GSR = "ENABLED";
    ORCALUT4 i23_3_lut_4_lut (.A(code[3]), .B(n21), .C(code[4]), .D(n6770), 
            .Z(n12_adj_815)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(53[9:13])
    defparam i23_3_lut_4_lut.init = 16'hf808;
    ORCALUT4 i5066_3_lut (.A(sum[15]), .B(memory_data_i[15]), .C(t_sel[0]), 
            .Z(n5699)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i5066_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_rep_285 (.A(rp1[2]), .B(arst_c), .Z(n8665)) /* synthesis lut_function=(A (B)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i1_2_lut_rep_285.init = 16'h8888;
    ORCALUT4 i7322_2_lut (.A(sp[0]), .B(aclk_c_enable_157), .Z(n7793)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(430[4] 437[11])
    defparam i7322_2_lut.init = 16'h6666;
    CCU2B add_283_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(r[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .COUT(n5690), 
          .S1(r_in_16__N_181[0]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(154[20:31])
    defparam add_283_add_4_1.INIT0 = 16'h0000;
    defparam add_283_add_4_1.INIT1 = 16'h555a;
    defparam add_283_add_4_1.INJECT1_0 = "NO";
    defparam add_283_add_4_1.INJECT1_1 = "NO";
    ORCALUT4 sum_13__bdd_3_lut (.A(sum[13]), .B(t_sel[0]), .C(sum[12]), 
            .Z(n8414)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam sum_13__bdd_3_lut.init = 16'hb8b8;
    ORCALUT4 sum_11__bdd_3_lut_7539 (.A(sum[11]), .B(t_sel[0]), .C(sum[12]), 
            .Z(n8418)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam sum_11__bdd_3_lut_7539.init = 16'he2e2;
    ORCALUT4 i1_3_lut_rep_234_4_lut (.A(n8644), .B(code[4]), .C(n8645), 
            .D(code[2]), .Z(n8614)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(153[2] 157[19])
    defparam i1_3_lut_rep_234_4_lut.init = 16'h00e0;
    ORCALUT4 i3643_2_lut_4_lut (.A(n8654), .B(n12_adj_815), .C(slot[2]), 
            .D(memory_data_i[0]), .Z(n6_adj_834)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(53[9:13])
    defparam i3643_2_lut_4_lut.init = 16'h0400;
    PFUMX i7541 (.BLUT(n8424), .ALUT(n8423), .C0(t_sel[2]), .Z(n8425));
    ORCALUT4 i1_3_lut_adj_146 (.A(sp1[0]), .B(n8614), .C(sp1[1]), .Z(n6674)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B (C)+!B !(C)))) */ ;
    defparam i1_3_lut_adj_146.init = 16'h6969;
    FD1P3AX rp1_i0_i2 (.D(n6667), .SP(aclk_c_enable_153), .CK(aclk_c), 
            .Q(rp1[2])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam rp1_i0_i2.GSR = "ENABLED";
    FD1P3AX rp1_i0_i3 (.D(n6680), .SP(aclk_c_enable_153), .CK(aclk_c), 
            .Q(rp1[3])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam rp1_i0_i3.GSR = "ENABLED";
    FD1P3AX rp1_i0_i4 (.D(n8212), .SP(aclk_c_enable_153), .CK(aclk_c), 
            .Q(rp1[4])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam rp1_i0_i4.GSR = "ENABLED";
    FD1P3AX sp1_i0_i1 (.D(n6674), .SP(aclk_c_enable_157), .CK(aclk_c), 
            .Q(sp1[1])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam sp1_i0_i1.GSR = "ENABLED";
    ORCALUT4 i7314_4_lut (.A(n5700), .B(n11_adj_835), .C(t_sel[2]), .D(n8593), 
            .Z(n5701)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i7314_4_lut.init = 16'h0aca;
    ORCALUT4 i5067_3_lut (.A(memory_data_i[15]), .B(s[16]), .C(t_sel[0]), 
            .Z(n5700)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i5067_3_lut.init = 16'hcaca;
    PFUMX i7537 (.BLUT(n8420), .ALUT(n8419), .C0(t_sel[2]), .Z(n8421));
    ORCALUT4 t_sel_3__I_0_Mux_16_i11_3_lut (.A(a[16]), .B(r[16]), .C(t_sel[0]), 
            .Z(n11_adj_835)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(137[2] 152[44])
    defparam t_sel_3__I_0_Mux_16_i11_3_lut.init = 16'hcaca;
    ORCALUT4 sum_11__bdd_4_lut_7540 (.A(t_sel[0]), .B(n8593), .C(n8627), 
            .D(memory_data_i[11]), .Z(n8420)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)+!C !(D)))+!A (B (C (D))+!B !(D))) */ ;
    defparam sum_11__bdd_4_lut_7540.init = 16'hc231;
    ORCALUT4 sum_11__bdd_3_lut (.A(sum[11]), .B(t_sel[0]), .C(sum[10]), 
            .Z(n8422)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam sum_11__bdd_3_lut.init = 16'hb8b8;
    ORCALUT4 sum_11__bdd_4_lut (.A(t_sel[0]), .B(n8593), .C(n8626), .D(memory_data_i[10]), 
            .Z(n8424)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)+!C !(D)))+!A (B (C (D))+!B !(D))) */ ;
    defparam sum_11__bdd_4_lut.init = 16'hc231;
    ORCALUT4 i1_2_lut_rep_290 (.A(rp1[3]), .B(arst_c), .Z(n8670)) /* synthesis lut_function=(A (B)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i1_2_lut_rep_290.init = 16'h8888;
    ORCALUT4 p_15__I_0_255_i16_3_lut_rep_238_4_lut (.A(n8645), .B(n6367), 
            .C(a[15]), .D(p_c[15]), .Z(n8618)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam p_15__I_0_255_i16_3_lut_rep_238_4_lut.init = 16'hf780;
    ORCALUT4 p_15__I_0_255_i7_3_lut_rep_235_4_lut (.A(n8645), .B(n6367), 
            .C(a[6]), .D(p_c[6]), .Z(n8615)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam p_15__I_0_255_i7_3_lut_rep_235_4_lut.init = 16'hf780;
    ORCALUT4 i1_3_lut_rep_292 (.A(i[15]), .B(\slot[1] ), .C(\slot[0] ), 
            .Z(n8672)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_3_lut_rep_292.init = 16'h1010;
    ORCALUT4 i1_2_lut_rep_277_4_lut (.A(i[15]), .B(\slot[1] ), .C(\slot[0] ), 
            .D(n9434), .Z(n8657)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_rep_277_4_lut.init = 16'h0010;
    ORCALUT4 sum_9__bdd_3_lut_7545 (.A(sum[9]), .B(t_sel[0]), .C(sum[10]), 
            .Z(n8426)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam sum_9__bdd_3_lut_7545.init = 16'he2e2;
    ORCALUT4 i5768_2_lut_rep_274_3_lut_4_lut_4_lut (.A(i[15]), .B(\slot[1] ), 
            .C(\slot[0] ), .D(slot[2]), .Z(n8654)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+(D)))) */ ;
    defparam i5768_2_lut_rep_274_3_lut_4_lut_4_lut.init = 16'h0013;
    ORCALUT4 i1_2_lut_rep_275_3_lut_4_lut_4_lut (.A(i[15]), .B(\slot[1] ), 
            .C(\slot[0] ), .D(n9434), .Z(n8655)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;
    defparam i1_2_lut_rep_275_3_lut_4_lut_4_lut.init = 16'hffec;
    ORCALUT4 read_I_0_4_lut (.A(n6823), .B(r_sel_1__N_248[1]), .C(n8662), 
            .D(n6404), .Z(system_read)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A (B+(C)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(211[2] 385[9])
    defparam read_I_0_4_lut.init = 16'h03a3;
    ORCALUT4 t_sel_3__I_0_Mux_13_i8_3_lut (.A(sum[12]), .B(memory_data_i[12]), 
            .C(t_sel[0]), .Z(n8_adj_836)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(137[2] 152[44])
    defparam t_sel_3__I_0_Mux_13_i8_3_lut.init = 16'hcaca;
    ORCALUT4 sum_9__bdd_4_lut_7546 (.A(t_sel[0]), .B(n8593), .C(n8625), 
            .D(memory_data_i[9]), .Z(n8428)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)+!C !(D)))+!A (B (C (D))+!B !(D))) */ ;
    defparam sum_9__bdd_4_lut_7546.init = 16'hc231;
    ORCALUT4 p_15__I_0_255_i8_3_lut_rep_236_4_lut (.A(n8645), .B(n6367), 
            .C(a[7]), .D(p_c[7]), .Z(n8616)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam p_15__I_0_255_i8_3_lut_rep_236_4_lut.init = 16'hf780;
    ORCALUT4 sum_9__bdd_3_lut (.A(sum[9]), .B(t_sel[0]), .C(sum[8]), .Z(n8430)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam sum_9__bdd_3_lut.init = 16'hb8b8;
    ORCALUT4 i1_4_lut_adj_147 (.A(acknowledge_o_c), .B(interrupt_i_c_3), 
            .C(n8_adj_837), .D(interrupt_i_c_0), .Z(r_sel_1__N_248[1])) /* synthesis lut_function=(A (B+(C+(D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i1_4_lut_adj_147.init = 16'haaa8;
    PFUMX i7535 (.BLUT(n8416), .ALUT(n8415), .C0(t_sel[2]), .Z(n8417));
    ORCALUT4 i800_1_lut_rep_294 (.A(sp1[4]), .Z(n8674)) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i800_1_lut_rep_294.init = 16'h5555;
    ORCALUT4 i802_2_lut_3_lut_3_lut (.A(sp1[4]), .B(arst_c), .C(n8614), 
            .Z(n1497)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i802_2_lut_3_lut_3_lut.init = 16'h4040;
    PFUMX i6778 (.BLUT(n7440), .ALUT(n7441), .C0(code[4]), .Z(t_sel_3__N_308[0]));
    ORCALUT4 i1035_4_lut_3_lut_rep_296 (.A(sp[1]), .B(sp[0]), .C(n963), 
            .Z(n8676)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(430[4] 437[11])
    defparam i1035_4_lut_3_lut_rep_296.init = 16'he8e8;
    ORCALUT4 i1040_2_lut_rep_217_4_lut (.A(sp[1]), .B(sp[0]), .C(n963), 
            .D(sp[2]), .Z(n8597)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(430[4] 437[11])
    defparam i1040_2_lut_rep_217_4_lut.init = 16'he800;
    ORCALUT4 t_sel_3__I_0_Mux_13_i11_3_lut (.A(\a[13] ), .B(r[13]), .C(t_sel[0]), 
            .Z(n11_adj_838)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(137[2] 152[44])
    defparam t_sel_3__I_0_Mux_13_i11_3_lut.init = 16'hcaca;
    ORCALUT4 t_sel_3__I_0_Mux_13_i12_3_lut (.A(system_data_o[13]), .B(memory_data_i[5]), 
            .C(t_sel[0]), .Z(n12_adj_839)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(137[2] 152[44])
    defparam t_sel_3__I_0_Mux_13_i12_3_lut.init = 16'hcaca;
    ORCALUT4 i3_3_lut (.A(interrupt_i_c_1), .B(interrupt_i_c_2), .C(interrupt_i_c_4), 
            .Z(n8_adj_837)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(186[11] 187[35])
    defparam i3_3_lut.init = 16'hfefe;
    PFUMX mux_282_i13 (.BLUT(n612[12]), .ALUT(n663[12]), .C0(n7595), .Z(p_in[12]));
    PFUMX mux_282_i12 (.BLUT(n612[11]), .ALUT(n663[11]), .C0(n7595), .Z(p_in[11]));
    ORCALUT4 t_sel_3__I_0_Mux_12_i8_3_lut (.A(sum[11]), .B(memory_data_i[11]), 
            .C(t_sel[0]), .Z(n8_adj_840)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(137[2] 152[44])
    defparam t_sel_3__I_0_Mux_12_i8_3_lut.init = 16'hcaca;
    ORCALUT4 i1_3_lut_adj_148 (.A(n8672), .B(n3_adj_769), .C(n9434), .Z(n6404)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(153[2] 157[19])
    defparam i1_3_lut_adj_148.init = 16'hfefe;
    PFUMX i7531 (.BLUT(n8407), .ALUT(n8406), .C0(t_sel[2]), .Z(n8408));
    ORCALUT4 i15_2_lut_3_lut (.A(\slot[0] ), .B(\slot[1] ), .C(slot[2]), 
            .Z(slot_2__N_315[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(410[17:21])
    defparam i15_2_lut_3_lut.init = 16'h7878;
    ORCALUT4 sum_9__bdd_4_lut (.A(t_sel[0]), .B(n8593), .C(n8624), .D(memory_data_i[8]), 
            .Z(n8432)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)+!C !(D)))+!A (B (C (D))+!B !(D))) */ ;
    defparam sum_9__bdd_4_lut.init = 16'hc231;
    ORCALUT4 mux_281_i2_3_lut (.A(i[1]), .B(n612[1]), .C(\p_sel[1] ), 
            .Z(n663[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(169[2] 174[19])
    defparam mux_281_i2_3_lut.init = 16'hcaca;
    ORCALUT4 p_15__I_0_255_i4_3_lut_rep_237_4_lut (.A(n8645), .B(n6367), 
            .C(a[3]), .D(p_c[3]), .Z(n8617)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam p_15__I_0_255_i4_3_lut_rep_237_4_lut.init = 16'hf780;
    PFUMX mux_282_i11 (.BLUT(n612[10]), .ALUT(n663[10]), .C0(n7595), .Z(p_in[10]));
    PFUMX mux_282_i10 (.BLUT(n612[9]), .ALUT(n663[9]), .C0(n7595), .Z(p_in[9]));
    ORCALUT4 mux_281_i12_4_lut (.A(i[11]), .B(p_in_15__N_282[11]), .C(n8653), 
            .D(n8596), .Z(n663[11])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(169[2] 174[19])
    defparam mux_281_i12_4_lut.init = 16'hca0a;
    ORCALUT4 i6803_3_lut (.A(memory_data_i[1]), .B(n2_adj_841), .C(n8600), 
            .Z(n7467)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6803_3_lut.init = 16'hcaca;
    PFUMX mux_282_i9 (.BLUT(n612[8]), .ALUT(n663[8]), .C0(n7595), .Z(p_in[8]));
    ORCALUT4 a_sel_2__I_0_Mux_1_i2_3_lut (.A(a_in_16__N_215[1]), .B(a[2]), 
            .C(a_sel[0]), .Z(n2_adj_841)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(158[2] 163[17])
    defparam a_sel_2__I_0_Mux_1_i2_3_lut.init = 16'hcaca;
    PFUMX mux_282_i8 (.BLUT(n612[7]), .ALUT(n663[7]), .C0(n7595), .Z(p_in[7]));
    PFUMX mux_282_i7 (.BLUT(n612[6]), .ALUT(n663[6]), .C0(n7595), .Z(p_in[6]));
    PFUMX i6784 (.BLUT(n7446), .ALUT(n4_adj_842), .C0(a_sel[2]), .Z(a_in[15]));
    PFUMX r_sel_1__I_0_Mux_16_i3 (.BLUT(n1_adj_843), .ALUT(n6634), .C0(r_sel[1]), 
          .Z(r_in[16])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;
    ORCALUT4 t_sel_1__bdd_4_lut_7554 (.A(n8593), .B(t_sel[0]), .C(n8613), 
            .D(memory_data_i[6]), .Z(n8440)) /* synthesis lut_function=(A (C (D))+!A !(B (C (D)+!C !(D))+!B (D))) */ ;
    defparam t_sel_1__bdd_4_lut_7554.init = 16'ha451;
    PFUMX i6835 (.BLUT(n7497), .ALUT(n7498), .C0(r_sel[1]), .Z(r_in[12]));
    ORCALUT4 i6785_3_lut (.A(memory_data_i[6]), .B(n2_adj_844), .C(n8600), 
            .Z(n7449)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6785_3_lut.init = 16'hcaca;
    ORCALUT4 p_15__I_0_255_i5_3_lut_4_lut (.A(n8645), .B(n6367), .C(a[4]), 
            .D(p_c[4]), .Z(\memory_addr[4] )) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam p_15__I_0_255_i5_3_lut_4_lut.init = 16'hf780;
    PFUMX i6838 (.BLUT(n7500), .ALUT(n7501), .C0(r_sel[1]), .Z(r_in[11]));
    PFUMX i6841 (.BLUT(n7503), .ALUT(n4_adj_845), .C0(a_sel[2]), .Z(a_in[12]));
    ORCALUT4 a_sel_2__I_0_Mux_6_i2_3_lut (.A(a_in_16__N_215[6]), .B(a[7]), 
            .C(a_sel[0]), .Z(n2_adj_844)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(158[2] 163[17])
    defparam a_sel_2__I_0_Mux_6_i2_3_lut.init = 16'hcaca;
    PFUMX i6844 (.BLUT(n7506), .ALUT(n7507), .C0(r_sel[1]), .Z(r_in[10]));
    ORCALUT4 sum_7__bdd_3_lut (.A(sum[7]), .B(t_sel[0]), .C(sum[8]), .Z(n8434)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam sum_7__bdd_3_lut.init = 16'he2e2;
    ORCALUT4 t_sel_3__I_0_Mux_12_i11_3_lut (.A(\a[12] ), .B(r[12]), .C(t_sel[0]), 
            .Z(n11_adj_846)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(137[2] 152[44])
    defparam t_sel_3__I_0_Mux_12_i11_3_lut.init = 16'hcaca;
    ORCALUT4 p_sel_2__I_0_252_i2_4_lut (.A(r_sel_1__N_248[1]), .B(n8691), 
            .C(n8662), .D(n6404), .Z(\p_sel[1] )) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B (C (D))+!B (C)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(211[2] 385[9])
    defparam p_sel_2__I_0_252_i2_4_lut.init = 16'h05c5;
    ORCALUT4 t_sel_3__I_0_Mux_5_i11_3_lut (.A(a[5]), .B(r[5]), .C(t_sel[0]), 
            .Z(n11_adj_790)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(137[2] 152[44])
    defparam t_sel_3__I_0_Mux_5_i11_3_lut.init = 16'hcaca;
    ORCALUT4 t_sel_3__I_0_Mux_12_i12_3_lut (.A(system_data_o[12]), .B(memory_data_i[4]), 
            .C(t_sel[0]), .Z(n12_adj_847)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(137[2] 152[44])
    defparam t_sel_3__I_0_Mux_12_i12_3_lut.init = 16'hcaca;
    ORCALUT4 t_sel_3__I_0_Mux_5_i12_3_lut (.A(system_data_o[5]), .B(memory_data_i[13]), 
            .C(t_sel[0]), .Z(n12_adj_791)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(137[2] 152[44])
    defparam t_sel_3__I_0_Mux_5_i12_3_lut.init = 16'hcaca;
    ORCALUT4 t_sel_3__I_0_Mux_11_i8_3_lut (.A(sum[10]), .B(memory_data_i[10]), 
            .C(t_sel[0]), .Z(n8_adj_848)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(137[2] 152[44])
    defparam t_sel_3__I_0_Mux_11_i8_3_lut.init = 16'hcaca;
    ORCALUT4 a_sel_2__I_0_Mux_1_i4_3_lut (.A(a[2]), .B(a[0]), .C(a_sel[0]), 
            .Z(n4_adj_849)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(158[2] 163[17])
    defparam a_sel_2__I_0_Mux_1_i4_3_lut.init = 16'hcaca;
    ORCALUT4 sum_7__bdd_4_lut (.A(t_sel[0]), .B(n8593), .C(n8619), .D(memory_data_i[7]), 
            .Z(n8436)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)+!C !(D)))+!A (B (C (D))+!B !(D))) */ ;
    defparam sum_7__bdd_4_lut.init = 16'hc231;
    ORCALUT4 a_sel_2__I_0_Mux_6_i4_3_lut (.A(a[7]), .B(a[5]), .C(a_sel[0]), 
            .Z(n4_adj_850)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(158[2] 163[17])
    defparam a_sel_2__I_0_Mux_6_i4_3_lut.init = 16'hcaca;
    ORCALUT4 t_sel_3__I_0_Mux_11_i11_3_lut (.A(\a[11] ), .B(r[11]), .C(t_sel[0]), 
            .Z(n11_adj_851)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(137[2] 152[44])
    defparam t_sel_3__I_0_Mux_11_i11_3_lut.init = 16'hcaca;
    FD1P3AX sp1_i0_i2 (.D(n6675), .SP(aclk_c_enable_157), .CK(aclk_c), 
            .Q(sp1[2])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam sp1_i0_i2.GSR = "ENABLED";
    FD1P3AX sp1_i0_i3 (.D(n6697), .SP(aclk_c_enable_157), .CK(aclk_c), 
            .Q(sp1[3])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam sp1_i0_i3.GSR = "ENABLED";
    FD1P3AX sp1_i0_i4 (.D(n6673), .SP(aclk_c_enable_157), .CK(aclk_c), 
            .Q(sp1[4])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam sp1_i0_i4.GSR = "ENABLED";
    ORCALUT4 p_15__I_0_255_i6_3_lut_4_lut (.A(n8645), .B(n6367), .C(a[5]), 
            .D(p_c[5]), .Z(\memory_addr[5] )) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam p_15__I_0_255_i6_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 t_sel_3__I_0_Mux_11_i12_3_lut (.A(system_data_o[11]), .B(memory_data_i[3]), 
            .C(t_sel[0]), .Z(n12_adj_852)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(137[2] 152[44])
    defparam t_sel_3__I_0_Mux_11_i12_3_lut.init = 16'hcaca;
    ORCALUT4 t_sel_3__I_0_Mux_10_i8_3_lut (.A(sum[9]), .B(memory_data_i[9]), 
            .C(t_sel[0]), .Z(n8_adj_853)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(137[2] 152[44])
    defparam t_sel_3__I_0_Mux_10_i8_3_lut.init = 16'hcaca;
    ORCALUT4 i26_4_lut (.A(n3_adj_767), .B(n8635), .C(code[4]), .D(n35), 
            .Z(n12_adj_801)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(211[2] 385[9])
    defparam i26_4_lut.init = 16'h5c0c;
    ORCALUT4 i1_4_lut_adj_149 (.A(code[4]), .B(n7_adj_828), .C(n3_c), 
            .D(code[0]), .Z(system_write)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(153[2] 157[19])
    defparam i1_4_lut_adj_149.init = 16'h4000;
    ORCALUT4 mux_281_i11_4_lut (.A(i[10]), .B(p_in_15__N_282[10]), .C(n8653), 
            .D(n8596), .Z(n663[10])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(169[2] 174[19])
    defparam mux_281_i11_4_lut.init = 16'hca0a;
    PFUMX i6847 (.BLUT(n7509), .ALUT(n7510), .C0(r_sel[1]), .Z(r_in[9]));
    ORCALUT4 i3419_2_lut (.A(i[10]), .B(\slot[0] ), .Z(n1)) /* synthesis lut_function=(A (B)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(153[2] 157[19])
    defparam i3419_2_lut.init = 16'h8888;
    ORCALUT4 i783_3_lut_4_lut (.A(aclk_c_enable_78), .B(arst_c), .C(n1419), 
            .D(rp1[4]), .Z(n1427)) /* synthesis lut_function=(A (B ((D)+!C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i783_3_lut_4_lut.init = 16'h8808;
    PFUMX i6850 (.BLUT(n7512), .ALUT(n4_adj_855), .C0(a_sel[2]), .Z(a_in[11]));
    PFUMX i6853 (.BLUT(n7515), .ALUT(n4_adj_856), .C0(a_sel[2]), .Z(a_in[10]));
    PFUMX i6856 (.BLUT(n7518), .ALUT(n7519), .C0(r_sel[1]), .Z(r_in[8]));
    ORCALUT4 i6806_4_lut (.A(n1535[0]), .B(memory_data_i[0]), .C(aclk_c_enable_78), 
            .D(n1435), .Z(n7470)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i6806_4_lut.init = 16'hcac0;
    CCU2B add_282_add_4_13 (.A0(memory_data_i[11]), .B0(n1305), .C0(n8664), 
          .D0(n1332), .A1(memory_data_i[12]), .B1(n1305), .C1(n8664), 
          .D1(n1333), .CIN(n5671), .COUT(n5672), .S0(sum[11]), .S1(sum[12]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_282_add_4_13.INIT0 = 16'h6aaa;
    defparam add_282_add_4_13.INIT1 = 16'h6aaa;
    defparam add_282_add_4_13.INJECT1_0 = "NO";
    defparam add_282_add_4_13.INJECT1_1 = "NO";
    PFUMX i7501 (.BLUT(n8325), .ALUT(n8324), .C0(\slot[0] ), .Z(n3_adj_770));
    CCU2B add_282_add_4_11 (.A0(memory_data_i[9]), .B0(n1305), .C0(n8664), 
          .D0(n1330), .A1(memory_data_i[10]), .B1(n1305), .C1(n8664), 
          .D1(n1331), .CIN(n5670), .COUT(n5671), .S0(sum[9]), .S1(sum[10]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_282_add_4_11.INIT0 = 16'h6aaa;
    defparam add_282_add_4_11.INIT1 = 16'h6aaa;
    defparam add_282_add_4_11.INJECT1_0 = "NO";
    defparam add_282_add_4_11.INJECT1_1 = "NO";
    ORCALUT4 mux_827_i1_3_lut (.A(n1501), .B(n1518), .C(rp[4]), .Z(n1535[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_827_i1_3_lut.init = 16'hcaca;
    ORCALUT4 t_sel_1__bdd_3_lut_7557 (.A(t_sel[0]), .B(sum[5]), .C(sum[6]), 
            .Z(n8442)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam t_sel_1__bdd_3_lut_7557.init = 16'he4e4;
    ORCALUT4 i7324_2_lut (.A(rp1[0]), .B(aclk_c_enable_153), .Z(n7795)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i7324_2_lut.init = 16'h6666;
    ORCALUT4 t_sel_1__bdd_4_lut_7558 (.A(n8593), .B(t_sel[0]), .C(n8620), 
            .D(memory_data_i[5]), .Z(n8444)) /* synthesis lut_function=(A (C (D))+!A !(B (C (D)+!C !(D))+!B (D))) */ ;
    defparam t_sel_1__bdd_4_lut_7558.init = 16'ha451;
    ORCALUT4 mux_281_i10_4_lut (.A(i[9]), .B(p_in_15__N_282[9]), .C(n8653), 
            .D(n8596), .Z(n663[9])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(169[2] 174[19])
    defparam mux_281_i10_4_lut.init = 16'hca0a;
    ORCALUT4 t_sel_1__bdd_3_lut_7561 (.A(t_sel[0]), .B(sum[5]), .C(sum[4]), 
            .Z(n8446)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam t_sel_1__bdd_3_lut_7561.init = 16'hd8d8;
    ORCALUT4 i6812_3_lut (.A(memory_data_i[2]), .B(n2_adj_857), .C(n8600), 
            .Z(n7476)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6812_3_lut.init = 16'hcaca;
    ORCALUT4 a_sel_2__I_0_Mux_2_i2_3_lut (.A(a_in_16__N_215[2]), .B(a[3]), 
            .C(a_sel[0]), .Z(n2_adj_857)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(158[2] 163[17])
    defparam a_sel_2__I_0_Mux_2_i2_3_lut.init = 16'hcaca;
    ORCALUT4 t_sel_1__bdd_4_lut_7562 (.A(n8593), .B(t_sel[0]), .C(n8612), 
            .D(memory_data_i[4]), .Z(n8448)) /* synthesis lut_function=(A (C (D))+!A !(B (C (D)+!C !(D))+!B (D))) */ ;
    defparam t_sel_1__bdd_4_lut_7562.init = 16'ha451;
    ORCALUT4 a_sel_2__I_0_Mux_2_i4_3_lut (.A(a[3]), .B(a[1]), .C(a_sel[0]), 
            .Z(n4_adj_858)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(158[2] 163[17])
    defparam a_sel_2__I_0_Mux_2_i4_3_lut.init = 16'hcaca;
    ORCALUT4 mux_281_i9_4_lut (.A(i[8]), .B(p_in_15__N_282[8]), .C(n8653), 
            .D(n8596), .Z(n663[8])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(169[2] 174[19])
    defparam mux_281_i9_4_lut.init = 16'hca0a;
    PFUMX i6859 (.BLUT(n7521), .ALUT(n7522), .C0(r_sel[1]), .Z(r_in[7]));
    ORCALUT4 i6815_3_lut (.A(memory_data_i[14]), .B(n2_adj_859), .C(n8600), 
            .Z(n7479)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6815_3_lut.init = 16'hcaca;
    PFUMX i6862 (.BLUT(n7524), .ALUT(n7525), .C0(r_sel[1]), .Z(r_in[6]));
    ORCALUT4 a_sel_2__I_0_Mux_14_i2_3_lut (.A(a_in_16__N_215[14]), .B(a[15]), 
            .C(a_sel[0]), .Z(n2_adj_859)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(158[2] 163[17])
    defparam a_sel_2__I_0_Mux_14_i2_3_lut.init = 16'hcaca;
    ORCALUT4 mux_281_i8_4_lut (.A(i[7]), .B(p_in_15__N_282[7]), .C(n8653), 
            .D(n8596), .Z(n663[7])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(169[2] 174[19])
    defparam mux_281_i8_4_lut.init = 16'hca0a;
    ORCALUT4 a_sel_2__I_0_Mux_14_i4_3_lut (.A(a[15]), .B(\a[13] ), .C(a_sel[0]), 
            .Z(n4_adj_860)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(158[2] 163[17])
    defparam a_sel_2__I_0_Mux_14_i4_3_lut.init = 16'hcaca;
    ORCALUT4 mux_281_i7_4_lut (.A(i[6]), .B(p_in_15__N_282[6]), .C(n8653), 
            .D(n8596), .Z(n663[6])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(169[2] 174[19])
    defparam mux_281_i7_4_lut.init = 16'hca0a;
    ORCALUT4 t_sel_3__I_0_Mux_6_i8_3_lut (.A(sum[5]), .B(memory_data_i[5]), 
            .C(t_sel[0]), .Z(n8_adj_774)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(137[2] 152[44])
    defparam t_sel_3__I_0_Mux_6_i8_3_lut.init = 16'hcaca;
    ORCALUT4 i6782_3_lut (.A(memory_data_i[15]), .B(n2_adj_861), .C(n8600), 
            .Z(n7446)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6782_3_lut.init = 16'hcaca;
    ORCALUT4 i6818_3_lut (.A(memory_data_i[3]), .B(n2_adj_862), .C(n8600), 
            .Z(n7482)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6818_3_lut.init = 16'hcaca;
    ORCALUT4 a_sel_2__I_0_Mux_15_i2_3_lut (.A(a_in_16__N_215[15]), .B(sum[0]), 
            .C(a_sel[0]), .Z(n2_adj_861)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(158[2] 163[17])
    defparam a_sel_2__I_0_Mux_15_i2_3_lut.init = 16'hcaca;
    ORCALUT4 a_sel_2__I_0_Mux_15_i4_3_lut (.A(memory_data_i[0]), .B(\a[14] ), 
            .C(a_sel[0]), .Z(n4_adj_842)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(158[2] 163[17])
    defparam a_sel_2__I_0_Mux_15_i4_3_lut.init = 16'hcaca;
    PFUMX i6865 (.BLUT(n7527), .ALUT(n7528), .C0(r_sel[1]), .Z(r_in[5]));
    ORCALUT4 a_sel_2__I_0_Mux_3_i2_3_lut (.A(a_in_16__N_215[3]), .B(a[4]), 
            .C(a_sel[0]), .Z(n2_adj_862)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(158[2] 163[17])
    defparam a_sel_2__I_0_Mux_3_i2_3_lut.init = 16'hcaca;
    ORCALUT4 a_sel_2__I_0_Mux_3_i4_3_lut (.A(a[4]), .B(a[2]), .C(a_sel[0]), 
            .Z(n4_adj_863)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(158[2] 163[17])
    defparam a_sel_2__I_0_Mux_3_i4_3_lut.init = 16'hcaca;
    PFUMX i6868 (.BLUT(n7530), .ALUT(n7531), .C0(r_sel[1]), .Z(r_in[14]));
    PFUMX i6874 (.BLUT(n7536), .ALUT(n7537), .C0(r_sel[1]), .Z(r_in[4]));
    ORCALUT4 i6821_4_lut (.A(n1535[13]), .B(memory_data_i[13]), .C(aclk_c_enable_78), 
            .D(n1435), .Z(n7485)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i6821_4_lut.init = 16'hcac0;
    ORCALUT4 mux_827_i14_3_lut (.A(n1514), .B(n1531), .C(rp[4]), .Z(n1535[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_827_i14_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_150 (.A(code[1]), .B(n8652), .C(n3_adj_770), 
            .D(n3_c), .Z(n6770)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_4_lut_adj_150.init = 16'h0008;
    ORCALUT4 i1_4_lut_adj_151 (.A(code[0]), .B(n8646), .C(code[2]), .D(a[0]), 
            .Z(n7291)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(B (C)))) */ ;
    defparam i1_4_lut_adj_151.init = 16'h4048;
    PFUMX i6751 (.BLUT(n7413), .ALUT(n7414), .C0(r_sel[1]), .Z(r_in[3]));
    ORCALUT4 a_sel_2__I_0_Mux_16_i3_4_lut (.A(\t[16] ), .B(a_in_16__N_215[16]), 
            .C(n8600), .D(a_sel[0]), .Z(n3_adj_864)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(158[2] 163[17])
    defparam a_sel_2__I_0_Mux_16_i3_4_lut.init = 16'h0aca;
    ORCALUT4 r_sel_1__I_0_Mux_16_i1_4_lut (.A(n1535[16]), .B(\t[16] ), .C(aclk_c_enable_78), 
            .D(n1435), .Z(n1_adj_843)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(164[2] 168[17])
    defparam r_sel_1__I_0_Mux_16_i1_4_lut.init = 16'hcac0;
    ORCALUT4 i6824_3_lut (.A(memory_data_i[7]), .B(n2_adj_865), .C(n8600), 
            .Z(n7488)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6824_3_lut.init = 16'hcaca;
    ORCALUT4 mux_827_i17_3_lut (.A(n1517), .B(n1534), .C(rp[4]), .Z(n1535[16])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_827_i17_3_lut.init = 16'hcaca;
    ORCALUT4 t_sel_1__bdd_3_lut_7565 (.A(t_sel[0]), .B(sum[3]), .C(sum[4]), 
            .Z(n8450)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam t_sel_1__bdd_3_lut_7565.init = 16'he4e4;
    PFUMX i6754 (.BLUT(n7416), .ALUT(n4_adj_866), .C0(a_sel[2]), .Z(a_in[9]));
    PFUMX i6757 (.BLUT(n7419), .ALUT(n7420), .C0(r_sel[1]), .Z(r_in[2]));
    ORCALUT4 mux_800_i7_3_lut (.A(n1468), .B(n1485), .C(sp[4]), .Z(n1327)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_800_i7_3_lut.init = 16'hcaca;
    PFUMX i7488 (.BLUT(n8255), .ALUT(n8254), .C0(\slot[0] ), .Z(n3_c));
    CCU2B add_282_add_4_9 (.A0(memory_data_i[7]), .B0(n1305), .C0(n8664), 
          .D0(n1328), .A1(memory_data_i[8]), .B1(n1305), .C1(n8664), 
          .D1(n1329), .CIN(n5669), .COUT(n5670), .S0(sum[7]), .S1(sum[8]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_282_add_4_9.INIT0 = 16'h6aaa;
    defparam add_282_add_4_9.INIT1 = 16'h6aaa;
    defparam add_282_add_4_9.INJECT1_0 = "NO";
    defparam add_282_add_4_9.INJECT1_1 = "NO";
    PFUMX i6781 (.BLUT(n7443), .ALUT(n4_adj_867), .C0(a_sel[2]), .Z(a_in[8]));
    ORCALUT4 a_sel_2__I_0_Mux_7_i2_3_lut (.A(a_in_16__N_215[7]), .B(\a[8] ), 
            .C(a_sel[0]), .Z(n2_adj_865)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(158[2] 163[17])
    defparam a_sel_2__I_0_Mux_7_i2_3_lut.init = 16'hcaca;
    ORCALUT4 i3479_2_lut (.A(n3_adj_770), .B(slot[2]), .Z(code[2])) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(153[2] 157[19])
    defparam i3479_2_lut.init = 16'heeee;
    ORCALUT4 i7320_2_lut (.A(rp[0]), .B(aclk_c_enable_153), .Z(n7791)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(438[4] 445[11])
    defparam i7320_2_lut.init = 16'h6666;
    ORCALUT4 a_sel_2__I_0_Mux_7_i4_3_lut (.A(\a[8] ), .B(a[6]), .C(a_sel[0]), 
            .Z(n4_adj_868)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(158[2] 163[17])
    defparam a_sel_2__I_0_Mux_7_i4_3_lut.init = 16'hcaca;
    ORCALUT4 mux_281_i15_4_lut (.A(i[14]), .B(p_in_15__N_282[14]), .C(n8653), 
            .D(n8596), .Z(n663[14])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(169[2] 174[19])
    defparam mux_281_i15_4_lut.init = 16'hca0a;
    PFUMX mux_282_i16 (.BLUT(n612[15]), .ALUT(n646[15]), .C0(n8653), .Z(p_in[15]));
    PFUMX mux_282_i5 (.BLUT(n663[4]), .ALUT(n646[4]), .C0(n8653), .Z(p_in[4]));
    ORCALUT4 r_sel_1__I_35_i2_rep_43_3_lut (.A(r_sel_1__N_248[1]), .B(r_sel_1__N_246[1]), 
            .C(n8662), .Z(r_sel[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(211[2] 385[9])
    defparam r_sel_1__I_35_i2_rep_43_3_lut.init = 16'hcaca;
    ORCALUT4 t_sel_1__bdd_4_lut_7566 (.A(n8593), .B(t_sel[0]), .C(n8634), 
            .D(memory_data_i[3]), .Z(n8452)) /* synthesis lut_function=(A (C (D))+!A !(B (C (D)+!C !(D))+!B (D))) */ ;
    defparam t_sel_1__bdd_4_lut_7566.init = 16'ha451;
    ORCALUT4 i3483_4_lut (.A(n7209), .B(n8657), .C(code[1]), .D(n6367), 
            .Z(r_sel_1__N_246[1])) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(211[2] 385[9])
    defparam i3483_4_lut.init = 16'hcecc;
    PFUMX mux_282_i4 (.BLUT(n663[3]), .ALUT(n646[3]), .C0(n8653), .Z(p_in[3]));
    ORCALUT4 a_sel_2__I_0_Mux_8_i2_3_lut (.A(a_in_16__N_215[8]), .B(\a[9] ), 
            .C(a_sel[0]), .Z(n2_adj_869)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(158[2] 163[17])
    defparam a_sel_2__I_0_Mux_8_i2_3_lut.init = 16'hcaca;
    PFUMX mux_282_i3 (.BLUT(n663[2]), .ALUT(n646[2]), .C0(n8653), .Z(p_in[2]));
    PFUMX mux_282_i2 (.BLUT(n663[1]), .ALUT(n646[1]), .C0(n8653), .Z(p_in[1]));
    CCU2B a_16__I_0_262_add_4_15 (.A0(\a[13] ), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(\a[14] ), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n5655), .COUT(n5656), .S0(a_in_16__N_215[13]), .S1(a_in_16__N_215[14]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam a_16__I_0_262_add_4_15.INIT0 = 16'haaaa;
    defparam a_16__I_0_262_add_4_15.INIT1 = 16'haaaa;
    defparam a_16__I_0_262_add_4_15.INJECT1_0 = "NO";
    defparam a_16__I_0_262_add_4_15.INJECT1_1 = "NO";
    ORCALUT4 a_sel_2__I_0_Mux_8_i4_3_lut (.A(\a[9] ), .B(a[7]), .C(a_sel[0]), 
            .Z(n4_adj_867)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(158[2] 163[17])
    defparam a_sel_2__I_0_Mux_8_i4_3_lut.init = 16'hcaca;
    ORCALUT4 p_15__I_0_255_i2_3_lut_4_lut (.A(n8645), .B(n6367), .C(a[1]), 
            .D(p_c[1]), .Z(\memory_addr[1] )) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam p_15__I_0_255_i2_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 i1_4_lut_then_4_lut (.A(slot[2]), .B(n3_c), .C(n3_adj_770), 
            .D(n3_adj_769), .Z(n8723)) /* synthesis lut_function=(!(A+(B (D)+!B (C+(D))))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(153[2] 157[19])
    defparam i1_4_lut_then_4_lut.init = 16'h0045;
    ORCALUT4 mux_281_i5_3_lut (.A(i[4]), .B(n612[4]), .C(\p_sel[1] ), 
            .Z(n663[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(169[2] 174[19])
    defparam mux_281_i5_3_lut.init = 16'hcaca;
    ORCALUT4 t_sel_1__bdd_3_lut_7571 (.A(t_sel[0]), .B(sum[3]), .C(sum[2]), 
            .Z(n8454)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam t_sel_1__bdd_3_lut_7571.init = 16'hd8d8;
    PFUMX i6787 (.BLUT(n7449), .ALUT(n4_adj_850), .C0(a_sel[2]), .Z(a_in[6]));
    ORCALUT4 i6833_4_lut (.A(n1535[12]), .B(memory_data_i[12]), .C(aclk_c_enable_78), 
            .D(n1435), .Z(n7497)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i6833_4_lut.init = 16'hcac0;
    ORCALUT4 mux_827_i13_3_lut (.A(n1513), .B(n1530), .C(rp[4]), .Z(n1535[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_827_i13_3_lut.init = 16'hcaca;
    ORCALUT4 mux_281_i3_3_lut (.A(i[2]), .B(n612[2]), .C(\p_sel[1] ), 
            .Z(n663[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(169[2] 174[19])
    defparam mux_281_i3_3_lut.init = 16'hcaca;
    ORCALUT4 mux_281_i4_3_lut (.A(i[3]), .B(n612[3]), .C(\p_sel[1] ), 
            .Z(n663[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(169[2] 174[19])
    defparam mux_281_i4_3_lut.init = 16'hcaca;
    ORCALUT4 mux_281_i14_4_lut (.A(i[13]), .B(p_in_15__N_282[13]), .C(n8653), 
            .D(n8596), .Z(n663[13])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(169[2] 174[19])
    defparam mux_281_i14_4_lut.init = 16'hca0a;
    ORCALUT4 i827_1_lut (.A(rp1[4]), .Z(n1500)) /* synthesis lut_function=(!(A)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i827_1_lut.init = 16'h5555;
    PFUMX i7486 (.BLUT(n8252), .ALUT(n8251), .C0(\slot[0] ), .Z(n3_adj_769));
    ORCALUT4 i6836_4_lut (.A(n1535[11]), .B(memory_data_i[11]), .C(aclk_c_enable_78), 
            .D(n1435), .Z(n7500)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i6836_4_lut.init = 16'hcac0;
    PFUMX i6811 (.BLUT(n7473), .ALUT(n4), .C0(a_sel[2]), .Z(a_in[0]));
    ORCALUT4 mux_827_i12_3_lut (.A(n1512), .B(n1529), .C(rp[4]), .Z(n1535[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_827_i12_3_lut.init = 16'hcaca;
    ORCALUT4 t_sel_1__bdd_4_lut_7572 (.A(n8593), .B(t_sel[0]), .C(n8633), 
            .D(memory_data_i[2]), .Z(n8456)) /* synthesis lut_function=(A (C (D))+!A !(B (C (D)+!C !(D))+!B (D))) */ ;
    defparam t_sel_1__bdd_4_lut_7572.init = 16'ha451;
    ORCALUT4 i6839_3_lut (.A(memory_data_i[12]), .B(n2_adj_870), .C(n8600), 
            .Z(n7503)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6839_3_lut.init = 16'hcaca;
    ORCALUT4 a_sel_2__I_0_Mux_12_i2_3_lut (.A(a_in_16__N_215[12]), .B(\a[13] ), 
            .C(a_sel[0]), .Z(n2_adj_870)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(158[2] 163[17])
    defparam a_sel_2__I_0_Mux_12_i2_3_lut.init = 16'hcaca;
    CCU2B add_282_add_4_7 (.A0(memory_data_i[5]), .B0(n1305), .C0(n8664), 
          .D0(n1326), .A1(memory_data_i[6]), .B1(n1305), .C1(n8664), 
          .D1(n1327), .CIN(n5668), .COUT(n5669), .S0(sum[5]), .S1(sum[6]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_282_add_4_7.INIT0 = 16'h6aaa;
    defparam add_282_add_4_7.INIT1 = 16'h6aaa;
    defparam add_282_add_4_7.INJECT1_0 = "NO";
    defparam add_282_add_4_7.INJECT1_1 = "NO";
    ORCALUT4 a_sel_2__I_0_Mux_12_i4_3_lut (.A(\a[13] ), .B(\a[11] ), .C(a_sel[0]), 
            .Z(n4_adj_845)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(158[2] 163[17])
    defparam a_sel_2__I_0_Mux_12_i4_3_lut.init = 16'hcaca;
    PFUMX i6790 (.BLUT(n7452), .ALUT(n4_adj_771), .C0(a_sel[2]), .Z(a_in[5]));
    ORCALUT4 i6842_4_lut (.A(n1535[10]), .B(memory_data_i[10]), .C(aclk_c_enable_78), 
            .D(n1435), .Z(n7506)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i6842_4_lut.init = 16'hcac0;
    ORCALUT4 i_11__bdd_3_lut (.A(i[11]), .B(\slot[1] ), .C(i[1]), .Z(n8458)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam i_11__bdd_3_lut.init = 16'he2e2;
    L6MUX21 i6772 (.D0(n7434), .D1(n7435), .SD(n7883), .Z(t_in[16]));
    PFUMX i6793 (.BLUT(n7455), .ALUT(n4_adj_778), .C0(a_sel[2]), .Z(a_in[4]));
    L6MUX21 i6802 (.D0(n7464), .D1(n7465), .SD(n7883), .Z(t_in[0]));
    ORCALUT4 mux_827_i11_3_lut (.A(n1511), .B(n1528), .C(rp[4]), .Z(n1535[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_827_i11_3_lut.init = 16'hcaca;
    L6MUX21 i7103 (.D0(n7764), .D1(n7765), .SD(t_sel[2]), .Z(n7767));
    L6MUX21 i7110 (.D0(n7771), .D1(n7772), .SD(t_sel[2]), .Z(n7774));
    ORCALUT4 i_11__bdd_2_lut (.A(\slot[1] ), .B(i[6]), .Z(n8459)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i_11__bdd_2_lut.init = 16'hdddd;
    ORCALUT4 p_15__I_0_255_i12_3_lut_4_lut (.A(n8645), .B(n6367), .C(\a[11] ), 
            .D(\p[11] ), .Z(\memory_addr[11] )) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam p_15__I_0_255_i12_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 t_sel_3__I_0_Mux_4_i8_3_lut (.A(sum[3]), .B(memory_data_i[3]), 
            .C(t_sel[0]), .Z(n8_adj_794)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(137[2] 152[44])
    defparam t_sel_3__I_0_Mux_4_i8_3_lut.init = 16'hcaca;
    ORCALUT4 t_sel_1__bdd_3_lut (.A(t_sel[0]), .B(sum[1]), .C(sum[2]), 
            .Z(n8461)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam t_sel_1__bdd_3_lut.init = 16'he4e4;
    ORCALUT4 p_15__I_0_255_i11_3_lut_4_lut (.A(n8645), .B(n6367), .C(\a[10] ), 
            .D(p[10]), .Z(\memory_addr[10] )) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam p_15__I_0_255_i11_3_lut_4_lut.init = 16'hf780;
    PFUMX i6763 (.BLUT(n7425), .ALUT(n7426), .C0(r_sel[1]), .Z(r_in[1]));
    ORCALUT4 i1_4_lut_adj_152 (.A(n8614), .B(n1968), .C(sp1[2]), .D(n1550), 
            .Z(n6675)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)+!C !(D)))+!A !(B (C)+!B (C (D)+!C !(D))))) */ ;
    defparam i1_4_lut_adj_152.init = 16'h5a69;
    PFUMX i6796 (.BLUT(n7458), .ALUT(n4_adj_786), .C0(a_sel[2]), .Z(a_in[13]));
    PFUMX i6799 (.BLUT(n7461), .ALUT(n7462), .C0(r_sel[1]), .Z(r_in[15]));
    ORCALUT4 i1256_4_lut (.A(sp1[1]), .B(n7097), .C(n8636), .D(code[3]), 
            .Z(n1968)) /* synthesis lut_function=(A (B+!(C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(430[4] 437[11])
    defparam i1256_4_lut.init = 16'h8aaa;
    ORCALUT4 i863_2_lut (.A(n963), .B(sp1[0]), .Z(n1550)) /* synthesis lut_function=(A (B)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(430[4] 437[11])
    defparam i863_2_lut.init = 16'h8888;
    ORCALUT4 i1_4_lut_adj_153 (.A(n8655), .B(n3_adj_770), .C(sp1[0]), 
            .D(slot[2]), .Z(n7097)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_153.init = 16'hfffd;
    ORCALUT4 i3498_2_lut (.A(n3_adj_769), .B(slot[2]), .Z(code[4])) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(153[2] 157[19])
    defparam i3498_2_lut.init = 16'heeee;
    ORCALUT4 i1_3_lut_adj_154 (.A(n8614), .B(n8599), .C(sp1[3]), .Z(n6697)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B (C)+!B !(C)))) */ ;
    defparam i1_3_lut_adj_154.init = 16'h6969;
    ORCALUT4 i1_4_lut_adj_155 (.A(sp1[2]), .B(n6957), .C(n8636), .D(code[3]), 
            .Z(n6010)) /* synthesis lut_function=(A (B+!(C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(430[4] 437[11])
    defparam i1_4_lut_adj_155.init = 16'h8aaa;
    ORCALUT4 mux_800_i5_3_lut (.A(n1466), .B(n1483), .C(sp[4]), .Z(n1325)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_800_i5_3_lut.init = 16'hcaca;
    CCU2B a_16__I_0_262_add_4_3 (.A0(a[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(a[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n5649), .COUT(n5650), .S0(a_in_16__N_215[1]), .S1(a_in_16__N_215[2]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam a_16__I_0_262_add_4_3.INIT0 = 16'haaaa;
    defparam a_16__I_0_262_add_4_3.INIT1 = 16'haaaa;
    defparam a_16__I_0_262_add_4_3.INJECT1_0 = "NO";
    defparam a_16__I_0_262_add_4_3.INJECT1_1 = "NO";
    CCU2B add_282_add_4_5 (.A0(memory_data_i[3]), .B0(n1305), .C0(n8664), 
          .D0(n1324), .A1(memory_data_i[4]), .B1(n1305), .C1(n8664), 
          .D1(n1325), .CIN(n5667), .COUT(n5668), .S0(sum[3]), .S1(sum[4]));   // C:/lscc/diamond/3.7_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_282_add_4_5.INIT0 = 16'h6aaa;
    defparam add_282_add_4_5.INIT1 = 16'h6aaa;
    defparam add_282_add_4_5.INJECT1_0 = "NO";
    defparam add_282_add_4_5.INJECT1_1 = "NO";
    ORCALUT4 i1_2_lut_adj_156 (.A(n3_adj_767), .B(n9434), .Z(code[1])) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(153[2] 157[19])
    defparam i1_2_lut_adj_156.init = 16'heeee;
    L6MUX21 i7038 (.D0(n7699), .D1(n7700), .SD(t_sel[2]), .Z(n7702));
    ORCALUT4 t_sel_3__I_0_Mux_4_i11_3_lut (.A(a[4]), .B(r[4]), .C(t_sel[0]), 
            .Z(n11_adj_796)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(137[2] 152[44])
    defparam t_sel_3__I_0_Mux_4_i11_3_lut.init = 16'hcaca;
    ORCALUT4 t_sel_3__I_0_Mux_4_i12_3_lut (.A(system_data_o[4]), .B(memory_data_i[12]), 
            .C(t_sel[0]), .Z(n12_adj_797)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(137[2] 152[44])
    defparam t_sel_3__I_0_Mux_4_i12_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_157 (.A(n8655), .B(n3_adj_770), .C(n8668), .D(slot[2]), 
            .Z(n6957)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_157.init = 16'hfffd;
    L6MUX21 i7075 (.D0(n7736), .D1(n7737), .SD(t_sel[2]), .Z(n7739));
    PFUMX i7471 (.BLUT(n8211), .ALUT(n8210), .C0(n8605), .Z(n8212));
    ORCALUT4 i1_3_lut_adj_158 (.A(n8614), .B(n8_adj_833), .C(sp1[4]), 
            .Z(n6673)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B (C)+!B !(C)))) */ ;
    defparam i1_3_lut_adj_158.init = 16'h6969;
    L6MUX21 i7082 (.D0(n7743), .D1(n7744), .SD(t_sel[2]), .Z(n7746));
    L6MUX21 i7089 (.D0(n7750), .D1(n7751), .SD(t_sel[2]), .Z(n7753));
    L6MUX21 i7096 (.D0(n7757), .D1(n7758), .SD(t_sel[2]), .Z(n7760));
    PFUMX i7101 (.BLUT(n11_adj_824), .ALUT(n12_adj_829), .C0(n8593), .Z(n7765));
    ORCALUT4 i6845_4_lut (.A(n1535[9]), .B(memory_data_i[9]), .C(aclk_c_enable_78), 
            .D(n1435), .Z(n7509)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i6845_4_lut.init = 16'hcac0;
    ORCALUT4 mux_827_i10_3_lut (.A(n1510), .B(n1527), .C(rp[4]), .Z(n1535[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_827_i10_3_lut.init = 16'hcaca;
    ORCALUT4 t_sel_1__bdd_4_lut (.A(n8593), .B(t_sel[0]), .C(n8632), .D(memory_data_i[1]), 
            .Z(n8463)) /* synthesis lut_function=(A (C (D))+!A !(B (C (D)+!C !(D))+!B (D))) */ ;
    defparam t_sel_1__bdd_4_lut.init = 16'ha451;
    PFUMX i7108 (.BLUT(n11_adj_832), .ALUT(n12), .C0(n8593), .Z(n7772));
    PFUMX i7670 (.BLUT(n8695), .ALUT(n8696), .C0(slot[2]), .Z(n8697));
    L6MUX21 i6959 (.D0(n7620), .D1(n7621), .SD(t_sel[2]), .Z(n7623));
    PFUMX i6800 (.BLUT(n7535), .ALUT(n6_adj_816), .C0(t_sel[2]), .Z(n7464));
    L6MUX21 i6966 (.D0(n7627), .D1(n7628), .SD(t_sel[2]), .Z(n7630));
    PFUMX i6801 (.BLUT(n5912), .ALUT(n7424), .C0(t_sel[2]), .Z(n7465));
    ORCALUT4 p_15__I_0_255_i10_3_lut_4_lut (.A(n8645), .B(n6367), .C(\a[9] ), 
            .D(p[9]), .Z(\memory_addr[9] )) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam p_15__I_0_255_i10_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 p_15__I_0_255_i9_3_lut_4_lut (.A(n8645), .B(n6367), .C(\a[8] ), 
            .D(p[8]), .Z(\memory_addr[8] )) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam p_15__I_0_255_i9_3_lut_4_lut.init = 16'hf780;
    L6MUX21 i6973 (.D0(n7634), .D1(n7635), .SD(t_sel[2]), .Z(n7637));
    ORCALUT4 i6848_3_lut (.A(memory_data_i[11]), .B(n2_adj_871), .C(n8600), 
            .Z(n7512)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6848_3_lut.init = 16'hcaca;
    ORCALUT4 a_sel_2__I_0_Mux_11_i2_3_lut (.A(a_in_16__N_215[11]), .B(\a[12] ), 
            .C(a_sel[0]), .Z(n2_adj_871)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(158[2] 163[17])
    defparam a_sel_2__I_0_Mux_11_i2_3_lut.init = 16'hcaca;
    ORCALUT4 p_15__I_0_255_i3_3_lut_rep_241_4_lut (.A(n8645), .B(n6367), 
            .C(a[2]), .D(p_c[2]), .Z(n8621)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam p_15__I_0_255_i3_3_lut_rep_241_4_lut.init = 16'hf780;
    L6MUX21 i6980 (.D0(n7641), .D1(n7642), .SD(t_sel[2]), .Z(n7644));
    PFUMX i6770 (.BLUT(n1_c), .ALUT(n3_adj_821), .C0(n7613), .Z(n7434));
    ORCALUT4 mux_800_i2_3_lut (.A(n1463), .B(n1480), .C(sp[4]), .Z(n1322)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_800_i2_3_lut.init = 16'hcaca;
    L6MUX21 i6987 (.D0(n7648), .D1(n7649), .SD(t_sel[2]), .Z(n7651));
    ORCALUT4 a_sel_2__I_0_Mux_11_i4_3_lut (.A(\a[12] ), .B(\a[10] ), .C(a_sel[0]), 
            .Z(n4_adj_855)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(158[2] 163[17])
    defparam a_sel_2__I_0_Mux_11_i4_3_lut.init = 16'hcaca;
    L6MUX21 i6994 (.D0(n7655), .D1(n7656), .SD(t_sel[2]), .Z(n7658));
    ORCALUT4 mux_800_i3_3_lut (.A(n1464), .B(n1481), .C(sp[4]), .Z(n1323)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_800_i3_3_lut.init = 16'hcaca;
    L6MUX21 i7001 (.D0(n7662), .D1(n7663), .SD(t_sel[2]), .Z(n7665));
    ORCALUT4 i6851_3_lut (.A(memory_data_i[10]), .B(n2_adj_872), .C(n8600), 
            .Z(n7515)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6851_3_lut.init = 16'hcaca;
    PFUMX i6771 (.BLUT(n5699), .ALUT(n5701), .C0(n7613), .Z(n7435));
    L6MUX21 i6828 (.D0(n5704), .D1(n7433), .SD(t_sel[2]), .Z(n7492));
    PFUMX i7035 (.BLUT(n8_adj_836), .ALUT(n9_adj_826), .C0(n8593), .Z(n7699));
    ORCALUT4 i3640_4_lut (.A(n21), .B(code[3]), .C(n6372), .D(code[2]), 
            .Z(n15_adj_798)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(232[2] 384[11])
    defparam i3640_4_lut.init = 16'h3022;
    PFUMX i7036 (.BLUT(n11_adj_838), .ALUT(n12_adj_839), .C0(n8593), .Z(n7700));
    PFUMX i7072 (.BLUT(n8_adj_840), .ALUT(n9_adj_822), .C0(n8593), .Z(n7736));
    PFUMX i7073 (.BLUT(n11_adj_846), .ALUT(n12_adj_847), .C0(n8593), .Z(n7737));
    PFUMX i7079 (.BLUT(n8_adj_848), .ALUT(n9_adj_819), .C0(n8593), .Z(n7743));
    PFUMX i7080 (.BLUT(n11_adj_851), .ALUT(n12_adj_852), .C0(n8593), .Z(n7744));
    PFUMX i7086 (.BLUT(n8_adj_853), .ALUT(n9_adj_817), .C0(n8593), .Z(n7750));
    PFUMX i7087 (.BLUT(n11), .ALUT(n12_adj_792), .C0(n8593), .Z(n7751));
    PFUMX i7093 (.BLUT(n8_adj_793), .ALUT(n9_adj_814), .C0(n8593), .Z(n7757));
    PFUMX i7094 (.BLUT(n11_adj_825), .ALUT(n12_adj_827), .C0(n8593), .Z(n7758));
    PFUMX i7100 (.BLUT(n8_adj_830), .ALUT(n9_adj_813), .C0(n8593), .Z(n7764));
    ORCALUT4 a_sel_2__I_0_Mux_10_i2_3_lut (.A(a_in_16__N_215[10]), .B(\a[11] ), 
            .C(a_sel[0]), .Z(n2_adj_872)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(158[2] 163[17])
    defparam a_sel_2__I_0_Mux_10_i2_3_lut.init = 16'hcaca;
    ORCALUT4 i3486_4_lut (.A(code[4]), .B(n8655), .C(n3541), .D(n30_adj_873), 
            .Z(tload)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(211[2] 385[9])
    defparam i3486_4_lut.init = 16'hc8c0;
    ORCALUT4 a_sel_2__I_0_Mux_10_i4_3_lut (.A(\a[11] ), .B(\a[9] ), .C(a_sel[0]), 
            .Z(n4_adj_856)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(158[2] 163[17])
    defparam a_sel_2__I_0_Mux_10_i4_3_lut.init = 16'hcaca;
    ORCALUT4 i6854_4_lut (.A(n1535[8]), .B(memory_data_i[8]), .C(aclk_c_enable_78), 
            .D(n1435), .Z(n7518)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i6854_4_lut.init = 16'hcac0;
    ORCALUT4 mux_827_i9_3_lut (.A(n1509), .B(n1526), .C(rp[4]), .Z(n1535[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_827_i9_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_adj_159 (.A(n3), .B(n9434), .Z(code[0])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(153[2] 157[19])
    defparam i1_2_lut_adj_159.init = 16'h2222;
    ORCALUT4 i1_2_lut_adj_160 (.A(n3_adj_767), .B(n3_c), .Z(n4_adj_776)) /* synthesis lut_function=(A (B)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(232[2] 384[11])
    defparam i1_2_lut_adj_160.init = 16'h8888;
    ORCALUT4 mux_800_i12_3_lut (.A(n1473), .B(n1490), .C(sp[4]), .Z(n1332)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_800_i12_3_lut.init = 16'hcaca;
    ORCALUT4 mux_800_i13_3_lut (.A(n1474), .B(n1491), .C(sp[4]), .Z(n1333)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_800_i13_3_lut.init = 16'hcaca;
    ORCALUT4 sum_15__bdd_3_lut (.A(sum[15]), .B(t_sel[0]), .C(sum[14]), 
            .Z(n8465)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam sum_15__bdd_3_lut.init = 16'hb8b8;
    ORCALUT4 mux_800_i10_3_lut (.A(n1471), .B(n1488), .C(sp[4]), .Z(n1330)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_800_i10_3_lut.init = 16'hcaca;
    ORCALUT4 mux_800_i11_3_lut (.A(n1472), .B(n1489), .C(sp[4]), .Z(n1331)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_800_i11_3_lut.init = 16'hcaca;
    ORCALUT4 i6857_4_lut (.A(n1535[7]), .B(memory_data_i[7]), .C(aclk_c_enable_78), 
            .D(n1435), .Z(n7521)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i6857_4_lut.init = 16'hcac0;
    ORCALUT4 mux_827_i8_3_lut (.A(n1508), .B(n1525), .C(rp[4]), .Z(n1535[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_827_i8_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_161 (.A(n3_adj_767), .B(n3_adj_770), .C(n7397), 
            .D(n3_c), .Z(n6775)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_161.init = 16'h0100;
    PFUMX i7668 (.BLUT(n8692), .ALUT(n8693), .C0(n3_c), .Z(rload_N_400));
    ORCALUT4 i6733_2_lut (.A(n3), .B(slot[2]), .Z(n7397)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6733_2_lut.init = 16'heeee;
    ORCALUT4 i6860_4_lut (.A(n1535[6]), .B(memory_data_i[6]), .C(aclk_c_enable_78), 
            .D(n1435), .Z(n7524)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i6860_4_lut.init = 16'hcac0;
    ORCALUT4 i1_4_lut_adj_162 (.A(n7229), .B(n7241), .C(n7239), .D(n7223), 
            .Z(rpopp_N_378)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(182[13] 185[34])
    defparam i1_4_lut_adj_162.init = 16'hfffe;
    ORCALUT4 i1_2_lut_adj_163 (.A(r[9]), .B(r[6]), .Z(n7229)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(182[13] 185[34])
    defparam i1_2_lut_adj_163.init = 16'heeee;
    ORCALUT4 mux_827_i7_3_lut (.A(n1507), .B(n1524), .C(rp[4]), .Z(n1535[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_827_i7_3_lut.init = 16'hcaca;
    ORCALUT4 sum_15__bdd_4_lut_7712 (.A(t_sel[0]), .B(n8593), .C(n8631), 
            .D(memory_data_i[14]), .Z(n8467)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)+!C !(D)))+!A (B (C (D))+!B !(D))) */ ;
    defparam sum_15__bdd_4_lut_7712.init = 16'hc231;
    PFUMX i7666 (.BLUT(n8689), .ALUT(n8690), .C0(n3), .Z(n8691));
    ORCALUT4 i1_4_lut_adj_164 (.A(r[10]), .B(n7237), .C(n7231), .D(r[11]), 
            .Z(n7241)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(182[13] 185[34])
    defparam i1_4_lut_adj_164.init = 16'hfffe;
    ORCALUT4 p_15__I_0_255_i1_3_lut_rep_242_4_lut (.A(n8645), .B(n6367), 
            .C(a[0]), .D(p_c[0]), .Z(n8622)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam p_15__I_0_255_i1_3_lut_rep_242_4_lut.init = 16'hf780;
    ORCALUT4 i6863_4_lut (.A(n1535[5]), .B(memory_data_i[5]), .C(aclk_c_enable_78), 
            .D(n1435), .Z(n7527)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i6863_4_lut.init = 16'hcac0;
    ORCALUT4 mux_827_i6_3_lut (.A(n1506), .B(n1523), .C(rp[4]), .Z(n1535[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_827_i6_3_lut.init = 16'hcaca;
    ORCALUT4 t_sel_0__bdd_4_lut_7577 (.A(t_sel[0]), .B(sum[15]), .C(sum[16]), 
            .D(n8593), .Z(n8469)) /* synthesis lut_function=(!(A ((D)+!C)+!A ((D)+!B))) */ ;
    defparam t_sel_0__bdd_4_lut_7577.init = 16'h00e4;
    ORCALUT4 i6866_4_lut (.A(n1535[14]), .B(memory_data_i[14]), .C(aclk_c_enable_78), 
            .D(n1435), .Z(n7530)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i6866_4_lut.init = 16'hcac0;
    ORCALUT4 t_sel_3__I_0_Mux_6_i11_3_lut (.A(a[6]), .B(r[6]), .C(t_sel[0]), 
            .Z(n11_adj_779)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(137[2] 152[44])
    defparam t_sel_3__I_0_Mux_6_i11_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_165 (.A(r[14]), .B(r[0]), .C(r[3]), .D(r[7]), 
            .Z(n7239)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(182[13] 185[34])
    defparam i1_4_lut_adj_165.init = 16'hfffe;
    ORCALUT4 mux_827_i15_3_lut (.A(n1515), .B(n1532), .C(rp[4]), .Z(n1535[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_827_i15_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_then_1_lut (.A(slot[2]), .Z(n8684)) /* synthesis lut_function=(A) */ ;
    defparam i1_4_lut_then_1_lut.init = 16'haaaa;
    ORCALUT4 i1_2_lut_adj_166 (.A(r[2]), .B(r[1]), .Z(n7223)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(182[13] 185[34])
    defparam i1_2_lut_adj_166.init = 16'heeee;
    ORCALUT4 t_sel_0__bdd_4_lut_7713 (.A(t_sel[0]), .B(n8593), .C(n8629), 
            .D(memory_data_i[15]), .Z(n8470)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)+!C !(D)))+!A (B (C (D))+!B !(D))) */ ;
    defparam t_sel_0__bdd_4_lut_7713.init = 16'hc231;
    ORCALUT4 i6872_4_lut (.A(n1535[4]), .B(memory_data_i[4]), .C(aclk_c_enable_78), 
            .D(n1435), .Z(n7536)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i6872_4_lut.init = 16'hcac0;
    ORCALUT4 i1_3_lut_adj_167 (.A(rp1[3]), .B(rp1[2]), .C(arst_c), .Z(n7105)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i1_3_lut_adj_167.init = 16'h1010;
    ORCALUT4 mux_827_i5_3_lut (.A(n1505), .B(n1522), .C(rp[4]), .Z(n1535[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_827_i5_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_168 (.A(r[5]), .B(r[13]), .C(r[15]), .D(r[12]), 
            .Z(n7237)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(182[13] 185[34])
    defparam i1_4_lut_adj_168.init = 16'hfffe;
    ORCALUT4 mux_278_i3_3_lut_4_lut (.A(p_in_15__N_282[2]), .B(r[2]), .C(n7), 
            .D(n6376), .Z(n612[2])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(169[2] 174[19])
    defparam mux_278_i3_3_lut_4_lut.init = 16'hcaaa;
    ORCALUT4 mux_278_i4_3_lut_4_lut (.A(p_in_15__N_282[3]), .B(r[3]), .C(n7), 
            .D(n6376), .Z(n612[3])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(169[2] 174[19])
    defparam mux_278_i4_3_lut_4_lut.init = 16'hcaaa;
    ORCALUT4 mux_278_i5_3_lut_4_lut (.A(p_in_15__N_282[4]), .B(r[4]), .C(n7), 
            .D(n6376), .Z(n612[4])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(169[2] 174[19])
    defparam mux_278_i5_3_lut_4_lut.init = 16'hcaaa;
    ORCALUT4 mux_278_i16_3_lut_4_lut (.A(p_in_15__N_282[15]), .B(r[15]), 
            .C(n7), .D(n6376), .Z(n612[15])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(169[2] 174[19])
    defparam mux_278_i16_3_lut_4_lut.init = 16'hcaaa;
    ORCALUT4 t_sel_3__I_0_Mux_6_i12_3_lut (.A(system_data_o[6]), .B(memory_data_i[14]), 
            .C(t_sel[0]), .Z(n12_adj_780)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(137[2] 152[44])
    defparam t_sel_3__I_0_Mux_6_i12_3_lut.init = 16'hcaca;
    ORCALUT4 t_sel_3__I_0_Mux_3_i8_3_lut (.A(sum[2]), .B(memory_data_i[2]), 
            .C(t_sel[0]), .Z(n8_adj_802)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(137[2] 152[44])
    defparam t_sel_3__I_0_Mux_3_i8_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_3_lut_adj_169 (.A(n3_adj_767), .B(n3), .C(slot[2]), 
            .Z(n25)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_169.init = 16'h0808;
    ORCALUT4 i2851_3_lut_4_lut (.A(n8647), .B(code[2]), .C(code[3]), .D(n7), 
            .Z(n7_c)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;
    defparam i2851_3_lut_4_lut.init = 16'h2f20;
    ORCALUT4 i6749_4_lut (.A(n1535[3]), .B(memory_data_i[3]), .C(aclk_c_enable_78), 
            .D(n1435), .Z(n7413)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i6749_4_lut.init = 16'hcac0;
    ORCALUT4 i7366_2_lut_3_lut (.A(n3_adj_769), .B(slot[2]), .C(n3_c), 
            .Z(n7616)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(211[2] 385[9])
    defparam i7366_2_lut_3_lut.init = 16'hfdfd;
    ORCALUT4 i1_2_lut_3_lut_adj_170 (.A(n3_adj_767), .B(slot[2]), .C(n3), 
            .Z(n21)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_170.init = 16'h1010;
    ORCALUT4 mux_827_i4_3_lut (.A(n1504), .B(n1521), .C(rp[4]), .Z(n1535[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_827_i4_3_lut.init = 16'hcaca;
    ORCALUT4 mux_800_i4_3_lut (.A(n1465), .B(n1482), .C(sp[4]), .Z(n1324)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_800_i4_3_lut.init = 16'hcaca;
    ORCALUT4 i1_3_lut_4_lut_adj_171 (.A(n8614), .B(arst_c), .C(sp1[2]), 
            .D(sp1[3]), .Z(aclk_c_enable_16)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i1_3_lut_4_lut_adj_171.init = 16'h8000;
    ORCALUT4 i3536_3_lut_4_lut (.A(n3), .B(slot[2]), .C(n3_adj_767), .D(n3_c), 
            .Z(n30_adj_873)) /* synthesis lut_function=(!(A (B)+!A (B+(C (D))))) */ ;
    defparam i3536_3_lut_4_lut.init = 16'h2333;
    ORCALUT4 i803_2_lut_3_lut (.A(n8614), .B(arst_c), .C(sp1[4]), .Z(n1498)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i803_2_lut_3_lut.init = 16'h8080;
    ORCALUT4 i1_4_lut_else_1_lut (.A(slot[2]), .B(n3_adj_769), .C(n3_adj_770), 
            .D(n3_c), .Z(n8683)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam i1_4_lut_else_1_lut.init = 16'heaaa;
    ORCALUT4 i1_rep_17_4_lut (.A(n8662), .B(n8685), .C(n8657), .D(code[1]), 
            .Z(n6531)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(53[9:13])
    defparam i1_rep_17_4_lut.init = 16'ha0a8;
    PFUMX i7664 (.BLUT(n8686), .ALUT(n8687), .C0(n3_adj_769), .Z(n8688));
    ORCALUT4 i6893_3_lut_3_lut_4_lut (.A(n8614), .B(arst_c), .C(n1226), 
            .D(n8671), .Z(n7557)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (C)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i6893_3_lut_3_lut_4_lut.init = 16'hf0f8;
    ORCALUT4 i6894_3_lut_3_lut_4_lut (.A(n8614), .B(arst_c), .C(n1246), 
            .D(n8671), .Z(n7558)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (C)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i6894_3_lut_3_lut_4_lut.init = 16'hf0f8;
    ORCALUT4 i1_2_lut_3_lut_adj_172 (.A(n3_adj_770), .B(slot[2]), .C(n3_adj_767), 
            .Z(n46)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut_adj_172.init = 16'hfefe;
    ORCALUT4 t_sel_3__I_0_Mux_3_i11_3_lut (.A(a[3]), .B(r[3]), .C(t_sel[0]), 
            .Z(n11_adj_804)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(137[2] 152[44])
    defparam t_sel_3__I_0_Mux_3_i11_3_lut.init = 16'hcaca;
    ORCALUT4 r_sel_0__bdd_4_lut (.A(aclk_c_enable_78), .B(rp[4]), .C(n6548), 
            .D(rp[3]), .Z(n8479)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A (B ((D)+!C)+!B !((D)+!C))) */ ;
    defparam r_sel_0__bdd_4_lut.init = 16'hc69c;
    ORCALUT4 i1_2_lut_adj_173 (.A(r[8]), .B(r[4]), .Z(n7231)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(182[13] 185[34])
    defparam i1_2_lut_adj_173.init = 16'heeee;
    ORCALUT4 t_sel_3__I_0_Mux_3_i12_3_lut (.A(system_data_o[3]), .B(memory_data_i[11]), 
            .C(t_sel[0]), .Z(n12_adj_805)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(137[2] 152[44])
    defparam t_sel_3__I_0_Mux_3_i12_3_lut.init = 16'hcaca;
    ORCALUT4 t_sel_3__I_0_Mux_2_i8_3_lut (.A(sum[1]), .B(memory_data_i[1]), 
            .C(t_sel[0]), .Z(n8_adj_806)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(137[2] 152[44])
    defparam t_sel_3__I_0_Mux_2_i8_3_lut.init = 16'hcaca;
    ORCALUT4 i6752_3_lut (.A(memory_data_i[9]), .B(n2_adj_874), .C(n8600), 
            .Z(n7416)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6752_3_lut.init = 16'hcaca;
    ORCALUT4 mux_278_i14_3_lut_4_lut (.A(p_in_15__N_282[13]), .B(r[13]), 
            .C(n7), .D(n6376), .Z(n612[13])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(169[2] 174[19])
    defparam mux_278_i14_3_lut_4_lut.init = 16'hcaaa;
    ORCALUT4 i3152_3_lut_4_lut (.A(p_sel[0]), .B(\p_sel[1] ), .C(p_in_15__N_282[4]), 
            .D(interrupt_i_c_4), .Z(n646[4])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(169[2] 174[19])
    defparam i3152_3_lut_4_lut.init = 16'hf1e0;
    PFUMX i6805 (.BLUT(n7467), .ALUT(n4_adj_849), .C0(a_sel[2]), .Z(a_in[1]));
    ORCALUT4 a_sel_2__I_0_Mux_9_i2_3_lut (.A(a_in_16__N_215[9]), .B(\a[10] ), 
            .C(a_sel[0]), .Z(n2_adj_874)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(158[2] 163[17])
    defparam a_sel_2__I_0_Mux_9_i2_3_lut.init = 16'hcaca;
    ORCALUT4 t_sel_3__I_0_Mux_2_i11_3_lut (.A(a[2]), .B(r[2]), .C(t_sel[0]), 
            .Z(n11_adj_808)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(137[2] 152[44])
    defparam t_sel_3__I_0_Mux_2_i11_3_lut.init = 16'hcaca;
    ORCALUT4 i1_3_lut_4_lut_adj_174 (.A(n3_c), .B(slot[2]), .C(n3_adj_770), 
            .D(rpopp_N_378), .Z(n7209)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(153[2] 157[19])
    defparam i1_3_lut_4_lut_adj_174.init = 16'h1000;
    ORCALUT4 t_sel_3__I_0_Mux_2_i12_3_lut (.A(system_data_o[2]), .B(memory_data_i[10]), 
            .C(t_sel[0]), .Z(n12_adj_809)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(137[2] 152[44])
    defparam t_sel_3__I_0_Mux_2_i12_3_lut.init = 16'hcaca;
    ORCALUT4 a_sel_2__I_0_Mux_9_i4_3_lut (.A(\a[10] ), .B(\a[8] ), .C(a_sel[0]), 
            .Z(n4_adj_866)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(158[2] 163[17])
    defparam a_sel_2__I_0_Mux_9_i4_3_lut.init = 16'hcaca;
    ORCALUT4 mux_278_i15_3_lut_4_lut (.A(p_in_15__N_282[14]), .B(r[14]), 
            .C(n7), .D(n6376), .Z(n612[14])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(169[2] 174[19])
    defparam mux_278_i15_3_lut_4_lut.init = 16'hcaaa;
    ORCALUT4 mux_800_i16_3_lut (.A(n1477), .B(n1494), .C(sp[4]), .Z(n1336)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_800_i16_3_lut.init = 16'hcaca;
    ORCALUT4 mux_278_i7_3_lut_4_lut (.A(p_in_15__N_282[6]), .B(r[6]), .C(n7), 
            .D(n6376), .Z(n612[6])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(169[2] 174[19])
    defparam mux_278_i7_3_lut_4_lut.init = 16'hcaaa;
    ORCALUT4 mux_278_i8_3_lut_4_lut (.A(p_in_15__N_282[7]), .B(r[7]), .C(n7), 
            .D(n6376), .Z(n612[7])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(169[2] 174[19])
    defparam mux_278_i8_3_lut_4_lut.init = 16'hcaaa;
    ORCALUT4 i6755_4_lut (.A(n1535[2]), .B(memory_data_i[2]), .C(aclk_c_enable_78), 
            .D(n1435), .Z(n7419)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i6755_4_lut.init = 16'hcac0;
    ORCALUT4 i1_4_lut_adj_175 (.A(t_sel_3__N_308[1]), .B(t_sel_3__N_308[0]), 
            .C(t_sel[2]), .D(n8655), .Z(n6913)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i1_4_lut_adj_175.init = 16'hdfff;
    ORCALUT4 code_1__bdd_3_lut_7470_4_lut (.A(n3_adj_770), .B(slot[2]), 
            .C(rpopp_N_378), .D(n3), .Z(n8128)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B))) */ ;
    defparam code_1__bdd_3_lut_7470_4_lut.init = 16'h3111;
    ORCALUT4 mux_278_i9_3_lut_4_lut (.A(p_in_15__N_282[8]), .B(r[8]), .C(n7), 
            .D(n6376), .Z(n612[8])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(169[2] 174[19])
    defparam mux_278_i9_3_lut_4_lut.init = 16'hcaaa;
    ORCALUT4 i6895_3_lut_3_lut_4_lut (.A(n8614), .B(arst_c), .C(n1256), 
            .D(n8667), .Z(n7559)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (C)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i6895_3_lut_3_lut_4_lut.init = 16'hf0f8;
    ORCALUT4 i700_3_lut_4_lut (.A(n8614), .B(arst_c), .C(n1304), .D(sp1[4]), 
            .Z(n1309)) /* synthesis lut_function=(!(((C (D))+!B)+!A)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i700_3_lut_4_lut.init = 16'h0888;
    PFUMX i7662 (.BLUT(n8683), .ALUT(n8684), .C0(n3), .Z(n8685));
    ORCALUT4 mux_827_i3_3_lut (.A(n1503), .B(n1520), .C(rp[4]), .Z(n1535[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_827_i3_3_lut.init = 16'hcaca;
    ORCALUT4 mux_278_i10_3_lut_4_lut (.A(p_in_15__N_282[9]), .B(r[9]), .C(n7), 
            .D(n6376), .Z(n612[9])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(169[2] 174[19])
    defparam mux_278_i10_3_lut_4_lut.init = 16'hcaaa;
    ORCALUT4 mux_800_i9_3_lut (.A(n1470), .B(n1487), .C(sp[4]), .Z(n1329)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_800_i9_3_lut.init = 16'hcaca;
    ORCALUT4 mux_278_i11_3_lut_4_lut (.A(p_in_15__N_282[10]), .B(r[10]), 
            .C(n7), .D(n6376), .Z(n612[10])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(169[2] 174[19])
    defparam mux_278_i11_3_lut_4_lut.init = 16'hcaaa;
    ORCALUT4 mux_278_i12_3_lut_4_lut (.A(p_in_15__N_282[11]), .B(r[11]), 
            .C(n7), .D(n6376), .Z(n612[11])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(169[2] 174[19])
    defparam mux_278_i12_3_lut_4_lut.init = 16'hcaaa;
    ORCALUT4 mux_278_i13_3_lut_4_lut (.A(p_in_15__N_282[12]), .B(r[12]), 
            .C(n7), .D(n6376), .Z(n612[12])) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(169[2] 174[19])
    defparam mux_278_i13_3_lut_4_lut.init = 16'hcaaa;
    PFUMX i7688 (.BLUT(n8722), .ALUT(n8723), .C0(n3_adj_767), .Z(n3541));
    ORCALUT4 i3595_2_lut_3_lut_4_lut (.A(n7), .B(n6376), .C(\p_sel[1] ), 
            .D(p_in_15__N_282[15]), .Z(n646[15])) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (C (D))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(169[2] 174[19])
    defparam i3595_2_lut_3_lut_4_lut.init = 16'hf800;
    PFUMX i6808 (.BLUT(n7470), .ALUT(n7471), .C0(r_sel[1]), .Z(r_in[0]));
    ORCALUT4 i349_2_lut_rep_216_3_lut (.A(n7), .B(n6376), .C(\p_sel[1] ), 
            .Z(n8596)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(169[2] 174[19])
    defparam i349_2_lut_rep_216_3_lut.init = 16'hf8f8;
    ORCALUT4 i1_2_lut_3_lut_adj_176 (.A(n3), .B(n9434), .C(n3_adj_769), 
            .Z(n6367)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_176.init = 16'h0202;
    ORCALUT4 i6779_3_lut (.A(memory_data_i[8]), .B(n2_adj_869), .C(n8600), 
            .Z(n7443)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6779_3_lut.init = 16'hcaca;
    ORCALUT4 i703_3_lut_4_lut (.A(n8614), .B(arst_c), .C(n1304), .D(sp1[4]), 
            .Z(n1312)) /* synthesis lut_function=(A (B ((D)+!C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i703_3_lut_4_lut.init = 16'h8808;
    ORCALUT4 mux_277_i4_3_lut_4_lut (.A(p_sel[0]), .B(\p_sel[1] ), .C(p_in_15__N_282[3]), 
            .D(interrupt_i_c_3), .Z(n646[3])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(169[2] 174[19])
    defparam mux_277_i4_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 i6897_3_lut_3_lut_4_lut (.A(n8614), .B(arst_c), .C(n1266), 
            .D(n8671), .Z(n7561)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (C)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i6897_3_lut_3_lut_4_lut.init = 16'hf0f8;
    ORCALUT4 i6871_4_lut_4_lut (.A(memory_data_i[0]), .B(n8623), .C(t_sel[0]), 
            .D(n8593), .Z(n7535)) /* synthesis lut_function=(A (B (D)+!B !((D)+!C))+!A !(B (D)+!B (C+(D)))) */ ;
    defparam i6871_4_lut_4_lut.init = 16'h8865;
    ORCALUT4 i1_4_lut_adj_177 (.A(n7269), .B(n7255), .C(memory_data_i[12]), 
            .D(memory_data_i[1]), .Z(n7273)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(178[11] 181[34])
    defparam i1_4_lut_adj_177.init = 16'hfffe;
    ORCALUT4 i1_4_lut_adj_178 (.A(memory_data_i[11]), .B(memory_data_i[15]), 
            .C(memory_data_i[2]), .D(memory_data_i[9]), .Z(n7265)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(178[11] 181[34])
    defparam i1_4_lut_adj_178.init = 16'hfffe;
    ORCALUT4 i1_4_lut_adj_179 (.A(memory_data_i[14]), .B(memory_data_i[5]), 
            .C(memory_data_i[3]), .D(memory_data_i[4]), .Z(n7269)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(178[11] 181[34])
    defparam i1_4_lut_adj_179.init = 16'hfffe;
    ORCALUT4 i1_2_lut_adj_180 (.A(memory_data_i[8]), .B(memory_data_i[6]), 
            .Z(n7255)) /* synthesis lut_function=(A+(B)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(178[11] 181[34])
    defparam i1_2_lut_adj_180.init = 16'heeee;
    ORCALUT4 mux_277_i3_3_lut_4_lut (.A(p_sel[0]), .B(\p_sel[1] ), .C(p_in_15__N_282[2]), 
            .D(interrupt_i_c_2), .Z(n646[2])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(169[2] 174[19])
    defparam mux_277_i3_3_lut_4_lut.init = 16'hf1e0;
    ORCALUT4 mux_83_Mux_2_i30_4_lut (.A(n46), .B(n14), .C(code[4]), .D(code[3]), 
            .Z(n30_adj_799)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C+(D))+!B (C)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(232[2] 384[11])
    defparam mux_83_Mux_2_i30_4_lut.init = 16'h5c50;
    ORCALUT4 i1_2_lut_rep_255_3_lut (.A(n3_c), .B(slot[2]), .C(n21), .Z(n8635)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(53[9:13])
    defparam i1_2_lut_rep_255_3_lut.init = 16'he0e0;
    ORCALUT4 i6896_3_lut_3_lut_4_lut (.A(n8614), .B(arst_c), .C(n1271), 
            .D(n8673), .Z(n7560)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (C)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i6896_3_lut_3_lut_4_lut.init = 16'hf0f8;
    PFUMX i6814 (.BLUT(n7476), .ALUT(n4_adj_858), .C0(a_sel[2]), .Z(a_in[2]));
    ORCALUT4 t_sel_3__I_0_Mux_1_i8_3_lut (.A(sum[0]), .B(memory_data_i[0]), 
            .C(t_sel[0]), .Z(n8_adj_810)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(137[2] 152[44])
    defparam t_sel_3__I_0_Mux_1_i8_3_lut.init = 16'hcaca;
    ORCALUT4 i6881_3_lut_3_lut_4_lut (.A(n8614), .B(arst_c), .C(n1231), 
            .D(n8673), .Z(n7545)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (C)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i6881_3_lut_3_lut_4_lut.init = 16'hf0f8;
    PFUMX i6817 (.BLUT(n7479), .ALUT(n4_adj_860), .C0(a_sel[2]), .Z(a_in[14]));
    ORCALUT4 i1_2_lut_rep_265_3_lut_4_lut_4_lut (.A(n8672), .B(slot[2]), 
            .C(n3_c), .D(n8662), .Z(n8645)) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B (C (D)))) */ ;
    defparam i1_2_lut_rep_265_3_lut_4_lut_4_lut.init = 16'hdc00;
    PFUMX i6820 (.BLUT(n7482), .ALUT(n4_adj_863), .C0(a_sel[2]), .Z(a_in[3]));
    PFUMX i6823 (.BLUT(n7485), .ALUT(n7486), .C0(r_sel[1]), .Z(r_in[13]));
    ORCALUT4 i6882_3_lut_3_lut_4_lut (.A(n8614), .B(arst_c), .C(n1281), 
            .D(n8668), .Z(n7546)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i6882_3_lut_3_lut_4_lut.init = 16'hf8f0;
    ORCALUT4 i6891_3_lut_3_lut_4_lut (.A(n8614), .B(arst_c), .C(n1276), 
            .D(n8667), .Z(n7555)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (C)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i6891_3_lut_3_lut_4_lut.init = 16'hf0f8;
    ORCALUT4 i1_2_lut_rep_266_3_lut_4_lut_4_lut (.A(n8672), .B(slot[2]), 
            .C(n3_adj_769), .D(n8662), .Z(n8646)) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B (C (D)))) */ ;
    defparam i1_2_lut_rep_266_3_lut_4_lut_4_lut.init = 16'hdc00;
    ORCALUT4 i1_3_lut_4_lut_adj_181 (.A(n3_adj_769), .B(n9434), .C(n3541), 
            .D(n30_adj_781), .Z(t_sel_3__N_308[1])) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_3_lut_4_lut_adj_181.init = 16'hfef0;
    ORCALUT4 i51_3_lut_4_lut (.A(n3_adj_767), .B(slot[2]), .C(n25), .D(n3_adj_770), 
            .Z(n26)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A (B (C)+!B (C (D)))) */ ;
    defparam i51_3_lut_4_lut.init = 16'hf0e2;
    ORCALUT4 mux_83_Mux_1_i18_3_lut_3_lut_4_lut (.A(a[0]), .B(n3), .C(slot[2]), 
            .D(n3_adj_767), .Z(n18_c)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (B+(C+(D)))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(153[2] 157[19])
    defparam mux_83_Mux_1_i18_3_lut_3_lut_4_lut.init = 16'hf7fc;
    ORCALUT4 i6883_3_lut_3_lut_4_lut (.A(n8614), .B(arst_c), .C(n1236), 
            .D(n8667), .Z(n7547)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (C)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i6883_3_lut_3_lut_4_lut.init = 16'hf0f8;
    ORCALUT4 i6889_3_lut_3_lut_4_lut (.A(n8614), .B(arst_c), .C(n1241), 
            .D(n8668), .Z(n7553)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam i6889_3_lut_3_lut_4_lut.init = 16'hf8f0;
    ORCALUT4 i1_2_lut_rep_272_3_lut (.A(a[0]), .B(n3), .C(slot[2]), .Z(n8652)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(153[2] 157[19])
    defparam i1_2_lut_rep_272_3_lut.init = 16'h0808;
    ORCALUT4 i2862_3_lut_4_lut_3_lut_4_lut (.A(n3), .B(slot[2]), .C(n3_adj_767), 
            .D(n3_adj_770), .Z(n14)) /* synthesis lut_function=(A (B+!(D))+!A (B+(C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(232[2] 384[11])
    defparam i2862_3_lut_4_lut_3_lut_4_lut.init = 16'hdcfe;
    PFUMX a_sel_2__I_0_Mux_16_i7 (.BLUT(n3_adj_864), .ALUT(n6_adj_834), 
          .C0(a_sel[2]), .Z(a_in[16])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;
    ORCALUT4 i3477_2_lut_rep_267_3_lut (.A(n3), .B(slot[2]), .C(n3_adj_767), 
            .Z(n8647)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(232[2] 384[11])
    defparam i3477_2_lut_rep_267_3_lut.init = 16'hdcdc;
    PFUMX i6826 (.BLUT(n7488), .ALUT(n4_adj_868), .C0(a_sel[2]), .Z(a_in[7]));
    PFUMX mux_282_i15 (.BLUT(n612[14]), .ALUT(n663[14]), .C0(n7595), .Z(p_in[14]));
    ORCALUT4 mux_800_i14_3_lut (.A(n1475), .B(n1492), .C(sp[4]), .Z(n1334)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam mux_800_i14_3_lut.init = 16'hcaca;
    FD1S3IX slot__i2_rep_303 (.D(slot_2__N_315[2]), .CK(aclk_c), .CD(slot_2__N_318), 
            .Q(n9434)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=8, LSE_RCOL=12, LSE_LLINE=170, LSE_RLINE=170 */ ;   // c:/lscc/ep16vhdl/ep16.vhd(391[3] 446[10])
    defparam slot__i2_rep_303.GSR = "ENABLED";
    ORCALUT4 i6809_3_lut (.A(memory_data_i[0]), .B(n2_adj_875), .C(n8600), 
            .Z(n7473)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6809_3_lut.init = 16'hcaca;
    ORCALUT4 a_sel_2__I_0_Mux_0_i2_3_lut (.A(a_in_16__N_215[0]), .B(a[1]), 
            .C(a_sel[0]), .Z(n2_adj_875)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/lscc/ep16vhdl/ep16.vhd(158[2] 163[17])
    defparam a_sel_2__I_0_Mux_0_i2_3_lut.init = 16'hcaca;
    PFUMX mux_282_i14 (.BLUT(n612[13]), .ALUT(n663[13]), .C0(n7595), .Z(p_in[13]));
    
endmodule
