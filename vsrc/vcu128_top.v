`timescale 1 ps / 1 ps

module vcu128_top
(
    inout   SPI_0_io0_io,
    inout   SPI_0_io1_io,
    inout   SPI_0_io2_io,
    inout   SPI_0_io3_io,
    inout   SPI_0_sck_io,
    inout   SPI_0_ss_io,
    output  ddr4_sdram_act_n,
    output  [16:0] ddr4_sdram_adr,
    output  [1:0] ddr4_sdram_ba,
    output  ddr4_sdram_bg,
    output  ddr4_sdram_ck_c,
    output  ddr4_sdram_ck_t,
    output  ddr4_sdram_cke,
    output  [1:0] ddr4_sdram_cs_n,
    inout   [8:0] ddr4_sdram_dm_n,
    inout   [71:0] ddr4_sdram_dq,
    inout   [8:0] ddr4_sdram_dqs_c,
    inout   [8:0] ddr4_sdram_dqs_t,
    output  ddr4_sdram_odt,
    output  ddr4_sdram_reset_n,
    input   default_100mhz_clk_clk_n,
    input   default_100mhz_clk_clk_p,
    input   reset,
    input   rs232_uart_0_rxd,
    output  rs232_uart_0_txd,
    output [7:0]            led
);



wire    cpu_clk;
wire    cpu_reset;
wire    ddr4_init_copmlete;
wire    flash_int;
wire    uart_int;

(* mark_debug="true" *) wire           mem_axi_1_aw_ready;
(* mark_debug="true" *) wire           mem_axi_1_aw_valid;
wire    [3:0]  mem_axi_1_aw_bits_id;
(* mark_debug="true" *) wire    [35:0] mem_axi_1_aw_bits_addr;
(* mark_debug="true" *) wire    [7:0]  mem_axi_1_aw_bits_len;
(* mark_debug="true" *) wire    [2:0]  mem_axi_1_aw_bits_size;
wire    [1:0]  mem_axi_1_aw_bits_burst;
wire           mem_axi_1_aw_bits_lock;
wire    [3:0]  mem_axi_1_aw_bits_cache;
wire    [2:0]  mem_axi_1_aw_bits_prot;
wire    [3:0]  mem_axi_1_aw_bits_qos;
(* mark_debug="true" *) wire           mem_axi_1_w_ready;
(* mark_debug="true" *) wire           mem_axi_1_w_valid;
(* mark_debug="true" *) wire    [63:0] mem_axi_1_w_bits_data;
wire    [7:0]  mem_axi_1_w_bits_strb;
wire           mem_axi_1_w_bits_last;
(* mark_debug="true" *) wire           mem_axi_1_b_ready;
(* mark_debug="true" *) wire           mem_axi_1_b_valid;
wire    [3:0]  mem_axi_1_b_bits_id;
wire    [1:0]  mem_axi_1_b_bits_resp;
(* mark_debug="true" *) wire           mem_axi_1_ar_ready;
(* mark_debug="true" *) wire           mem_axi_1_ar_valid;
wire    [3:0]  mem_axi_1_ar_bits_id;
(* mark_debug="true" *) wire    [35:0] mem_axi_1_ar_bits_addr;
(* mark_debug="true" *) wire    [7:0]  mem_axi_1_ar_bits_len;
(* mark_debug="true" *) wire    [2:0]  mem_axi_1_ar_bits_size;
wire    [1:0]  mem_axi_1_ar_bits_burst;
wire           mem_axi_1_ar_bits_lock;
wire    [3:0]  mem_axi_1_ar_bits_cache;
wire    [2:0]  mem_axi_1_ar_bits_prot;
wire    [3:0]  mem_axi_1_ar_bits_qos;
(* mark_debug="true" *) wire           mem_axi_1_r_ready;
(* mark_debug="true" *) wire           mem_axi_1_r_valid;
wire    [3:0]  mem_axi_1_r_bits_id;
(* mark_debug="true" *) wire    [63:0] mem_axi_1_r_bits_data;
wire    [1:0]  mem_axi_1_r_bits_resp;
wire           mem_axi_1_r_bits_last;

(* mark_debug="true" *) wire           mmio_axi_0_aw_ready;
(* mark_debug="true" *) wire           mmio_axi_0_aw_valid;
wire    [3:0]  mmio_axi_0_aw_bits_id;
(* mark_debug="true" *) wire    [35:0] mmio_axi_0_aw_bits_addr;
(* mark_debug="true" *) wire    [7:0]  mmio_axi_0_aw_bits_len;
(* mark_debug="true" *) wire    [2:0]  mmio_axi_0_aw_bits_size;
wire    [1:0]  mmio_axi_0_aw_bits_burst;
wire           mmio_axi_0_aw_bits_lock;
wire    [3:0]  mmio_axi_0_aw_bits_cache;
wire    [2:0]  mmio_axi_0_aw_bits_prot;
wire    [3:0]  mmio_axi_0_aw_bits_qos;
(* mark_debug="true" *) wire           mmio_axi_0_w_ready;
(* mark_debug="true" *) wire           mmio_axi_0_w_valid;
(* mark_debug="true" *) wire    [63:0] mmio_axi_0_w_bits_data;
wire    [7:0]  mmio_axi_0_w_bits_strb;
wire           mmio_axi_0_w_bits_last;
(* mark_debug="true" *) wire           mmio_axi_0_b_ready;
(* mark_debug="true" *) wire           mmio_axi_0_b_valid;
wire    [3:0]  mmio_axi_0_b_bits_id;
wire    [1:0]  mmio_axi_0_b_bits_resp;
(* mark_debug="true" *) wire           mmio_axi_0_ar_ready;
(* mark_debug="true" *) wire           mmio_axi_0_ar_valid;
wire    [3:0]  mmio_axi_0_ar_bits_id;
(* mark_debug="true" *) wire    [35:0] mmio_axi_0_ar_bits_addr;
(* mark_debug="true" *) wire    [7:0]  mmio_axi_0_ar_bits_len;
(* mark_debug="true" *) wire    [2:0]  mmio_axi_0_ar_bits_size;
wire    [1:0]  mmio_axi_0_ar_bits_burst;
wire           mmio_axi_0_ar_bits_lock;
wire    [3:0]  mmio_axi_0_ar_bits_cache;
wire    [2:0]  mmio_axi_0_ar_bits_prot;
wire    [3:0]  mmio_axi_0_ar_bits_qos;
(* mark_debug="true" *) wire           mmio_axi_0_r_ready;
(* mark_debug="true" *) wire           mmio_axi_0_r_valid;
wire    [3:0]  mmio_axi_0_r_bits_id;
(* mark_debug="true" *) wire    [63:0] mmio_axi_0_r_bits_data;
wire    [1:0]  mmio_axi_0_r_bits_resp;
wire           mmio_axi_0_r_bits_last;

assign led[0] = cpu_reset | ~ddr4_init_copmlete;
assign led[1] = uart_int;
assign led[2] = flash_int;

top_wrapper top_wrapper(
    .SPI_0_io0_io                   (SPI_0_io0_io),
    .SPI_0_io1_io                   (SPI_0_io1_io),
    .SPI_0_io2_io                   (SPI_0_io2_io),
    .SPI_0_io3_io                   (SPI_0_io3_io),
    .SPI_0_sck_io                   (SPI_0_sck_io),
    .SPI_0_ss_io                    (SPI_0_ss_io),
    .c0_init_calib_complete_0       (ddr4_init_copmlete),
    .cpu_clk                        (cpu_clk),
    .cpu_reset                      (cpu_reset),
    .ddr4_sdram_act_n               (ddr4_sdram_act_n),
    .ddr4_sdram_adr                 (ddr4_sdram_adr),
    .ddr4_sdram_ba                  (ddr4_sdram_ba),
    .ddr4_sdram_bg                  (ddr4_sdram_bg),
    .ddr4_sdram_ck_c                (ddr4_sdram_ck_c),
    .ddr4_sdram_ck_t                (ddr4_sdram_ck_t),
    .ddr4_sdram_cke                 (ddr4_sdram_cke),
    .ddr4_sdram_cs_n                (ddr4_sdram_cs_n),
    .ddr4_sdram_dm_n                (ddr4_sdram_dm_n),
    .ddr4_sdram_dq                  (ddr4_sdram_dq),
    .ddr4_sdram_dqs_c               (ddr4_sdram_dqs_c),
    .ddr4_sdram_dqs_t               (ddr4_sdram_dqs_t),
    .ddr4_sdram_odt                 (ddr4_sdram_odt),
    .ddr4_sdram_reset_n             (ddr4_sdram_reset_n),
    .default_100mhz_clk_clk_n       (default_100mhz_clk_clk_n),
    .default_100mhz_clk_clk_p       (default_100mhz_clk_clk_p),
    .interrupt_0                    (uart_int),
    .ip2intc_irpt_0                 (flash_int),

    .mem_S_araddr                   (mem_axi_1_ar_bits_addr),
    .mem_S_arburst                  (mem_axi_1_ar_bits_burst),
    .mem_S_arid                     (mem_axi_1_ar_bits_id),
    .mem_S_arcache                  (mem_axi_1_ar_bits_cache),
    .mem_S_arlen                    (mem_axi_1_ar_bits_len),
    .mem_S_arlock                   (mem_axi_1_ar_bits_lock),
    .mem_S_arprot                   (mem_axi_1_ar_bits_prot),
    .mem_S_arqos                    (mem_axi_1_ar_bits_qos),
    .mem_S_arready                  (mem_axi_1_ar_ready),
    .mem_S_arsize                   (mem_axi_1_ar_bits_size),
    .mem_S_arvalid                  (mem_axi_1_ar_valid),
    .mem_S_awid                     (mem_axi_1_aw_bits_id),
    .mem_S_awaddr                   (mem_axi_1_aw_bits_addr),
    .mem_S_awburst                  (mem_axi_1_aw_bits_burst),
    .mem_S_awcache                  (mem_axi_1_aw_bits_cache),
    .mem_S_awlen                    (mem_axi_1_aw_bits_len),
    .mem_S_awlock                   (mem_axi_1_aw_bits_lock),
    .mem_S_awprot                   (mem_axi_1_aw_bits_prot),
    .mem_S_awqos                    (mem_axi_1_aw_bits_qos),
    .mem_S_awready                  (mem_axi_1_aw_ready),
    .mem_S_awsize                   (mem_axi_1_aw_bits_size),
    .mem_S_awvalid                  (mem_axi_1_aw_valid),
    .mem_S_bready                   (mem_axi_1_b_ready),
    .mem_S_bid                      (mem_axi_1_b_bits_id),
    .mem_S_bresp                    (mem_axi_1_b_bits_resp),
    .mem_S_bvalid                   (mem_axi_1_b_valid),
    .mem_S_rdata                    (mem_axi_1_r_bits_data),
    .mem_S_rid                      (mem_axi_1_r_bits_id),
    .mem_S_rlast                    (mem_axi_1_r_bits_last),
    .mem_S_rready                   (mem_axi_1_r_ready),
    .mem_S_rresp                    (mem_axi_1_r_bits_resp),
    .mem_S_rvalid                   (mem_axi_1_r_valid),
    .mem_S_wdata                    (mem_axi_1_w_bits_data),
    .mem_S_wlast                    (mem_axi_1_w_bits_last),
    .mem_S_wready                   (mem_axi_1_w_ready),
    .mem_S_wstrb                    (mem_axi_1_w_bits_strb),
    .mem_S_wvalid                   (mem_axi_1_w_valid),

    .mmio_S_arid                    (mmio_axi_0_ar_bits_id),
    .mmio_S_araddr                  (mmio_axi_0_ar_bits_addr),
    .mmio_S_arburst                 (mmio_axi_0_ar_bits_burst),
    .mmio_S_arcache                 (mmio_axi_0_ar_bits_cache),
    .mmio_S_arlen                   (mmio_axi_0_ar_bits_len),
    .mmio_S_arlock                  (mmio_axi_0_ar_bits_lock),
    .mmio_S_arprot                  (mmio_axi_0_ar_bits_prot),
    .mmio_S_arqos                   (mmio_axi_0_ar_bits_qos),
    .mmio_S_arready                 (mmio_axi_0_ar_ready),
    .mmio_S_arsize                  (mmio_axi_0_ar_bits_size),
    .mmio_S_arvalid                 (mmio_axi_0_ar_valid),
    .mmio_S_awaddr                  (mmio_axi_0_aw_bits_addr),
    .mmio_S_awburst                 (mmio_axi_0_aw_bits_burst),
    .mmio_S_awcache                 (mmio_axi_0_aw_bits_cache),
    .mmio_S_awid                    (mmio_axi_0_aw_bits_id),
    .mmio_S_awlen                   (mmio_axi_0_aw_bits_len),
    .mmio_S_awlock                  (mmio_axi_0_aw_bits_lock),
    .mmio_S_awprot                  (mmio_axi_0_aw_bits_prot),
    .mmio_S_awqos                   (mmio_axi_0_aw_bits_qos),
    .mmio_S_awready                 (mmio_axi_0_aw_ready),
    .mmio_S_awsize                  (mmio_axi_0_aw_bits_size),
    .mmio_S_awvalid                 (mmio_axi_0_aw_valid),
    .mmio_S_bready                  (mmio_axi_0_b_ready),
    .mmio_S_bresp                   (mmio_axi_0_b_bits_resp),
    .mmio_S_bid                     (mmio_axi_0_b_bits_id),
    .mmio_S_bvalid                  (mmio_axi_0_b_valid),
    .mmio_S_rdata                   (mmio_axi_0_r_bits_data),
    .mmio_S_rlast                   (mmio_axi_0_r_bits_last),
    .mmio_S_rid                     (mmio_axi_0_r_bits_id),
    .mmio_S_rready                  (mmio_axi_0_r_ready),
    .mmio_S_rresp                   (mmio_axi_0_r_bits_resp),
    .mmio_S_rvalid                  (mmio_axi_0_r_valid),
    .mmio_S_wdata                   (mmio_axi_0_w_bits_data),
    .mmio_S_wlast                   (mmio_axi_0_w_bits_last),
    .mmio_S_wready                  (mmio_axi_0_w_ready),
    .mmio_S_wstrb                   (mmio_axi_0_w_bits_strb),
    .mmio_S_wvalid                  (mmio_axi_0_w_valid),
    .reset                          (reset),
    .rs232_uart_0_rxd               (rs232_uart_0_rxd),
    .rs232_uart_0_txd               (rs232_uart_0_txd)
);

SERVETop SERVETop(
  .clock (cpu_clk), // @[:freedom.serve.SERVEiFPGAConfig.fir@561594.4]
  .reset (cpu_reset | ~ddr4_init_copmlete), // @[:freedom.serve.SERVEiFPGAConfig.fir@561595.4]
  /*. io_ps_axi_slave_aw_ready (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561597.4]
  .io_ps_axi_slave_aw_valid ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561597.4]
  .io_ps_axi_slave_aw_bits_id ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561597.4]
  .io_ps_axi_slave_aw_bits_addr ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561597.4]
  .io_ps_axi_slave_aw_bits_len ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561597.4]
  .io_ps_axi_slave_aw_bits_size ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561597.4]
  .io_ps_axi_slave_aw_bits_burst ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561597.4]
  .io_ps_axi_slave_aw_bits_lock ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561597.4]
  .io_ps_axi_slave_aw_bits_cache ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561597.4]
  .io_ps_axi_slave_aw_bits_prot ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561597.4]
  .io_ps_axi_slave_aw_bits_qos ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561597.4]
  .io_ps_axi_slave_w_ready (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561597.4]
  .io_ps_axi_slave_w_valid ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561597.4]
  .io_ps_axi_slave_w_bits_data ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561597.4]
  .io_ps_axi_slave_w_bits_strb ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561597.4]
  .io_ps_axi_slave_w_bits_last ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561597.4]
  .io_ps_axi_slave_b_ready (1'b1), // @[:freedom.serve.SERVEiFPGAConfig.fir@561597.4]
  .io_ps_axi_slave_b_valid (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561597.4]
  .io_ps_axi_slave_b_bits_id (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561597.4]
  .io_ps_axi_slave_b_bits_resp (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561597.4]
  .io_ps_axi_slave_ar_ready (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561597.4]
  .io_ps_axi_slave_ar_valid ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561597.4]
  .io_ps_axi_slave_ar_bits_id ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561597.4]
  .io_ps_axi_slave_ar_bits_addr ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561597.4]
  .io_ps_axi_slave_ar_bits_len ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561597.4]
  .io_ps_axi_slave_ar_bits_size ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561597.4]
  .io_ps_axi_slave_ar_bits_burst ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561597.4]
  .io_ps_axi_slave_ar_bits_lock ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561597.4]
  .io_ps_axi_slave_ar_bits_cache ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561597.4]
  .io_ps_axi_slave_ar_bits_prot ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561597.4]
  .io_ps_axi_slave_ar_bits_qos ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561597.4]
  .io_ps_axi_slave_r_ready ('d1), // @[:freedom.serve.SERVEiFPGAConfig.fir@561597.4]
  .io_ps_axi_slave_r_valid (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561597.4]
  .io_ps_axi_slave_r_bits_id (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561597.4]
  .io_ps_axi_slave_r_bits_data (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561597.4]
  .io_ps_axi_slave_r_bits_resp (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561597.4]
  .io_ps_axi_slave_r_bits_last (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561597.4]*/
  .io_mac_int ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561597.4]
  .io_flash_int ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561597.4]
  .io_uart_int ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561597.4]
  .io_usb_int ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561597.4]
  //.io_jtag_TCK ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561597.4]
  //.io_jtag_TMS ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561597.4]
  //.io_jtag_TDI ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561597.4]
  //.io_jtag_TDO_data ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561597.4]
  //.io_jtag_TDO_driven ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561597.4]
  //.io_gpio_btns ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561597.4]
  //.io_gpio_sws ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561597.4]
  .mem_axi_0_aw_ready ('d1), // @[:freedom.serve.SERVEiFPGAConfig.fir@561598.4]
  .mem_axi_0_aw_valid (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561598.4]
  .mem_axi_0_aw_bits_id (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561598.4]
  .mem_axi_0_aw_bits_addr (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561598.4]
  .mem_axi_0_aw_bits_len (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561598.4]
  .mem_axi_0_aw_bits_size (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561598.4]
  .mem_axi_0_aw_bits_burst (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561598.4]
  .mem_axi_0_aw_bits_lock (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561598.4]
  .mem_axi_0_aw_bits_cache (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561598.4]
  .mem_axi_0_aw_bits_prot (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561598.4]
  .mem_axi_0_aw_bits_qos (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561598.4]
  .mem_axi_0_w_ready ('d1), // @[:freedom.serve.SERVEiFPGAConfig.fir@561598.4]
  .mem_axi_0_w_valid (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561598.4]
  .mem_axi_0_w_bits_data (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561598.4]
  .mem_axi_0_w_bits_strb (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561598.4]
  .mem_axi_0_w_bits_last (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561598.4]
  .mem_axi_0_b_ready (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561598.4]
  .mem_axi_0_b_valid ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561598.4]
  .mem_axi_0_b_bits_id ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561598.4]
  .mem_axi_0_b_bits_resp ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561598.4]
  .mem_axi_0_ar_ready ('d1), // @[:freedom.serve.SERVEiFPGAConfig.fir@561598.4]
  .mem_axi_0_ar_valid (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561598.4]
  .mem_axi_0_ar_bits_id (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561598.4]
  .mem_axi_0_ar_bits_addr (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561598.4]
  .mem_axi_0_ar_bits_len (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561598.4]
  .mem_axi_0_ar_bits_size (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561598.4]
  .mem_axi_0_ar_bits_burst (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561598.4]
  .mem_axi_0_ar_bits_lock (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561598.4]
  .mem_axi_0_ar_bits_cache (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561598.4]
  .mem_axi_0_ar_bits_prot (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561598.4]
  .mem_axi_0_ar_bits_qos (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561598.4]
  .mem_axi_0_r_ready (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561598.4]
  .mem_axi_0_r_valid ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561598.4]
  .mem_axi_0_r_bits_id ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561598.4]
  .mem_axi_0_r_bits_data ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561598.4]
  .mem_axi_0_r_bits_resp ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561598.4]
  .mem_axi_0_r_bits_last ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561598.4]
  .mem_axi_1_aw_ready (mem_axi_1_aw_ready), // @[:freedom.serve.SERVEiFPGAConfig.fir@561599.4]
  .mem_axi_1_aw_valid (mem_axi_1_aw_valid), // @[:freedom.serve.SERVEiFPGAConfig.fir@561599.4]
  .mem_axi_1_aw_bits_id (mem_axi_1_aw_bits_id), // @[:freedom.serve.SERVEiFPGAConfig.fir@561599.4]
  .mem_axi_1_aw_bits_addr (mem_axi_1_aw_bits_addr), // @[:freedom.serve.SERVEiFPGAConfig.fir@561599.4]
  .mem_axi_1_aw_bits_len (mem_axi_1_aw_bits_len), // @[:freedom.serve.SERVEiFPGAConfig.fir@561599.4]
  .mem_axi_1_aw_bits_size (mem_axi_1_aw_bits_size), // @[:freedom.serve.SERVEiFPGAConfig.fir@561599.4]
  .mem_axi_1_aw_bits_burst (mem_axi_1_aw_bits_burst), // @[:freedom.serve.SERVEiFPGAConfig.fir@561599.4]
  .mem_axi_1_aw_bits_lock (mem_axi_1_aw_bits_lock), // @[:freedom.serve.SERVEiFPGAConfig.fir@561599.4]
  .mem_axi_1_aw_bits_cache (mem_axi_1_aw_bits_cache), // @[:freedom.serve.SERVEiFPGAConfig.fir@561599.4]
  .mem_axi_1_aw_bits_prot (mem_axi_1_aw_bits_prot), // @[:freedom.serve.SERVEiFPGAConfig.fir@561599.4]
  .mem_axi_1_aw_bits_qos (mem_axi_1_aw_bits_qos), // @[:freedom.serve.SERVEiFPGAConfig.fir@561599.4]
  .mem_axi_1_w_ready (mem_axi_1_w_ready), // @[:freedom.serve.SERVEiFPGAConfig.fir@561599.4]
  .mem_axi_1_w_valid (mem_axi_1_w_valid), // @[:freedom.serve.SERVEiFPGAConfig.fir@561599.4]
  .mem_axi_1_w_bits_data (mem_axi_1_w_bits_data), // @[:freedom.serve.SERVEiFPGAConfig.fir@561599.4]
  .mem_axi_1_w_bits_strb (mem_axi_1_w_bits_strb), // @[:freedom.serve.SERVEiFPGAConfig.fir@561599.4]
  .mem_axi_1_w_bits_last (mem_axi_1_w_bits_last), // @[:freedom.serve.SERVEiFPGAConfig.fir@561599.4]
  .mem_axi_1_b_ready (mem_axi_1_b_ready), // @[:freedom.serve.SERVEiFPGAConfig.fir@561599.4]
  .mem_axi_1_b_valid (mem_axi_1_b_valid), // @[:freedom.serve.SERVEiFPGAConfig.fir@561599.4]
  .mem_axi_1_b_bits_id (mem_axi_1_b_bits_id), // @[:freedom.serve.SERVEiFPGAConfig.fir@561599.4]
  .mem_axi_1_b_bits_resp (mem_axi_1_b_bits_resp), // @[:freedom.serve.SERVEiFPGAConfig.fir@561599.4]
  .mem_axi_1_ar_ready (mem_axi_1_ar_ready), // @[:freedom.serve.SERVEiFPGAConfig.fir@561599.4]
  .mem_axi_1_ar_valid (mem_axi_1_ar_valid), // @[:freedom.serve.SERVEiFPGAConfig.fir@561599.4]
  .mem_axi_1_ar_bits_id (mem_axi_1_ar_bits_id), // @[:freedom.serve.SERVEiFPGAConfig.fir@561599.4]
  .mem_axi_1_ar_bits_addr (mem_axi_1_ar_bits_addr), // @[:freedom.serve.SERVEiFPGAConfig.fir@561599.4]
  .mem_axi_1_ar_bits_len (mem_axi_1_ar_bits_len), // @[:freedom.serve.SERVEiFPGAConfig.fir@561599.4]
  .mem_axi_1_ar_bits_size (mem_axi_1_ar_bits_size), // @[:freedom.serve.SERVEiFPGAConfig.fir@561599.4]
  .mem_axi_1_ar_bits_burst (mem_axi_1_ar_bits_burst), // @[:freedom.serve.SERVEiFPGAConfig.fir@561599.4]
  .mem_axi_1_ar_bits_lock (mem_axi_1_ar_bits_lock), // @[:freedom.serve.SERVEiFPGAConfig.fir@561599.4]
  .mem_axi_1_ar_bits_cache (mem_axi_1_ar_bits_cache), // @[:freedom.serve.SERVEiFPGAConfig.fir@561599.4]
  .mem_axi_1_ar_bits_prot (mem_axi_1_ar_bits_prot), // @[:freedom.serve.SERVEiFPGAConfig.fir@561599.4]
  .mem_axi_1_ar_bits_qos (mem_axi_1_ar_bits_qos), // @[:freedom.serve.SERVEiFPGAConfig.fir@561599.4]
  .mem_axi_1_r_ready (mem_axi_1_r_ready), // @[:freedom.serve.SERVEiFPGAConfig.fir@561599.4]
  .mem_axi_1_r_valid (mem_axi_1_r_valid), // @[:freedom.serve.SERVEiFPGAConfig.fir@561599.4]
  .mem_axi_1_r_bits_id (mem_axi_1_r_bits_id), // @[:freedom.serve.SERVEiFPGAConfig.fir@561599.4]
  .mem_axi_1_r_bits_data (mem_axi_1_r_bits_data), // @[:freedom.serve.SERVEiFPGAConfig.fir@561599.4]
  .mem_axi_1_r_bits_resp (mem_axi_1_r_bits_resp), // @[:freedom.serve.SERVEiFPGAConfig.fir@561599.4]
  .mem_axi_1_r_bits_last (mem_axi_1_r_bits_last), // @[:freedom.serve.SERVEiFPGAConfig.fir@561599.4]
  /*.  mem_axi_2_aw_ready ('d1), // @[:freedom.serve.SERVEiFPGAConfig.fir@561600.4]
  .mem_axi_2_aw_valid (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561600.4]
  .mem_axi_2_aw_bits_id (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561600.4]
  .mem_axi_2_aw_bits_addr (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561600.4]
  .mem_axi_2_aw_bits_len (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561600.4]
  .mem_axi_2_aw_bits_size (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561600.4]
  .mem_axi_2_aw_bits_burst (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561600.4]
  .mem_axi_2_aw_bits_lock (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561600.4]
  .mem_axi_2_aw_bits_cache (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561600.4]
  .mem_axi_2_aw_bits_prot (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561600.4]
  .mem_axi_2_aw_bits_qos (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561600.4]
  .mem_axi_2_w_ready ('d1), // @[:freedom.serve.SERVEiFPGAConfig.fir@561600.4]
  .mem_axi_2_w_valid (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561600.4]
  .mem_axi_2_w_bits_data (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561600.4]
  .mem_axi_2_w_bits_strb (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561600.4]
  .mem_axi_2_w_bits_last (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561600.4]
  .mem_axi_2_b_ready (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561600.4]
  .mem_axi_2_b_valid ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561600.4]
  .mem_axi_2_b_bits_id ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561600.4]
  .mem_axi_2_b_bits_resp ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561600.4]
  .mem_axi_2_ar_ready ('d1), // @[:freedom.serve.SERVEiFPGAConfig.fir@561600.4]
  .mem_axi_2_ar_valid (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561600.4]
  .mem_axi_2_ar_bits_id (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561600.4]
  .mem_axi_2_ar_bits_addr (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561600.4]
  .mem_axi_2_ar_bits_len (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561600.4]
  .mem_axi_2_ar_bits_size (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561600.4]
  .mem_axi_2_ar_bits_burst (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561600.4]
  .mem_axi_2_ar_bits_lock (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561600.4]
  .mem_axi_2_ar_bits_cache (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561600.4]
  .mem_axi_2_ar_bits_prot (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561600.4]
  .mem_axi_2_ar_bits_qos (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561600.4]
  .mem_axi_2_r_ready (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561600.4]
  .mem_axi_2_r_valid ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561600.4]
  .mem_axi_2_r_bits_id ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561600.4]
  .mem_axi_2_r_bits_data ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561600.4]
  .mem_axi_2_r_bits_resp ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561600.4]
  .mem_axi_2_r_bits_last ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561600.4]*/
  .mmio_axi_0_aw_ready (mmio_axi_0_aw_ready), // @[:freedom.serve.SERVEiFPGAConfig.fir@561601.4]
  .mmio_axi_0_aw_valid (mmio_axi_0_aw_valid), // @[:freedom.serve.SERVEiFPGAConfig.fir@561601.4]
  .mmio_axi_0_aw_bits_id (mmio_axi_0_aw_bits_id), // @[:freedom.serve.SERVEiFPGAConfig.fir@561601.4]
  .mmio_axi_0_aw_bits_addr (mmio_axi_0_aw_bits_addr), // @[:freedom.serve.SERVEiFPGAConfig.fir@561601.4]
  .mmio_axi_0_aw_bits_len (mmio_axi_0_aw_bits_len), // @[:freedom.serve.SERVEiFPGAConfig.fir@561601.4]
  .mmio_axi_0_aw_bits_size (mmio_axi_0_aw_bits_size), // @[:freedom.serve.SERVEiFPGAConfig.fir@561601.4]
  .mmio_axi_0_aw_bits_burst (mmio_axi_0_aw_bits_burst), // @[:freedom.serve.SERVEiFPGAConfig.fir@561601.4]
  .mmio_axi_0_aw_bits_lock (mmio_axi_0_aw_bits_lock), // @[:freedom.serve.SERVEiFPGAConfig.fir@561601.4]
  .mmio_axi_0_aw_bits_cache (mmio_axi_0_aw_bits_cache), // @[:freedom.serve.SERVEiFPGAConfig.fir@561601.4]
  .mmio_axi_0_aw_bits_prot (mmio_axi_0_aw_bits_prot), // @[:freedom.serve.SERVEiFPGAConfig.fir@561601.4]
  .mmio_axi_0_aw_bits_qos (mmio_axi_0_aw_bits_qos), // @[:freedom.serve.SERVEiFPGAConfig.fir@561601.4]
  .mmio_axi_0_w_ready (mmio_axi_0_w_ready), // @[:freedom.serve.SERVEiFPGAConfig.fir@561601.4]
  .mmio_axi_0_w_valid (mmio_axi_0_w_valid), // @[:freedom.serve.SERVEiFPGAConfig.fir@561601.4]
  .mmio_axi_0_w_bits_data (mmio_axi_0_w_bits_data), // @[:freedom.serve.SERVEiFPGAConfig.fir@561601.4]
  .mmio_axi_0_w_bits_strb (mmio_axi_0_w_bits_strb), // @[:freedom.serve.SERVEiFPGAConfig.fir@561601.4]
  .mmio_axi_0_w_bits_last (mmio_axi_0_w_bits_last), // @[:freedom.serve.SERVEiFPGAConfig.fir@561601.4]
  .mmio_axi_0_b_ready (mmio_axi_0_b_ready), // @[:freedom.serve.SERVEiFPGAConfig.fir@561601.4]
  .mmio_axi_0_b_valid (mmio_axi_0_b_valid), // @[:freedom.serve.SERVEiFPGAConfig.fir@561601.4]
  .mmio_axi_0_b_bits_id (mmio_axi_0_b_bits_id), // @[:freedom.serve.SERVEiFPGAConfig.fir@561601.4]
  .mmio_axi_0_b_bits_resp (mmio_axi_0_b_bits_resp), // @[:freedom.serve.SERVEiFPGAConfig.fir@561601.4]
  .mmio_axi_0_ar_ready (mmio_axi_0_ar_ready), // @[:freedom.serve.SERVEiFPGAConfig.fir@561601.4]
  .mmio_axi_0_ar_valid (mmio_axi_0_ar_valid), // @[:freedom.serve.SERVEiFPGAConfig.fir@561601.4]
  .mmio_axi_0_ar_bits_id (mmio_axi_0_ar_bits_id), // @[:freedom.serve.SERVEiFPGAConfig.fir@561601.4]
  .mmio_axi_0_ar_bits_addr (mmio_axi_0_ar_bits_addr), // @[:freedom.serve.SERVEiFPGAConfig.fir@561601.4]
  .mmio_axi_0_ar_bits_len (mmio_axi_0_ar_bits_len), // @[:freedom.serve.SERVEiFPGAConfig.fir@561601.4]
  .mmio_axi_0_ar_bits_size (mmio_axi_0_ar_bits_size), // @[:freedom.serve.SERVEiFPGAConfig.fir@561601.4]
  .mmio_axi_0_ar_bits_burst (mmio_axi_0_ar_bits_burst), // @[:freedom.serve.SERVEiFPGAConfig.fir@561601.4]
  .mmio_axi_0_ar_bits_lock (mmio_axi_0_ar_bits_lock), // @[:freedom.serve.SERVEiFPGAConfig.fir@561601.4]
  .mmio_axi_0_ar_bits_cache (mmio_axi_0_ar_bits_cache), // @[:freedom.serve.SERVEiFPGAConfig.fir@561601.4]
  .mmio_axi_0_ar_bits_prot (mmio_axi_0_ar_bits_prot), // @[:freedom.serve.SERVEiFPGAConfig.fir@561601.4]
  .mmio_axi_0_ar_bits_qos (mmio_axi_0_ar_bits_qos), // @[:freedom.serve.SERVEiFPGAConfig.fir@561601.4]
  .mmio_axi_0_r_ready (mmio_axi_0_r_ready), // @[:freedom.serve.SERVEiFPGAConfig.fir@561601.4]
  .mmio_axi_0_r_valid (mmio_axi_0_r_valid), // @[:freedom.serve.SERVEiFPGAConfig.fir@561601.4]
  .mmio_axi_0_r_bits_id (mmio_axi_0_r_bits_id), // @[:freedom.serve.SERVEiFPGAConfig.fir@561601.4]
  .mmio_axi_0_r_bits_data (mmio_axi_0_r_bits_data), // @[:freedom.serve.SERVEiFPGAConfig.fir@561601.4]
  .mmio_axi_0_r_bits_resp (mmio_axi_0_r_bits_resp), // @[:freedom.serve.SERVEiFPGAConfig.fir@561601.4]
  .mmio_axi_0_r_bits_last (mmio_axi_0_r_bits_last), // @[:freedom.serve.SERVEiFPGAConfig.fir@561601.4]
  . front_axi_0_aw_ready (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561602.4]
  .front_axi_0_aw_valid ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561602.4]
  .front_axi_0_aw_bits_id ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561602.4]
  .front_axi_0_aw_bits_addr ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561602.4]
  .front_axi_0_aw_bits_len ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561602.4]
  .front_axi_0_aw_bits_size ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561602.4]
  .front_axi_0_aw_bits_burst ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561602.4]
  .front_axi_0_aw_bits_lock ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561602.4]
  .front_axi_0_aw_bits_cache ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561602.4]
  .front_axi_0_aw_bits_prot ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561602.4]
  .front_axi_0_aw_bits_qos ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561602.4]
  .front_axi_0_w_ready (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561602.4]
  .front_axi_0_w_valid ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561602.4]
  .front_axi_0_w_bits_data ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561602.4]
  .front_axi_0_w_bits_strb ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561602.4]
  .front_axi_0_w_bits_last ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561602.4]
  .front_axi_0_b_ready ('d1), // @[:freedom.serve.SERVEiFPGAConfig.fir@561602.4]
  .front_axi_0_b_valid (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561602.4]
  .front_axi_0_b_bits_id (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561602.4]
  .front_axi_0_b_bits_resp (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561602.4]
  .front_axi_0_ar_ready (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561602.4]
  .front_axi_0_ar_valid ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561602.4]
  .front_axi_0_ar_bits_id ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561602.4]
  .front_axi_0_ar_bits_addr ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561602.4]
  .front_axi_0_ar_bits_len ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561602.4]
  .front_axi_0_ar_bits_size ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561602.4]
  .front_axi_0_ar_bits_burst ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561602.4]
  .front_axi_0_ar_bits_lock ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561602.4]
  .front_axi_0_ar_bits_cache ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561602.4]
  .front_axi_0_ar_bits_prot ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561602.4]
  .front_axi_0_ar_bits_qos ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561602.4]
  .front_axi_0_r_ready ('d1), // @[:freedom.serve.SERVEiFPGAConfig.fir@561602.4]
  .front_axi_0_r_valid (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561602.4]
  .front_axi_0_r_bits_id (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561602.4]
  .front_axi_0_r_bits_data (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561602.4]
  .front_axi_0_r_bits_resp (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561602.4]
  .front_axi_0_r_bits_last (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561602.4]
  .front_axi_1_aw_ready (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561603.4]
  .front_axi_1_aw_valid ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561603.4]
  .front_axi_1_aw_bits_id ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561603.4]
  .front_axi_1_aw_bits_addr ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561603.4]
  .front_axi_1_aw_bits_len ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561603.4]
  .front_axi_1_aw_bits_size ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561603.4]
  .front_axi_1_aw_bits_burst ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561603.4]
  .front_axi_1_aw_bits_lock ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561603.4]
  .front_axi_1_aw_bits_cache ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561603.4]
  .front_axi_1_aw_bits_prot ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561603.4]
  .front_axi_1_aw_bits_qos ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561603.4]
  .front_axi_1_w_ready (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561603.4]
  .front_axi_1_w_valid ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561603.4]
  .front_axi_1_w_bits_data ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561603.4]
  .front_axi_1_w_bits_strb ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561603.4]
  .front_axi_1_w_bits_last ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561603.4]
  .front_axi_1_b_ready ('d1), // @[:freedom.serve.SERVEiFPGAConfig.fir@561603.4]
  .front_axi_1_b_valid (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561603.4]
  .front_axi_1_b_bits_id (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561603.4]
  .front_axi_1_b_bits_resp (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561603.4]
  .front_axi_1_ar_ready (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561603.4]
  .front_axi_1_ar_valid ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561603.4]
  .front_axi_1_ar_bits_id ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561603.4]
  .front_axi_1_ar_bits_addr ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561603.4]
  .front_axi_1_ar_bits_len ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561603.4]
  .front_axi_1_ar_bits_size ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561603.4]
  .front_axi_1_ar_bits_burst ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561603.4]
  .front_axi_1_ar_bits_lock ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561603.4]
  .front_axi_1_ar_bits_cache ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561603.4]
  .front_axi_1_ar_bits_prot ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561603.4]
  .front_axi_1_ar_bits_qos ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561603.4]
  .front_axi_1_r_ready ('d1), // @[:freedom.serve.SERVEiFPGAConfig.fir@561603.4]
  .front_axi_1_r_valid (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561603.4]
  .front_axi_1_r_bits_id (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561603.4]
  .front_axi_1_r_bits_data (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561603.4]
  .front_axi_1_r_bits_resp (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561603.4]
  .front_axi_1_r_bits_last (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561603.4]
  .front_axi_2_aw_ready (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561604.4]
  .front_axi_2_aw_valid ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561604.4]
  .front_axi_2_aw_bits_id ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561604.4]
  .front_axi_2_aw_bits_addr ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561604.4]
  .front_axi_2_aw_bits_len ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561604.4]
  .front_axi_2_aw_bits_size ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561604.4]
  .front_axi_2_aw_bits_burst ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561604.4]
  .front_axi_2_aw_bits_lock ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561604.4]
  .front_axi_2_aw_bits_cache ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561604.4]
  .front_axi_2_aw_bits_prot ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561604.4]
  .front_axi_2_aw_bits_qos ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561604.4]
  .front_axi_2_w_ready (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561604.4]
  .front_axi_2_w_valid ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561604.4]
  .front_axi_2_w_bits_data ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561604.4]
  .front_axi_2_w_bits_strb ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561604.4]
  .front_axi_2_w_bits_last ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561604.4]
  .front_axi_2_b_ready ('d1), // @[:freedom.serve.SERVEiFPGAConfig.fir@561604.4]
  .front_axi_2_b_valid (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561604.4]
  .front_axi_2_b_bits_id (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561604.4]
  .front_axi_2_b_bits_resp (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561604.4]
  .front_axi_2_ar_ready (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561604.4]
  .front_axi_2_ar_valid ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561604.4]
  .front_axi_2_ar_bits_id ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561604.4]
  .front_axi_2_ar_bits_addr ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561604.4]
  .front_axi_2_ar_bits_len ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561604.4]
  .front_axi_2_ar_bits_size ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561604.4]
  .front_axi_2_ar_bits_burst ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561604.4]
  .front_axi_2_ar_bits_lock ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561604.4]
  .front_axi_2_ar_bits_cache ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561604.4]
  .front_axi_2_ar_bits_prot ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561604.4]
  .front_axi_2_ar_bits_qos ('d0), // @[:freedom.serve.SERVEiFPGAConfig.fir@561604.4]
  .front_axi_2_r_ready ('d1), // @[:freedom.serve.SERVEiFPGAConfig.fir@561604.4]
  .front_axi_2_r_valid (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561604.4]
  .front_axi_2_r_bits_id (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561604.4]
  .front_axi_2_r_bits_data (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561604.4]
  .front_axi_2_r_bits_resp (), // @[:freedom.serve.SERVEiFPGAConfig.fir@561604.4]
  .front_axi_2_r_bits_last () // @[:freedom.serve.SERVEiFPGAConfig.fir@561604.4]
);
endmodule