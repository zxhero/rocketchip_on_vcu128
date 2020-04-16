#-------------- MCS Generation ----------------------
#set_property BITSTREAM.CONFIG.EXTMASTERCCLK_EN div-1  [current_design]
#set_property BITSTREAM.CONFIG.SPI_FALL_EDGE YES       [current_design]
#set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4          [current_design]
#set_property BITSTREAM.GENERAL.COMPRESS TRUE          [current_design]
#set_property BITSTREAM.CONFIG.UNUSEDPIN Pullnone      [current_design]
#set_property CFGBVS GND                               [current_design]
#set_property CONFIG_VOLTAGE 1.8                       [current_design]
#set_property CONFIG_MODE SPIx4                        [current_design]

set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 8 [current_design]
set_property BITSTREAM.CONFIG.EXTMASTERCCLK_EN div-1 [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE YES [current_design]
set_property BITSTREAM.CONFIG.SPI_OPCODE 8'h6B [current_design]
set_property CONFIG_MODE SPIx8 [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.UNUSEDPIN Pulldown [current_design]
set_property CONFIG_VOLTAGE 1.8 [current_design]

set_property PACKAGE_PIN IOB_X0Y205 [get_ports SPI_0_io0_io]
set_property IOSTANDARD LVCMOS18 [get_ports SPI_0_io0_io]

set_property PACKAGE_PIN IOB_X0Y206 [get_ports SPI_0_io1_io]
set_property IOSTANDARD LVCMOS18 [get_ports SPI_0_io1_io]

set_property PACKAGE_PIN IOB_X0Y203 [get_ports SPI_0_io2_io]
set_property IOSTANDARD LVCMOS18 [get_ports SPI_0_io2_io]

set_property PACKAGE_PIN IOB_X0Y204 [get_ports SPI_0_io3_io]
set_property IOSTANDARD LVCMOS18 [get_ports SPI_0_io3_io]

set_property PACKAGE_PIN IOB_X0Y202 [get_ports SPI_0_ss_io]
set_property IOSTANDARD LVCMOS18 [get_ports SPI_0_ss_io]

set_property PACKAGE_PIN IOB_X0Y201 [get_ports SPI_0_sck_io]
set_property IOSTANDARD LVCMOS18 [get_ports SPI_0_sck_io]

# Bank: 40 - GPIO_LED0
set_property PACKAGE_PIN BH24 [get_ports {led[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led[0]}]
set_property DRIVE 8 [get_ports {led[0]}]
set_property SLEW SLOW [get_ports {led[0]}]

# Bank: 40 - GPIO_LED1
set_property PACKAGE_PIN BG24 [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led[1]}]
set_property DRIVE 8 [get_ports {led[1]}]
set_property SLEW SLOW [get_ports {led[1]}]

# Bank: 40 - GPIO_LED2
set_property PACKAGE_PIN BG25 [get_ports {led[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led[2]}]
set_property DRIVE 8 [get_ports {led[2]}]
set_property SLEW SLOW [get_ports {led[2]}]

# Bank: 40 - GPIO_LED3
set_property PACKAGE_PIN BF25 [get_ports {led[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led[3]}]
set_property DRIVE 8 [get_ports {led[3]}]
set_property SLEW SLOW [get_ports {led[3]}]

# Bank: 40 - GPIO_LED4
set_property PACKAGE_PIN BF26 [get_ports {led[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led[4]}]
set_property DRIVE 8 [get_ports {led[4]}]
set_property SLEW SLOW [get_ports {led[4]}]

# Bank: 40 - GPIO_LED5
set_property PACKAGE_PIN BF27 [get_ports {led[5]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led[5]}]
set_property DRIVE 8 [get_ports {led[5]}]
set_property SLEW SLOW [get_ports {led[5]}]

# Bank: 40 - GPIO_LED6
set_property PACKAGE_PIN BG27 [get_ports {led[6]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led[6]}]
set_property DRIVE 8 [get_ports {led[6]}]
set_property SLEW SLOW [get_ports {led[6]}]

# Bank: 40 - GPIO_LED7
set_property PACKAGE_PIN BG28 [get_ports {led[7]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led[7]}]
set_property DRIVE 8 [get_ports {led[7]}]
set_property SLEW SLOW [get_ports {led[7]}]

connect_debug_port u_ila_0/probe0 [get_nets [list {SERVETop/target/tile/core/csr_io_evec[0]} {SERVETop/target/tile/core/csr_io_evec[1]} {SERVETop/target/tile/core/csr_io_evec[2]} {SERVETop/target/tile/core/csr_io_evec[3]} {SERVETop/target/tile/core/csr_io_evec[4]} {SERVETop/target/tile/core/csr_io_evec[5]} {SERVETop/target/tile/core/csr_io_evec[6]} {SERVETop/target/tile/core/csr_io_evec[7]} {SERVETop/target/tile/core/csr_io_evec[8]} {SERVETop/target/tile/core/csr_io_evec[9]} {SERVETop/target/tile/core/csr_io_evec[10]} {SERVETop/target/tile/core/csr_io_evec[11]} {SERVETop/target/tile/core/csr_io_evec[12]} {SERVETop/target/tile/core/csr_io_evec[13]} {SERVETop/target/tile/core/csr_io_evec[14]} {SERVETop/target/tile/core/csr_io_evec[15]} {SERVETop/target/tile/core/csr_io_evec[16]} {SERVETop/target/tile/core/csr_io_evec[17]} {SERVETop/target/tile/core/csr_io_evec[18]} {SERVETop/target/tile/core/csr_io_evec[19]} {SERVETop/target/tile/core/csr_io_evec[20]} {SERVETop/target/tile/core/csr_io_evec[21]} {SERVETop/target/tile/core/csr_io_evec[22]} {SERVETop/target/tile/core/csr_io_evec[23]} {SERVETop/target/tile/core/csr_io_evec[24]} {SERVETop/target/tile/core/csr_io_evec[25]} {SERVETop/target/tile/core/csr_io_evec[26]} {SERVETop/target/tile/core/csr_io_evec[27]} {SERVETop/target/tile/core/csr_io_evec[28]} {SERVETop/target/tile/core/csr_io_evec[29]} {SERVETop/target/tile/core/csr_io_evec[30]} {SERVETop/target/tile/core/csr_io_evec[31]} {SERVETop/target/tile/core/csr_io_evec[32]} {SERVETop/target/tile/core/csr_io_evec[33]} {SERVETop/target/tile/core/csr_io_evec[34]} {SERVETop/target/tile/core/csr_io_evec[35]} {SERVETop/target/tile/core/csr_io_evec[36]} {SERVETop/target/tile/core/csr_io_evec[37]} {SERVETop/target/tile/core/csr_io_evec[38]} {SERVETop/target/tile/core/csr_io_evec[39]}]]
connect_debug_port u_ila_0/probe20 [get_nets [list SERVETop/target/tile/core/_T_1698]]

create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 4 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER true [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 32768 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL true [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list top_wrapper/top_i/ddr4_0/inst/u_ddr4_infrastructure/addn_ui_clkout1]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 64 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {mem_axi_1_w_bits_data[0]} {mem_axi_1_w_bits_data[1]} {mem_axi_1_w_bits_data[2]} {mem_axi_1_w_bits_data[3]} {mem_axi_1_w_bits_data[4]} {mem_axi_1_w_bits_data[5]} {mem_axi_1_w_bits_data[6]} {mem_axi_1_w_bits_data[7]} {mem_axi_1_w_bits_data[8]} {mem_axi_1_w_bits_data[9]} {mem_axi_1_w_bits_data[10]} {mem_axi_1_w_bits_data[11]} {mem_axi_1_w_bits_data[12]} {mem_axi_1_w_bits_data[13]} {mem_axi_1_w_bits_data[14]} {mem_axi_1_w_bits_data[15]} {mem_axi_1_w_bits_data[16]} {mem_axi_1_w_bits_data[17]} {mem_axi_1_w_bits_data[18]} {mem_axi_1_w_bits_data[19]} {mem_axi_1_w_bits_data[20]} {mem_axi_1_w_bits_data[21]} {mem_axi_1_w_bits_data[22]} {mem_axi_1_w_bits_data[23]} {mem_axi_1_w_bits_data[24]} {mem_axi_1_w_bits_data[25]} {mem_axi_1_w_bits_data[26]} {mem_axi_1_w_bits_data[27]} {mem_axi_1_w_bits_data[28]} {mem_axi_1_w_bits_data[29]} {mem_axi_1_w_bits_data[30]} {mem_axi_1_w_bits_data[31]} {mem_axi_1_w_bits_data[32]} {mem_axi_1_w_bits_data[33]} {mem_axi_1_w_bits_data[34]} {mem_axi_1_w_bits_data[35]} {mem_axi_1_w_bits_data[36]} {mem_axi_1_w_bits_data[37]} {mem_axi_1_w_bits_data[38]} {mem_axi_1_w_bits_data[39]} {mem_axi_1_w_bits_data[40]} {mem_axi_1_w_bits_data[41]} {mem_axi_1_w_bits_data[42]} {mem_axi_1_w_bits_data[43]} {mem_axi_1_w_bits_data[44]} {mem_axi_1_w_bits_data[45]} {mem_axi_1_w_bits_data[46]} {mem_axi_1_w_bits_data[47]} {mem_axi_1_w_bits_data[48]} {mem_axi_1_w_bits_data[49]} {mem_axi_1_w_bits_data[50]} {mem_axi_1_w_bits_data[51]} {mem_axi_1_w_bits_data[52]} {mem_axi_1_w_bits_data[53]} {mem_axi_1_w_bits_data[54]} {mem_axi_1_w_bits_data[55]} {mem_axi_1_w_bits_data[56]} {mem_axi_1_w_bits_data[57]} {mem_axi_1_w_bits_data[58]} {mem_axi_1_w_bits_data[59]} {mem_axi_1_w_bits_data[60]} {mem_axi_1_w_bits_data[61]} {mem_axi_1_w_bits_data[62]} {mem_axi_1_w_bits_data[63]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 64 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {mem_axi_1_r_bits_data[0]} {mem_axi_1_r_bits_data[1]} {mem_axi_1_r_bits_data[2]} {mem_axi_1_r_bits_data[3]} {mem_axi_1_r_bits_data[4]} {mem_axi_1_r_bits_data[5]} {mem_axi_1_r_bits_data[6]} {mem_axi_1_r_bits_data[7]} {mem_axi_1_r_bits_data[8]} {mem_axi_1_r_bits_data[9]} {mem_axi_1_r_bits_data[10]} {mem_axi_1_r_bits_data[11]} {mem_axi_1_r_bits_data[12]} {mem_axi_1_r_bits_data[13]} {mem_axi_1_r_bits_data[14]} {mem_axi_1_r_bits_data[15]} {mem_axi_1_r_bits_data[16]} {mem_axi_1_r_bits_data[17]} {mem_axi_1_r_bits_data[18]} {mem_axi_1_r_bits_data[19]} {mem_axi_1_r_bits_data[20]} {mem_axi_1_r_bits_data[21]} {mem_axi_1_r_bits_data[22]} {mem_axi_1_r_bits_data[23]} {mem_axi_1_r_bits_data[24]} {mem_axi_1_r_bits_data[25]} {mem_axi_1_r_bits_data[26]} {mem_axi_1_r_bits_data[27]} {mem_axi_1_r_bits_data[28]} {mem_axi_1_r_bits_data[29]} {mem_axi_1_r_bits_data[30]} {mem_axi_1_r_bits_data[31]} {mem_axi_1_r_bits_data[32]} {mem_axi_1_r_bits_data[33]} {mem_axi_1_r_bits_data[34]} {mem_axi_1_r_bits_data[35]} {mem_axi_1_r_bits_data[36]} {mem_axi_1_r_bits_data[37]} {mem_axi_1_r_bits_data[38]} {mem_axi_1_r_bits_data[39]} {mem_axi_1_r_bits_data[40]} {mem_axi_1_r_bits_data[41]} {mem_axi_1_r_bits_data[42]} {mem_axi_1_r_bits_data[43]} {mem_axi_1_r_bits_data[44]} {mem_axi_1_r_bits_data[45]} {mem_axi_1_r_bits_data[46]} {mem_axi_1_r_bits_data[47]} {mem_axi_1_r_bits_data[48]} {mem_axi_1_r_bits_data[49]} {mem_axi_1_r_bits_data[50]} {mem_axi_1_r_bits_data[51]} {mem_axi_1_r_bits_data[52]} {mem_axi_1_r_bits_data[53]} {mem_axi_1_r_bits_data[54]} {mem_axi_1_r_bits_data[55]} {mem_axi_1_r_bits_data[56]} {mem_axi_1_r_bits_data[57]} {mem_axi_1_r_bits_data[58]} {mem_axi_1_r_bits_data[59]} {mem_axi_1_r_bits_data[60]} {mem_axi_1_r_bits_data[61]} {mem_axi_1_r_bits_data[62]} {mem_axi_1_r_bits_data[63]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 36 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {mem_axi_1_aw_bits_addr[0]} {mem_axi_1_aw_bits_addr[1]} {mem_axi_1_aw_bits_addr[2]} {mem_axi_1_aw_bits_addr[3]} {mem_axi_1_aw_bits_addr[4]} {mem_axi_1_aw_bits_addr[5]} {mem_axi_1_aw_bits_addr[6]} {mem_axi_1_aw_bits_addr[7]} {mem_axi_1_aw_bits_addr[8]} {mem_axi_1_aw_bits_addr[9]} {mem_axi_1_aw_bits_addr[10]} {mem_axi_1_aw_bits_addr[11]} {mem_axi_1_aw_bits_addr[12]} {mem_axi_1_aw_bits_addr[13]} {mem_axi_1_aw_bits_addr[14]} {mem_axi_1_aw_bits_addr[15]} {mem_axi_1_aw_bits_addr[16]} {mem_axi_1_aw_bits_addr[17]} {mem_axi_1_aw_bits_addr[18]} {mem_axi_1_aw_bits_addr[19]} {mem_axi_1_aw_bits_addr[20]} {mem_axi_1_aw_bits_addr[21]} {mem_axi_1_aw_bits_addr[22]} {mem_axi_1_aw_bits_addr[23]} {mem_axi_1_aw_bits_addr[24]} {mem_axi_1_aw_bits_addr[25]} {mem_axi_1_aw_bits_addr[26]} {mem_axi_1_aw_bits_addr[27]} {mem_axi_1_aw_bits_addr[28]} {mem_axi_1_aw_bits_addr[29]} {mem_axi_1_aw_bits_addr[30]} {mem_axi_1_aw_bits_addr[31]} {mem_axi_1_aw_bits_addr[32]} {mem_axi_1_aw_bits_addr[33]} {mem_axi_1_aw_bits_addr[34]} {mem_axi_1_aw_bits_addr[35]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 3 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {mem_axi_1_aw_bits_size[0]} {mem_axi_1_aw_bits_size[1]} {mem_axi_1_aw_bits_size[2]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 8 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {mem_axi_1_ar_bits_len[0]} {mem_axi_1_ar_bits_len[1]} {mem_axi_1_ar_bits_len[2]} {mem_axi_1_ar_bits_len[3]} {mem_axi_1_ar_bits_len[4]} {mem_axi_1_ar_bits_len[5]} {mem_axi_1_ar_bits_len[6]} {mem_axi_1_ar_bits_len[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 3 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {mem_axi_1_ar_bits_size[0]} {mem_axi_1_ar_bits_size[1]} {mem_axi_1_ar_bits_size[2]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 36 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list {mem_axi_1_ar_bits_addr[0]} {mem_axi_1_ar_bits_addr[1]} {mem_axi_1_ar_bits_addr[2]} {mem_axi_1_ar_bits_addr[3]} {mem_axi_1_ar_bits_addr[4]} {mem_axi_1_ar_bits_addr[5]} {mem_axi_1_ar_bits_addr[6]} {mem_axi_1_ar_bits_addr[7]} {mem_axi_1_ar_bits_addr[8]} {mem_axi_1_ar_bits_addr[9]} {mem_axi_1_ar_bits_addr[10]} {mem_axi_1_ar_bits_addr[11]} {mem_axi_1_ar_bits_addr[12]} {mem_axi_1_ar_bits_addr[13]} {mem_axi_1_ar_bits_addr[14]} {mem_axi_1_ar_bits_addr[15]} {mem_axi_1_ar_bits_addr[16]} {mem_axi_1_ar_bits_addr[17]} {mem_axi_1_ar_bits_addr[18]} {mem_axi_1_ar_bits_addr[19]} {mem_axi_1_ar_bits_addr[20]} {mem_axi_1_ar_bits_addr[21]} {mem_axi_1_ar_bits_addr[22]} {mem_axi_1_ar_bits_addr[23]} {mem_axi_1_ar_bits_addr[24]} {mem_axi_1_ar_bits_addr[25]} {mem_axi_1_ar_bits_addr[26]} {mem_axi_1_ar_bits_addr[27]} {mem_axi_1_ar_bits_addr[28]} {mem_axi_1_ar_bits_addr[29]} {mem_axi_1_ar_bits_addr[30]} {mem_axi_1_ar_bits_addr[31]} {mem_axi_1_ar_bits_addr[32]} {mem_axi_1_ar_bits_addr[33]} {mem_axi_1_ar_bits_addr[34]} {mem_axi_1_ar_bits_addr[35]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 8 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list {mem_axi_1_aw_bits_len[0]} {mem_axi_1_aw_bits_len[1]} {mem_axi_1_aw_bits_len[2]} {mem_axi_1_aw_bits_len[3]} {mem_axi_1_aw_bits_len[4]} {mem_axi_1_aw_bits_len[5]} {mem_axi_1_aw_bits_len[6]} {mem_axi_1_aw_bits_len[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 3 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list {mmio_axi_0_aw_bits_size[0]} {mmio_axi_0_aw_bits_size[1]} {mmio_axi_0_aw_bits_size[2]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 8 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list {mmio_axi_0_aw_bits_len[0]} {mmio_axi_0_aw_bits_len[1]} {mmio_axi_0_aw_bits_len[2]} {mmio_axi_0_aw_bits_len[3]} {mmio_axi_0_aw_bits_len[4]} {mmio_axi_0_aw_bits_len[5]} {mmio_axi_0_aw_bits_len[6]} {mmio_axi_0_aw_bits_len[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 64 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list {mmio_axi_0_r_bits_data[0]} {mmio_axi_0_r_bits_data[1]} {mmio_axi_0_r_bits_data[2]} {mmio_axi_0_r_bits_data[3]} {mmio_axi_0_r_bits_data[4]} {mmio_axi_0_r_bits_data[5]} {mmio_axi_0_r_bits_data[6]} {mmio_axi_0_r_bits_data[7]} {mmio_axi_0_r_bits_data[8]} {mmio_axi_0_r_bits_data[9]} {mmio_axi_0_r_bits_data[10]} {mmio_axi_0_r_bits_data[11]} {mmio_axi_0_r_bits_data[12]} {mmio_axi_0_r_bits_data[13]} {mmio_axi_0_r_bits_data[14]} {mmio_axi_0_r_bits_data[15]} {mmio_axi_0_r_bits_data[16]} {mmio_axi_0_r_bits_data[17]} {mmio_axi_0_r_bits_data[18]} {mmio_axi_0_r_bits_data[19]} {mmio_axi_0_r_bits_data[20]} {mmio_axi_0_r_bits_data[21]} {mmio_axi_0_r_bits_data[22]} {mmio_axi_0_r_bits_data[23]} {mmio_axi_0_r_bits_data[24]} {mmio_axi_0_r_bits_data[25]} {mmio_axi_0_r_bits_data[26]} {mmio_axi_0_r_bits_data[27]} {mmio_axi_0_r_bits_data[28]} {mmio_axi_0_r_bits_data[29]} {mmio_axi_0_r_bits_data[30]} {mmio_axi_0_r_bits_data[31]} {mmio_axi_0_r_bits_data[32]} {mmio_axi_0_r_bits_data[33]} {mmio_axi_0_r_bits_data[34]} {mmio_axi_0_r_bits_data[35]} {mmio_axi_0_r_bits_data[36]} {mmio_axi_0_r_bits_data[37]} {mmio_axi_0_r_bits_data[38]} {mmio_axi_0_r_bits_data[39]} {mmio_axi_0_r_bits_data[40]} {mmio_axi_0_r_bits_data[41]} {mmio_axi_0_r_bits_data[42]} {mmio_axi_0_r_bits_data[43]} {mmio_axi_0_r_bits_data[44]} {mmio_axi_0_r_bits_data[45]} {mmio_axi_0_r_bits_data[46]} {mmio_axi_0_r_bits_data[47]} {mmio_axi_0_r_bits_data[48]} {mmio_axi_0_r_bits_data[49]} {mmio_axi_0_r_bits_data[50]} {mmio_axi_0_r_bits_data[51]} {mmio_axi_0_r_bits_data[52]} {mmio_axi_0_r_bits_data[53]} {mmio_axi_0_r_bits_data[54]} {mmio_axi_0_r_bits_data[55]} {mmio_axi_0_r_bits_data[56]} {mmio_axi_0_r_bits_data[57]} {mmio_axi_0_r_bits_data[58]} {mmio_axi_0_r_bits_data[59]} {mmio_axi_0_r_bits_data[60]} {mmio_axi_0_r_bits_data[61]} {mmio_axi_0_r_bits_data[62]} {mmio_axi_0_r_bits_data[63]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
set_property port_width 64 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list {mmio_axi_0_w_bits_data[0]} {mmio_axi_0_w_bits_data[1]} {mmio_axi_0_w_bits_data[2]} {mmio_axi_0_w_bits_data[3]} {mmio_axi_0_w_bits_data[4]} {mmio_axi_0_w_bits_data[5]} {mmio_axi_0_w_bits_data[6]} {mmio_axi_0_w_bits_data[7]} {mmio_axi_0_w_bits_data[8]} {mmio_axi_0_w_bits_data[9]} {mmio_axi_0_w_bits_data[10]} {mmio_axi_0_w_bits_data[11]} {mmio_axi_0_w_bits_data[12]} {mmio_axi_0_w_bits_data[13]} {mmio_axi_0_w_bits_data[14]} {mmio_axi_0_w_bits_data[15]} {mmio_axi_0_w_bits_data[16]} {mmio_axi_0_w_bits_data[17]} {mmio_axi_0_w_bits_data[18]} {mmio_axi_0_w_bits_data[19]} {mmio_axi_0_w_bits_data[20]} {mmio_axi_0_w_bits_data[21]} {mmio_axi_0_w_bits_data[22]} {mmio_axi_0_w_bits_data[23]} {mmio_axi_0_w_bits_data[24]} {mmio_axi_0_w_bits_data[25]} {mmio_axi_0_w_bits_data[26]} {mmio_axi_0_w_bits_data[27]} {mmio_axi_0_w_bits_data[28]} {mmio_axi_0_w_bits_data[29]} {mmio_axi_0_w_bits_data[30]} {mmio_axi_0_w_bits_data[31]} {mmio_axi_0_w_bits_data[32]} {mmio_axi_0_w_bits_data[33]} {mmio_axi_0_w_bits_data[34]} {mmio_axi_0_w_bits_data[35]} {mmio_axi_0_w_bits_data[36]} {mmio_axi_0_w_bits_data[37]} {mmio_axi_0_w_bits_data[38]} {mmio_axi_0_w_bits_data[39]} {mmio_axi_0_w_bits_data[40]} {mmio_axi_0_w_bits_data[41]} {mmio_axi_0_w_bits_data[42]} {mmio_axi_0_w_bits_data[43]} {mmio_axi_0_w_bits_data[44]} {mmio_axi_0_w_bits_data[45]} {mmio_axi_0_w_bits_data[46]} {mmio_axi_0_w_bits_data[47]} {mmio_axi_0_w_bits_data[48]} {mmio_axi_0_w_bits_data[49]} {mmio_axi_0_w_bits_data[50]} {mmio_axi_0_w_bits_data[51]} {mmio_axi_0_w_bits_data[52]} {mmio_axi_0_w_bits_data[53]} {mmio_axi_0_w_bits_data[54]} {mmio_axi_0_w_bits_data[55]} {mmio_axi_0_w_bits_data[56]} {mmio_axi_0_w_bits_data[57]} {mmio_axi_0_w_bits_data[58]} {mmio_axi_0_w_bits_data[59]} {mmio_axi_0_w_bits_data[60]} {mmio_axi_0_w_bits_data[61]} {mmio_axi_0_w_bits_data[62]} {mmio_axi_0_w_bits_data[63]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe12]
set_property port_width 40 [get_debug_ports u_ila_0/probe12]
connect_debug_port u_ila_0/probe12 [get_nets [list {SERVETop/target/tile/core/io_imem_resp_bits_pc[0]} {SERVETop/target/tile/core/io_imem_resp_bits_pc[1]} {SERVETop/target/tile/core/io_imem_resp_bits_pc[2]} {SERVETop/target/tile/core/io_imem_resp_bits_pc[3]} {SERVETop/target/tile/core/io_imem_resp_bits_pc[4]} {SERVETop/target/tile/core/io_imem_resp_bits_pc[5]} {SERVETop/target/tile/core/io_imem_resp_bits_pc[6]} {SERVETop/target/tile/core/io_imem_resp_bits_pc[7]} {SERVETop/target/tile/core/io_imem_resp_bits_pc[8]} {SERVETop/target/tile/core/io_imem_resp_bits_pc[9]} {SERVETop/target/tile/core/io_imem_resp_bits_pc[10]} {SERVETop/target/tile/core/io_imem_resp_bits_pc[11]} {SERVETop/target/tile/core/io_imem_resp_bits_pc[12]} {SERVETop/target/tile/core/io_imem_resp_bits_pc[13]} {SERVETop/target/tile/core/io_imem_resp_bits_pc[14]} {SERVETop/target/tile/core/io_imem_resp_bits_pc[15]} {SERVETop/target/tile/core/io_imem_resp_bits_pc[16]} {SERVETop/target/tile/core/io_imem_resp_bits_pc[17]} {SERVETop/target/tile/core/io_imem_resp_bits_pc[18]} {SERVETop/target/tile/core/io_imem_resp_bits_pc[19]} {SERVETop/target/tile/core/io_imem_resp_bits_pc[20]} {SERVETop/target/tile/core/io_imem_resp_bits_pc[21]} {SERVETop/target/tile/core/io_imem_resp_bits_pc[22]} {SERVETop/target/tile/core/io_imem_resp_bits_pc[23]} {SERVETop/target/tile/core/io_imem_resp_bits_pc[24]} {SERVETop/target/tile/core/io_imem_resp_bits_pc[25]} {SERVETop/target/tile/core/io_imem_resp_bits_pc[26]} {SERVETop/target/tile/core/io_imem_resp_bits_pc[27]} {SERVETop/target/tile/core/io_imem_resp_bits_pc[28]} {SERVETop/target/tile/core/io_imem_resp_bits_pc[29]} {SERVETop/target/tile/core/io_imem_resp_bits_pc[30]} {SERVETop/target/tile/core/io_imem_resp_bits_pc[31]} {SERVETop/target/tile/core/io_imem_resp_bits_pc[32]} {SERVETop/target/tile/core/io_imem_resp_bits_pc[33]} {SERVETop/target/tile/core/io_imem_resp_bits_pc[34]} {SERVETop/target/tile/core/io_imem_resp_bits_pc[35]} {SERVETop/target/tile/core/io_imem_resp_bits_pc[36]} {SERVETop/target/tile/core/io_imem_resp_bits_pc[37]} {SERVETop/target/tile/core/io_imem_resp_bits_pc[38]} {SERVETop/target/tile/core/io_imem_resp_bits_pc[39]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe13]
set_property port_width 39 [get_debug_ports u_ila_0/probe13]
connect_debug_port u_ila_0/probe13 [get_nets [list {SERVETop/target/tile/core/io_imem_req_bits_pc[1]} {SERVETop/target/tile/core/io_imem_req_bits_pc[2]} {SERVETop/target/tile/core/io_imem_req_bits_pc[3]} {SERVETop/target/tile/core/io_imem_req_bits_pc[4]} {SERVETop/target/tile/core/io_imem_req_bits_pc[5]} {SERVETop/target/tile/core/io_imem_req_bits_pc[6]} {SERVETop/target/tile/core/io_imem_req_bits_pc[7]} {SERVETop/target/tile/core/io_imem_req_bits_pc[8]} {SERVETop/target/tile/core/io_imem_req_bits_pc[9]} {SERVETop/target/tile/core/io_imem_req_bits_pc[10]} {SERVETop/target/tile/core/io_imem_req_bits_pc[11]} {SERVETop/target/tile/core/io_imem_req_bits_pc[12]} {SERVETop/target/tile/core/io_imem_req_bits_pc[13]} {SERVETop/target/tile/core/io_imem_req_bits_pc[14]} {SERVETop/target/tile/core/io_imem_req_bits_pc[15]} {SERVETop/target/tile/core/io_imem_req_bits_pc[16]} {SERVETop/target/tile/core/io_imem_req_bits_pc[17]} {SERVETop/target/tile/core/io_imem_req_bits_pc[18]} {SERVETop/target/tile/core/io_imem_req_bits_pc[19]} {SERVETop/target/tile/core/io_imem_req_bits_pc[20]} {SERVETop/target/tile/core/io_imem_req_bits_pc[21]} {SERVETop/target/tile/core/io_imem_req_bits_pc[22]} {SERVETop/target/tile/core/io_imem_req_bits_pc[23]} {SERVETop/target/tile/core/io_imem_req_bits_pc[24]} {SERVETop/target/tile/core/io_imem_req_bits_pc[25]} {SERVETop/target/tile/core/io_imem_req_bits_pc[26]} {SERVETop/target/tile/core/io_imem_req_bits_pc[27]} {SERVETop/target/tile/core/io_imem_req_bits_pc[28]} {SERVETop/target/tile/core/io_imem_req_bits_pc[29]} {SERVETop/target/tile/core/io_imem_req_bits_pc[30]} {SERVETop/target/tile/core/io_imem_req_bits_pc[31]} {SERVETop/target/tile/core/io_imem_req_bits_pc[32]} {SERVETop/target/tile/core/io_imem_req_bits_pc[33]} {SERVETop/target/tile/core/io_imem_req_bits_pc[34]} {SERVETop/target/tile/core/io_imem_req_bits_pc[35]} {SERVETop/target/tile/core/io_imem_req_bits_pc[36]} {SERVETop/target/tile/core/io_imem_req_bits_pc[37]} {SERVETop/target/tile/core/io_imem_req_bits_pc[38]} {SERVETop/target/tile/core/io_imem_req_bits_pc[39]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe14]
set_property port_width 32 [get_debug_ports u_ila_0/probe14]
connect_debug_port u_ila_0/probe14 [get_nets [list {SERVETop/target/tile/core/io_imem_resp_bits_data[0]} {SERVETop/target/tile/core/io_imem_resp_bits_data[1]} {SERVETop/target/tile/core/io_imem_resp_bits_data[2]} {SERVETop/target/tile/core/io_imem_resp_bits_data[3]} {SERVETop/target/tile/core/io_imem_resp_bits_data[4]} {SERVETop/target/tile/core/io_imem_resp_bits_data[5]} {SERVETop/target/tile/core/io_imem_resp_bits_data[6]} {SERVETop/target/tile/core/io_imem_resp_bits_data[7]} {SERVETop/target/tile/core/io_imem_resp_bits_data[8]} {SERVETop/target/tile/core/io_imem_resp_bits_data[9]} {SERVETop/target/tile/core/io_imem_resp_bits_data[10]} {SERVETop/target/tile/core/io_imem_resp_bits_data[11]} {SERVETop/target/tile/core/io_imem_resp_bits_data[12]} {SERVETop/target/tile/core/io_imem_resp_bits_data[13]} {SERVETop/target/tile/core/io_imem_resp_bits_data[14]} {SERVETop/target/tile/core/io_imem_resp_bits_data[15]} {SERVETop/target/tile/core/io_imem_resp_bits_data[16]} {SERVETop/target/tile/core/io_imem_resp_bits_data[17]} {SERVETop/target/tile/core/io_imem_resp_bits_data[18]} {SERVETop/target/tile/core/io_imem_resp_bits_data[19]} {SERVETop/target/tile/core/io_imem_resp_bits_data[20]} {SERVETop/target/tile/core/io_imem_resp_bits_data[21]} {SERVETop/target/tile/core/io_imem_resp_bits_data[22]} {SERVETop/target/tile/core/io_imem_resp_bits_data[23]} {SERVETop/target/tile/core/io_imem_resp_bits_data[24]} {SERVETop/target/tile/core/io_imem_resp_bits_data[25]} {SERVETop/target/tile/core/io_imem_resp_bits_data[26]} {SERVETop/target/tile/core/io_imem_resp_bits_data[27]} {SERVETop/target/tile/core/io_imem_resp_bits_data[28]} {SERVETop/target/tile/core/io_imem_resp_bits_data[29]} {SERVETop/target/tile/core/io_imem_resp_bits_data[30]} {SERVETop/target/tile/core/io_imem_resp_bits_data[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe15]
set_property port_width 3 [get_debug_ports u_ila_0/probe15]
connect_debug_port u_ila_0/probe15 [get_nets [list {mmio_axi_0_ar_bits_size[0]} {mmio_axi_0_ar_bits_size[1]} {mmio_axi_0_ar_bits_size[2]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe16]
set_property port_width 36 [get_debug_ports u_ila_0/probe16]
connect_debug_port u_ila_0/probe16 [get_nets [list {mmio_axi_0_aw_bits_addr[0]} {mmio_axi_0_aw_bits_addr[1]} {mmio_axi_0_aw_bits_addr[2]} {mmio_axi_0_aw_bits_addr[3]} {mmio_axi_0_aw_bits_addr[4]} {mmio_axi_0_aw_bits_addr[5]} {mmio_axi_0_aw_bits_addr[6]} {mmio_axi_0_aw_bits_addr[7]} {mmio_axi_0_aw_bits_addr[8]} {mmio_axi_0_aw_bits_addr[9]} {mmio_axi_0_aw_bits_addr[10]} {mmio_axi_0_aw_bits_addr[11]} {mmio_axi_0_aw_bits_addr[12]} {mmio_axi_0_aw_bits_addr[13]} {mmio_axi_0_aw_bits_addr[14]} {mmio_axi_0_aw_bits_addr[15]} {mmio_axi_0_aw_bits_addr[16]} {mmio_axi_0_aw_bits_addr[17]} {mmio_axi_0_aw_bits_addr[18]} {mmio_axi_0_aw_bits_addr[19]} {mmio_axi_0_aw_bits_addr[20]} {mmio_axi_0_aw_bits_addr[21]} {mmio_axi_0_aw_bits_addr[22]} {mmio_axi_0_aw_bits_addr[23]} {mmio_axi_0_aw_bits_addr[24]} {mmio_axi_0_aw_bits_addr[25]} {mmio_axi_0_aw_bits_addr[26]} {mmio_axi_0_aw_bits_addr[27]} {mmio_axi_0_aw_bits_addr[28]} {mmio_axi_0_aw_bits_addr[29]} {mmio_axi_0_aw_bits_addr[30]} {mmio_axi_0_aw_bits_addr[31]} {mmio_axi_0_aw_bits_addr[32]} {mmio_axi_0_aw_bits_addr[33]} {mmio_axi_0_aw_bits_addr[34]} {mmio_axi_0_aw_bits_addr[35]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe17]
set_property port_width 8 [get_debug_ports u_ila_0/probe17]
connect_debug_port u_ila_0/probe17 [get_nets [list {mmio_axi_0_ar_bits_len[0]} {mmio_axi_0_ar_bits_len[1]} {mmio_axi_0_ar_bits_len[2]} {mmio_axi_0_ar_bits_len[3]} {mmio_axi_0_ar_bits_len[4]} {mmio_axi_0_ar_bits_len[5]} {mmio_axi_0_ar_bits_len[6]} {mmio_axi_0_ar_bits_len[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe18]
set_property port_width 36 [get_debug_ports u_ila_0/probe18]
connect_debug_port u_ila_0/probe18 [get_nets [list {mmio_axi_0_ar_bits_addr[0]} {mmio_axi_0_ar_bits_addr[1]} {mmio_axi_0_ar_bits_addr[2]} {mmio_axi_0_ar_bits_addr[3]} {mmio_axi_0_ar_bits_addr[4]} {mmio_axi_0_ar_bits_addr[5]} {mmio_axi_0_ar_bits_addr[6]} {mmio_axi_0_ar_bits_addr[7]} {mmio_axi_0_ar_bits_addr[8]} {mmio_axi_0_ar_bits_addr[9]} {mmio_axi_0_ar_bits_addr[10]} {mmio_axi_0_ar_bits_addr[11]} {mmio_axi_0_ar_bits_addr[12]} {mmio_axi_0_ar_bits_addr[13]} {mmio_axi_0_ar_bits_addr[14]} {mmio_axi_0_ar_bits_addr[15]} {mmio_axi_0_ar_bits_addr[16]} {mmio_axi_0_ar_bits_addr[17]} {mmio_axi_0_ar_bits_addr[18]} {mmio_axi_0_ar_bits_addr[19]} {mmio_axi_0_ar_bits_addr[20]} {mmio_axi_0_ar_bits_addr[21]} {mmio_axi_0_ar_bits_addr[22]} {mmio_axi_0_ar_bits_addr[23]} {mmio_axi_0_ar_bits_addr[24]} {mmio_axi_0_ar_bits_addr[25]} {mmio_axi_0_ar_bits_addr[26]} {mmio_axi_0_ar_bits_addr[27]} {mmio_axi_0_ar_bits_addr[28]} {mmio_axi_0_ar_bits_addr[29]} {mmio_axi_0_ar_bits_addr[30]} {mmio_axi_0_ar_bits_addr[31]} {mmio_axi_0_ar_bits_addr[32]} {mmio_axi_0_ar_bits_addr[33]} {mmio_axi_0_ar_bits_addr[34]} {mmio_axi_0_ar_bits_addr[35]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe19]
set_property port_width 1 [get_debug_ports u_ila_0/probe19]
connect_debug_port u_ila_0/probe19 [get_nets [list SERVETop/target/tile/core/io_imem_req_valid]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe20]
set_property port_width 1 [get_debug_ports u_ila_0/probe20]
connect_debug_port u_ila_0/probe20 [get_nets [list SERVETop/target/tile/core/io_imem_resp_ready]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe21]
set_property port_width 1 [get_debug_ports u_ila_0/probe21]
connect_debug_port u_ila_0/probe21 [get_nets [list SERVETop/target/tile/core/io_imem_resp_valid]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe22]
set_property port_width 1 [get_debug_ports u_ila_0/probe22]
connect_debug_port u_ila_0/probe22 [get_nets [list mem_axi_1_ar_ready]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe23]
set_property port_width 1 [get_debug_ports u_ila_0/probe23]
connect_debug_port u_ila_0/probe23 [get_nets [list mem_axi_1_ar_valid]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe24]
set_property port_width 1 [get_debug_ports u_ila_0/probe24]
connect_debug_port u_ila_0/probe24 [get_nets [list mem_axi_1_aw_ready]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe25]
set_property port_width 1 [get_debug_ports u_ila_0/probe25]
connect_debug_port u_ila_0/probe25 [get_nets [list mem_axi_1_aw_valid]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe26]
set_property port_width 1 [get_debug_ports u_ila_0/probe26]
connect_debug_port u_ila_0/probe26 [get_nets [list mem_axi_1_b_ready]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe27]
set_property port_width 1 [get_debug_ports u_ila_0/probe27]
connect_debug_port u_ila_0/probe27 [get_nets [list mem_axi_1_b_valid]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe28]
set_property port_width 1 [get_debug_ports u_ila_0/probe28]
connect_debug_port u_ila_0/probe28 [get_nets [list mem_axi_1_r_ready]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe29]
set_property port_width 1 [get_debug_ports u_ila_0/probe29]
connect_debug_port u_ila_0/probe29 [get_nets [list mem_axi_1_r_valid]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe30]
set_property port_width 1 [get_debug_ports u_ila_0/probe30]
connect_debug_port u_ila_0/probe30 [get_nets [list mem_axi_1_w_ready]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe31]
set_property port_width 1 [get_debug_ports u_ila_0/probe31]
connect_debug_port u_ila_0/probe31 [get_nets [list mem_axi_1_w_valid]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe32]
set_property port_width 1 [get_debug_ports u_ila_0/probe32]
connect_debug_port u_ila_0/probe32 [get_nets [list mmio_axi_0_ar_ready]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe33]
set_property port_width 1 [get_debug_ports u_ila_0/probe33]
connect_debug_port u_ila_0/probe33 [get_nets [list mmio_axi_0_ar_valid]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe34]
set_property port_width 1 [get_debug_ports u_ila_0/probe34]
connect_debug_port u_ila_0/probe34 [get_nets [list mmio_axi_0_aw_ready]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe35]
set_property port_width 1 [get_debug_ports u_ila_0/probe35]
connect_debug_port u_ila_0/probe35 [get_nets [list mmio_axi_0_aw_valid]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe36]
set_property port_width 1 [get_debug_ports u_ila_0/probe36]
connect_debug_port u_ila_0/probe36 [get_nets [list mmio_axi_0_b_ready]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe37]
set_property port_width 1 [get_debug_ports u_ila_0/probe37]
connect_debug_port u_ila_0/probe37 [get_nets [list mmio_axi_0_b_valid]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe38]
set_property port_width 1 [get_debug_ports u_ila_0/probe38]
connect_debug_port u_ila_0/probe38 [get_nets [list mmio_axi_0_r_ready]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe39]
set_property port_width 1 [get_debug_ports u_ila_0/probe39]
connect_debug_port u_ila_0/probe39 [get_nets [list mmio_axi_0_r_valid]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe40]
set_property port_width 1 [get_debug_ports u_ila_0/probe40]
connect_debug_port u_ila_0/probe40 [get_nets [list mmio_axi_0_w_ready]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe41]
set_property port_width 1 [get_debug_ports u_ila_0/probe41]
connect_debug_port u_ila_0/probe41 [get_nets [list mmio_axi_0_w_valid]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]
