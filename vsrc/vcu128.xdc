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

set_property LOC IOB_X0Y205 [get_ports SPI_0_io0_io]
set_property IOSTANDARD LVCMOS18 [get_ports SPI_0_io0_io]

set_property LOC IOB_X0Y206 [get_ports SPI_0_io1_io]
set_property IOSTANDARD LVCMOS18 [get_ports SPI_0_io1_io]

set_property LOC IOB_X0Y203 [get_ports SPI_0_io2_io]
set_property IOSTANDARD LVCMOS18 [get_ports SPI_0_io2_io]

set_property LOC IOB_X0Y204 [get_ports SPI_0_io3_io]
set_property IOSTANDARD LVCMOS18 [get_ports SPI_0_io3_io]

set_property LOC IOB_X0Y202 [get_ports {SPI_0_ss_io}]
set_property IOSTANDARD LVCMOS18 [get_ports {SPI_0_ss_io}]

set_property LOC IOB_X0Y201 [get_ports {SPI_0_sck_io}]
set_property IOSTANDARD LVCMOS18 [get_ports {SPI_0_sck_io}]

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

# Bank: 40 - GPIO_LED3
set_property PACKAGE_PIN BF26 [get_ports {led[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led[4]}]
set_property DRIVE 8 [get_ports {led[4]}]
set_property SLEW SLOW [get_ports {led[4]}]

# Bank: 40 - GPIO_LED3
set_property PACKAGE_PIN BF27 [get_ports {led[5]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led[5]}]
set_property DRIVE 8 [get_ports {led[5]}]
set_property SLEW SLOW [get_ports {led[5]}]