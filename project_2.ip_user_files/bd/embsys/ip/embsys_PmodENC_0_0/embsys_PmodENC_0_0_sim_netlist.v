// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3.1 (win64) Build 2035080 Fri Oct 20 14:20:01 MDT 2017
// Date        : Sun Jan 21 13:51:57 2018
// Host        : HP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               h:/Practice/project_2/project_2.srcs/sources_1/bd/embsys/ip/embsys_PmodENC_0_0/embsys_PmodENC_0_0_sim_netlist.v
// Design      : embsys_PmodENC_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "embsys_PmodENC_0_0,pmodENC_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "pmodENC_v1_0,Vivado 2017.3.1" *) 
(* NotValidForBitStream *)
module embsys_PmodENC_0_0
   (pmodENC_A,
    pmodENC_B,
    pmodENC_btn,
    pmodENC_sw,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  input pmodENC_A;
  input pmodENC_B;
  input pmodENC_btn;
  input pmodENC_sw;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [3:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input s00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire pmodENC_A;
  wire pmodENC_B;
  wire pmodENC_btn;
  wire pmodENC_sw;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  embsys_PmodENC_0_0_pmodENC_v1_0 inst
       (.pmodENC_A(pmodENC_A),
        .pmodENC_B(pmodENC_B),
        .pmodENC_btn(pmodENC_btn),
        .pmodENC_sw(pmodENC_sw),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "debouncer" *) 
module embsys_PmodENC_0_0_debouncer
   (btnOutReg,
    swtOutReg,
    SS,
    pmodENC_btn,
    s00_axi_aclk,
    pmodENC_sw);
  output btnOutReg;
  output swtOutReg;
  input [0:0]SS;
  input pmodENC_btn;
  input s00_axi_aclk;
  input pmodENC_sw;

  wire [0:0]SS;
  wire btnOutReg;
  wire btnOutReg_i_1_n_0;
  wire btnOutReg_i_2_n_0;
  wire btnOutReg_i_3_n_0;
  wire btnOutReg_i_4_n_0;
  wire btnReg;
  wire [31:1]data0;
  wire pmodENC_btn;
  wire pmodENC_sw;
  wire s00_axi_aclk;
  wire [31:0]sampleClk;
  wire \sampleClk[31]_i_10_n_0 ;
  wire \sampleClk[31]_i_2_n_0 ;
  wire \sampleClk[31]_i_3_n_0 ;
  wire \sampleClk[31]_i_4_n_0 ;
  wire \sampleClk[31]_i_5_n_0 ;
  wire \sampleClk[31]_i_7_n_0 ;
  wire \sampleClk[31]_i_8_n_0 ;
  wire \sampleClk[31]_i_9_n_0 ;
  wire [31:0]sampleClk_0;
  wire \sampleClk_reg[12]_i_2_n_0 ;
  wire \sampleClk_reg[12]_i_2_n_1 ;
  wire \sampleClk_reg[12]_i_2_n_2 ;
  wire \sampleClk_reg[12]_i_2_n_3 ;
  wire \sampleClk_reg[16]_i_2_n_0 ;
  wire \sampleClk_reg[16]_i_2_n_1 ;
  wire \sampleClk_reg[16]_i_2_n_2 ;
  wire \sampleClk_reg[16]_i_2_n_3 ;
  wire \sampleClk_reg[20]_i_2_n_0 ;
  wire \sampleClk_reg[20]_i_2_n_1 ;
  wire \sampleClk_reg[20]_i_2_n_2 ;
  wire \sampleClk_reg[20]_i_2_n_3 ;
  wire \sampleClk_reg[24]_i_2_n_0 ;
  wire \sampleClk_reg[24]_i_2_n_1 ;
  wire \sampleClk_reg[24]_i_2_n_2 ;
  wire \sampleClk_reg[24]_i_2_n_3 ;
  wire \sampleClk_reg[28]_i_2_n_0 ;
  wire \sampleClk_reg[28]_i_2_n_1 ;
  wire \sampleClk_reg[28]_i_2_n_2 ;
  wire \sampleClk_reg[28]_i_2_n_3 ;
  wire \sampleClk_reg[31]_i_6_n_2 ;
  wire \sampleClk_reg[31]_i_6_n_3 ;
  wire \sampleClk_reg[4]_i_2_n_0 ;
  wire \sampleClk_reg[4]_i_2_n_1 ;
  wire \sampleClk_reg[4]_i_2_n_2 ;
  wire \sampleClk_reg[4]_i_2_n_3 ;
  wire \sampleClk_reg[8]_i_2_n_0 ;
  wire \sampleClk_reg[8]_i_2_n_1 ;
  wire \sampleClk_reg[8]_i_2_n_2 ;
  wire \sampleClk_reg[8]_i_2_n_3 ;
  wire swtOutReg;
  wire swtOutReg_i_1_n_0;
  wire swtReg;
  wire [3:2]\NLW_sampleClk_reg[31]_i_6_CO_UNCONNECTED ;
  wire [3:3]\NLW_sampleClk_reg[31]_i_6_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFE01000000)) 
    btnOutReg_i_1
       (.I0(\sampleClk[31]_i_5_n_0 ),
        .I1(\sampleClk[31]_i_4_n_0 ),
        .I2(btnOutReg_i_2_n_0),
        .I3(pmodENC_btn),
        .I4(btnReg),
        .I5(btnOutReg),
        .O(btnOutReg_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    btnOutReg_i_2
       (.I0(\sampleClk[31]_i_7_n_0 ),
        .I1(btnOutReg_i_3_n_0),
        .I2(\sampleClk[31]_i_8_n_0 ),
        .I3(btnOutReg_i_4_n_0),
        .O(btnOutReg_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    btnOutReg_i_3
       (.I0(sampleClk[17]),
        .I1(sampleClk[16]),
        .I2(sampleClk[19]),
        .I3(sampleClk[18]),
        .O(btnOutReg_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    btnOutReg_i_4
       (.I0(sampleClk[25]),
        .I1(sampleClk[24]),
        .I2(sampleClk[27]),
        .I3(sampleClk[26]),
        .O(btnOutReg_i_4_n_0));
  FDRE btnOutReg_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(btnOutReg_i_1_n_0),
        .Q(btnOutReg),
        .R(SS));
  FDRE btnReg_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(pmodENC_btn),
        .Q(btnReg),
        .R(SS));
  LUT1 #(
    .INIT(2'h1)) 
    \sampleClk[0]_i_1 
       (.I0(sampleClk[0]),
        .O(sampleClk_0[0]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sampleClk[10]_i_1 
       (.I0(\sampleClk[31]_i_2_n_0 ),
        .I1(\sampleClk[31]_i_3_n_0 ),
        .I2(\sampleClk[31]_i_4_n_0 ),
        .I3(\sampleClk[31]_i_5_n_0 ),
        .I4(data0[10]),
        .O(sampleClk_0[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sampleClk[11]_i_1 
       (.I0(\sampleClk[31]_i_2_n_0 ),
        .I1(\sampleClk[31]_i_3_n_0 ),
        .I2(\sampleClk[31]_i_4_n_0 ),
        .I3(\sampleClk[31]_i_5_n_0 ),
        .I4(data0[11]),
        .O(sampleClk_0[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sampleClk[12]_i_1 
       (.I0(\sampleClk[31]_i_2_n_0 ),
        .I1(\sampleClk[31]_i_3_n_0 ),
        .I2(\sampleClk[31]_i_4_n_0 ),
        .I3(\sampleClk[31]_i_5_n_0 ),
        .I4(data0[12]),
        .O(sampleClk_0[12]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sampleClk[13]_i_1 
       (.I0(\sampleClk[31]_i_2_n_0 ),
        .I1(\sampleClk[31]_i_3_n_0 ),
        .I2(\sampleClk[31]_i_4_n_0 ),
        .I3(\sampleClk[31]_i_5_n_0 ),
        .I4(data0[13]),
        .O(sampleClk_0[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sampleClk[14]_i_1 
       (.I0(\sampleClk[31]_i_2_n_0 ),
        .I1(\sampleClk[31]_i_3_n_0 ),
        .I2(\sampleClk[31]_i_4_n_0 ),
        .I3(\sampleClk[31]_i_5_n_0 ),
        .I4(data0[14]),
        .O(sampleClk_0[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sampleClk[15]_i_1 
       (.I0(\sampleClk[31]_i_2_n_0 ),
        .I1(\sampleClk[31]_i_3_n_0 ),
        .I2(\sampleClk[31]_i_4_n_0 ),
        .I3(\sampleClk[31]_i_5_n_0 ),
        .I4(data0[15]),
        .O(sampleClk_0[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sampleClk[16]_i_1 
       (.I0(\sampleClk[31]_i_2_n_0 ),
        .I1(\sampleClk[31]_i_3_n_0 ),
        .I2(\sampleClk[31]_i_4_n_0 ),
        .I3(\sampleClk[31]_i_5_n_0 ),
        .I4(data0[16]),
        .O(sampleClk_0[16]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sampleClk[17]_i_1 
       (.I0(\sampleClk[31]_i_2_n_0 ),
        .I1(\sampleClk[31]_i_3_n_0 ),
        .I2(\sampleClk[31]_i_4_n_0 ),
        .I3(\sampleClk[31]_i_5_n_0 ),
        .I4(data0[17]),
        .O(sampleClk_0[17]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sampleClk[18]_i_1 
       (.I0(\sampleClk[31]_i_2_n_0 ),
        .I1(\sampleClk[31]_i_3_n_0 ),
        .I2(\sampleClk[31]_i_4_n_0 ),
        .I3(\sampleClk[31]_i_5_n_0 ),
        .I4(data0[18]),
        .O(sampleClk_0[18]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sampleClk[19]_i_1 
       (.I0(\sampleClk[31]_i_2_n_0 ),
        .I1(\sampleClk[31]_i_3_n_0 ),
        .I2(\sampleClk[31]_i_4_n_0 ),
        .I3(\sampleClk[31]_i_5_n_0 ),
        .I4(data0[19]),
        .O(sampleClk_0[19]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sampleClk[1]_i_1 
       (.I0(\sampleClk[31]_i_2_n_0 ),
        .I1(\sampleClk[31]_i_3_n_0 ),
        .I2(\sampleClk[31]_i_4_n_0 ),
        .I3(\sampleClk[31]_i_5_n_0 ),
        .I4(data0[1]),
        .O(sampleClk_0[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sampleClk[20]_i_1 
       (.I0(\sampleClk[31]_i_2_n_0 ),
        .I1(\sampleClk[31]_i_3_n_0 ),
        .I2(\sampleClk[31]_i_4_n_0 ),
        .I3(\sampleClk[31]_i_5_n_0 ),
        .I4(data0[20]),
        .O(sampleClk_0[20]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sampleClk[21]_i_1 
       (.I0(\sampleClk[31]_i_2_n_0 ),
        .I1(\sampleClk[31]_i_3_n_0 ),
        .I2(\sampleClk[31]_i_4_n_0 ),
        .I3(\sampleClk[31]_i_5_n_0 ),
        .I4(data0[21]),
        .O(sampleClk_0[21]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sampleClk[22]_i_1 
       (.I0(\sampleClk[31]_i_2_n_0 ),
        .I1(\sampleClk[31]_i_3_n_0 ),
        .I2(\sampleClk[31]_i_4_n_0 ),
        .I3(\sampleClk[31]_i_5_n_0 ),
        .I4(data0[22]),
        .O(sampleClk_0[22]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sampleClk[23]_i_1 
       (.I0(\sampleClk[31]_i_2_n_0 ),
        .I1(\sampleClk[31]_i_3_n_0 ),
        .I2(\sampleClk[31]_i_4_n_0 ),
        .I3(\sampleClk[31]_i_5_n_0 ),
        .I4(data0[23]),
        .O(sampleClk_0[23]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sampleClk[24]_i_1 
       (.I0(\sampleClk[31]_i_2_n_0 ),
        .I1(\sampleClk[31]_i_3_n_0 ),
        .I2(\sampleClk[31]_i_4_n_0 ),
        .I3(\sampleClk[31]_i_5_n_0 ),
        .I4(data0[24]),
        .O(sampleClk_0[24]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sampleClk[25]_i_1 
       (.I0(\sampleClk[31]_i_2_n_0 ),
        .I1(\sampleClk[31]_i_3_n_0 ),
        .I2(\sampleClk[31]_i_4_n_0 ),
        .I3(\sampleClk[31]_i_5_n_0 ),
        .I4(data0[25]),
        .O(sampleClk_0[25]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sampleClk[26]_i_1 
       (.I0(\sampleClk[31]_i_2_n_0 ),
        .I1(\sampleClk[31]_i_3_n_0 ),
        .I2(\sampleClk[31]_i_4_n_0 ),
        .I3(\sampleClk[31]_i_5_n_0 ),
        .I4(data0[26]),
        .O(sampleClk_0[26]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sampleClk[27]_i_1 
       (.I0(\sampleClk[31]_i_2_n_0 ),
        .I1(\sampleClk[31]_i_3_n_0 ),
        .I2(\sampleClk[31]_i_4_n_0 ),
        .I3(\sampleClk[31]_i_5_n_0 ),
        .I4(data0[27]),
        .O(sampleClk_0[27]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sampleClk[28]_i_1 
       (.I0(\sampleClk[31]_i_2_n_0 ),
        .I1(\sampleClk[31]_i_3_n_0 ),
        .I2(\sampleClk[31]_i_4_n_0 ),
        .I3(\sampleClk[31]_i_5_n_0 ),
        .I4(data0[28]),
        .O(sampleClk_0[28]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sampleClk[29]_i_1 
       (.I0(\sampleClk[31]_i_2_n_0 ),
        .I1(\sampleClk[31]_i_3_n_0 ),
        .I2(\sampleClk[31]_i_4_n_0 ),
        .I3(\sampleClk[31]_i_5_n_0 ),
        .I4(data0[29]),
        .O(sampleClk_0[29]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sampleClk[2]_i_1 
       (.I0(\sampleClk[31]_i_2_n_0 ),
        .I1(\sampleClk[31]_i_3_n_0 ),
        .I2(\sampleClk[31]_i_4_n_0 ),
        .I3(\sampleClk[31]_i_5_n_0 ),
        .I4(data0[2]),
        .O(sampleClk_0[2]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sampleClk[30]_i_1 
       (.I0(\sampleClk[31]_i_2_n_0 ),
        .I1(\sampleClk[31]_i_3_n_0 ),
        .I2(\sampleClk[31]_i_4_n_0 ),
        .I3(\sampleClk[31]_i_5_n_0 ),
        .I4(data0[30]),
        .O(sampleClk_0[30]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sampleClk[31]_i_1 
       (.I0(\sampleClk[31]_i_2_n_0 ),
        .I1(\sampleClk[31]_i_3_n_0 ),
        .I2(\sampleClk[31]_i_4_n_0 ),
        .I3(\sampleClk[31]_i_5_n_0 ),
        .I4(data0[31]),
        .O(sampleClk_0[31]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sampleClk[31]_i_10 
       (.I0(sampleClk[13]),
        .I1(sampleClk[12]),
        .I2(sampleClk[15]),
        .I3(sampleClk[14]),
        .O(\sampleClk[31]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sampleClk[31]_i_2 
       (.I0(sampleClk[18]),
        .I1(sampleClk[19]),
        .I2(sampleClk[16]),
        .I3(sampleClk[17]),
        .I4(\sampleClk[31]_i_7_n_0 ),
        .O(\sampleClk[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sampleClk[31]_i_3 
       (.I0(sampleClk[26]),
        .I1(sampleClk[27]),
        .I2(sampleClk[24]),
        .I3(sampleClk[25]),
        .I4(\sampleClk[31]_i_8_n_0 ),
        .O(\sampleClk[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \sampleClk[31]_i_4 
       (.I0(sampleClk[2]),
        .I1(sampleClk[3]),
        .I2(sampleClk[0]),
        .I3(sampleClk[1]),
        .I4(\sampleClk[31]_i_9_n_0 ),
        .O(\sampleClk[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sampleClk[31]_i_5 
       (.I0(sampleClk[10]),
        .I1(sampleClk[11]),
        .I2(sampleClk[8]),
        .I3(sampleClk[9]),
        .I4(\sampleClk[31]_i_10_n_0 ),
        .O(\sampleClk[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sampleClk[31]_i_7 
       (.I0(sampleClk[21]),
        .I1(sampleClk[20]),
        .I2(sampleClk[23]),
        .I3(sampleClk[22]),
        .O(\sampleClk[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sampleClk[31]_i_8 
       (.I0(sampleClk[29]),
        .I1(sampleClk[28]),
        .I2(sampleClk[31]),
        .I3(sampleClk[30]),
        .O(\sampleClk[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \sampleClk[31]_i_9 
       (.I0(sampleClk[5]),
        .I1(sampleClk[4]),
        .I2(sampleClk[6]),
        .I3(sampleClk[7]),
        .O(\sampleClk[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sampleClk[3]_i_1 
       (.I0(\sampleClk[31]_i_2_n_0 ),
        .I1(\sampleClk[31]_i_3_n_0 ),
        .I2(\sampleClk[31]_i_4_n_0 ),
        .I3(\sampleClk[31]_i_5_n_0 ),
        .I4(data0[3]),
        .O(sampleClk_0[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sampleClk[4]_i_1 
       (.I0(\sampleClk[31]_i_2_n_0 ),
        .I1(\sampleClk[31]_i_3_n_0 ),
        .I2(\sampleClk[31]_i_4_n_0 ),
        .I3(\sampleClk[31]_i_5_n_0 ),
        .I4(data0[4]),
        .O(sampleClk_0[4]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sampleClk[5]_i_1 
       (.I0(\sampleClk[31]_i_2_n_0 ),
        .I1(\sampleClk[31]_i_3_n_0 ),
        .I2(\sampleClk[31]_i_4_n_0 ),
        .I3(\sampleClk[31]_i_5_n_0 ),
        .I4(data0[5]),
        .O(sampleClk_0[5]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sampleClk[6]_i_1 
       (.I0(\sampleClk[31]_i_2_n_0 ),
        .I1(\sampleClk[31]_i_3_n_0 ),
        .I2(\sampleClk[31]_i_4_n_0 ),
        .I3(\sampleClk[31]_i_5_n_0 ),
        .I4(data0[6]),
        .O(sampleClk_0[6]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sampleClk[7]_i_1 
       (.I0(\sampleClk[31]_i_2_n_0 ),
        .I1(\sampleClk[31]_i_3_n_0 ),
        .I2(\sampleClk[31]_i_4_n_0 ),
        .I3(\sampleClk[31]_i_5_n_0 ),
        .I4(data0[7]),
        .O(sampleClk_0[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sampleClk[8]_i_1 
       (.I0(\sampleClk[31]_i_2_n_0 ),
        .I1(\sampleClk[31]_i_3_n_0 ),
        .I2(\sampleClk[31]_i_4_n_0 ),
        .I3(\sampleClk[31]_i_5_n_0 ),
        .I4(data0[8]),
        .O(sampleClk_0[8]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \sampleClk[9]_i_1 
       (.I0(\sampleClk[31]_i_2_n_0 ),
        .I1(\sampleClk[31]_i_3_n_0 ),
        .I2(\sampleClk[31]_i_4_n_0 ),
        .I3(\sampleClk[31]_i_5_n_0 ),
        .I4(data0[9]),
        .O(sampleClk_0[9]));
  FDRE \sampleClk_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sampleClk_0[0]),
        .Q(sampleClk[0]),
        .R(SS));
  FDRE \sampleClk_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sampleClk_0[10]),
        .Q(sampleClk[10]),
        .R(SS));
  FDRE \sampleClk_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sampleClk_0[11]),
        .Q(sampleClk[11]),
        .R(SS));
  FDRE \sampleClk_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sampleClk_0[12]),
        .Q(sampleClk[12]),
        .R(SS));
  CARRY4 \sampleClk_reg[12]_i_2 
       (.CI(\sampleClk_reg[8]_i_2_n_0 ),
        .CO({\sampleClk_reg[12]_i_2_n_0 ,\sampleClk_reg[12]_i_2_n_1 ,\sampleClk_reg[12]_i_2_n_2 ,\sampleClk_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(sampleClk[12:9]));
  FDRE \sampleClk_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sampleClk_0[13]),
        .Q(sampleClk[13]),
        .R(SS));
  FDRE \sampleClk_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sampleClk_0[14]),
        .Q(sampleClk[14]),
        .R(SS));
  FDRE \sampleClk_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sampleClk_0[15]),
        .Q(sampleClk[15]),
        .R(SS));
  FDRE \sampleClk_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sampleClk_0[16]),
        .Q(sampleClk[16]),
        .R(SS));
  CARRY4 \sampleClk_reg[16]_i_2 
       (.CI(\sampleClk_reg[12]_i_2_n_0 ),
        .CO({\sampleClk_reg[16]_i_2_n_0 ,\sampleClk_reg[16]_i_2_n_1 ,\sampleClk_reg[16]_i_2_n_2 ,\sampleClk_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(sampleClk[16:13]));
  FDRE \sampleClk_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sampleClk_0[17]),
        .Q(sampleClk[17]),
        .R(SS));
  FDRE \sampleClk_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sampleClk_0[18]),
        .Q(sampleClk[18]),
        .R(SS));
  FDRE \sampleClk_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sampleClk_0[19]),
        .Q(sampleClk[19]),
        .R(SS));
  FDRE \sampleClk_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sampleClk_0[1]),
        .Q(sampleClk[1]),
        .R(SS));
  FDRE \sampleClk_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sampleClk_0[20]),
        .Q(sampleClk[20]),
        .R(SS));
  CARRY4 \sampleClk_reg[20]_i_2 
       (.CI(\sampleClk_reg[16]_i_2_n_0 ),
        .CO({\sampleClk_reg[20]_i_2_n_0 ,\sampleClk_reg[20]_i_2_n_1 ,\sampleClk_reg[20]_i_2_n_2 ,\sampleClk_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(sampleClk[20:17]));
  FDRE \sampleClk_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sampleClk_0[21]),
        .Q(sampleClk[21]),
        .R(SS));
  FDRE \sampleClk_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sampleClk_0[22]),
        .Q(sampleClk[22]),
        .R(SS));
  FDRE \sampleClk_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sampleClk_0[23]),
        .Q(sampleClk[23]),
        .R(SS));
  FDRE \sampleClk_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sampleClk_0[24]),
        .Q(sampleClk[24]),
        .R(SS));
  CARRY4 \sampleClk_reg[24]_i_2 
       (.CI(\sampleClk_reg[20]_i_2_n_0 ),
        .CO({\sampleClk_reg[24]_i_2_n_0 ,\sampleClk_reg[24]_i_2_n_1 ,\sampleClk_reg[24]_i_2_n_2 ,\sampleClk_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(sampleClk[24:21]));
  FDRE \sampleClk_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sampleClk_0[25]),
        .Q(sampleClk[25]),
        .R(SS));
  FDRE \sampleClk_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sampleClk_0[26]),
        .Q(sampleClk[26]),
        .R(SS));
  FDRE \sampleClk_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sampleClk_0[27]),
        .Q(sampleClk[27]),
        .R(SS));
  FDRE \sampleClk_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sampleClk_0[28]),
        .Q(sampleClk[28]),
        .R(SS));
  CARRY4 \sampleClk_reg[28]_i_2 
       (.CI(\sampleClk_reg[24]_i_2_n_0 ),
        .CO({\sampleClk_reg[28]_i_2_n_0 ,\sampleClk_reg[28]_i_2_n_1 ,\sampleClk_reg[28]_i_2_n_2 ,\sampleClk_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S(sampleClk[28:25]));
  FDRE \sampleClk_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sampleClk_0[29]),
        .Q(sampleClk[29]),
        .R(SS));
  FDRE \sampleClk_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sampleClk_0[2]),
        .Q(sampleClk[2]),
        .R(SS));
  FDRE \sampleClk_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sampleClk_0[30]),
        .Q(sampleClk[30]),
        .R(SS));
  FDRE \sampleClk_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sampleClk_0[31]),
        .Q(sampleClk[31]),
        .R(SS));
  CARRY4 \sampleClk_reg[31]_i_6 
       (.CI(\sampleClk_reg[28]_i_2_n_0 ),
        .CO({\NLW_sampleClk_reg[31]_i_6_CO_UNCONNECTED [3:2],\sampleClk_reg[31]_i_6_n_2 ,\sampleClk_reg[31]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_sampleClk_reg[31]_i_6_O_UNCONNECTED [3],data0[31:29]}),
        .S({1'b0,sampleClk[31:29]}));
  FDRE \sampleClk_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sampleClk_0[3]),
        .Q(sampleClk[3]),
        .R(SS));
  FDRE \sampleClk_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sampleClk_0[4]),
        .Q(sampleClk[4]),
        .R(SS));
  CARRY4 \sampleClk_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\sampleClk_reg[4]_i_2_n_0 ,\sampleClk_reg[4]_i_2_n_1 ,\sampleClk_reg[4]_i_2_n_2 ,\sampleClk_reg[4]_i_2_n_3 }),
        .CYINIT(sampleClk[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(sampleClk[4:1]));
  FDRE \sampleClk_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sampleClk_0[5]),
        .Q(sampleClk[5]),
        .R(SS));
  FDRE \sampleClk_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sampleClk_0[6]),
        .Q(sampleClk[6]),
        .R(SS));
  FDRE \sampleClk_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sampleClk_0[7]),
        .Q(sampleClk[7]),
        .R(SS));
  FDRE \sampleClk_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sampleClk_0[8]),
        .Q(sampleClk[8]),
        .R(SS));
  CARRY4 \sampleClk_reg[8]_i_2 
       (.CI(\sampleClk_reg[4]_i_2_n_0 ),
        .CO({\sampleClk_reg[8]_i_2_n_0 ,\sampleClk_reg[8]_i_2_n_1 ,\sampleClk_reg[8]_i_2_n_2 ,\sampleClk_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(sampleClk[8:5]));
  FDRE \sampleClk_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sampleClk_0[9]),
        .Q(sampleClk[9]),
        .R(SS));
  LUT6 #(
    .INIT(64'hFFFFFFFE01000000)) 
    swtOutReg_i_1
       (.I0(\sampleClk[31]_i_5_n_0 ),
        .I1(\sampleClk[31]_i_4_n_0 ),
        .I2(btnOutReg_i_2_n_0),
        .I3(pmodENC_sw),
        .I4(swtReg),
        .I5(swtOutReg),
        .O(swtOutReg_i_1_n_0));
  FDRE swtOutReg_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(swtOutReg_i_1_n_0),
        .Q(swtOutReg),
        .R(SS));
  FDRE swtReg_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(pmodENC_sw),
        .Q(swtReg),
        .R(SS));
endmodule

(* ORIG_REF_NAME = "encoder" *) 
module embsys_PmodENC_0_0_encoder
   (\axi_rdata_reg[15] ,
    s00_axi_aclk,
    SS,
    Q,
    pmodENC_B,
    pmodENC_A,
    SR);
  output [15:0]\axi_rdata_reg[15] ;
  input s00_axi_aclk;
  input [0:0]SS;
  input [5:0]Q;
  input pmodENC_B;
  input pmodENC_A;
  input [0:0]SR;

  wire [5:0]Q;
  wire [0:0]SR;
  wire [0:0]SS;
  wire [15:0]\axi_rdata_reg[15] ;
  wire [15:1]countReg0;
  wire [15:0]countReg00_in;
  wire countReg1;
  wire countReg1_carry__0_i_1_n_0;
  wire countReg1_carry__0_i_2_n_0;
  wire countReg1_carry__0_i_3_n_0;
  wire countReg1_carry__0_i_4_n_0;
  wire countReg1_carry__0_n_0;
  wire countReg1_carry__0_n_1;
  wire countReg1_carry__0_n_2;
  wire countReg1_carry__0_n_3;
  wire countReg1_carry__1_i_1_n_3;
  wire countReg1_carry__1_n_0;
  wire countReg1_carry__1_n_1;
  wire countReg1_carry__1_n_2;
  wire countReg1_carry__1_n_3;
  wire countReg1_carry__2_n_1;
  wire countReg1_carry__2_n_2;
  wire countReg1_carry__2_n_3;
  wire countReg1_carry_i_1_n_0;
  wire countReg1_carry_i_2_n_0;
  wire countReg1_carry_i_3_n_0;
  wire countReg1_carry_i_4_n_0;
  wire countReg1_carry_n_0;
  wire countReg1_carry_n_1;
  wire countReg1_carry_n_2;
  wire countReg1_carry_n_3;
  wire [31:0]countReg2;
  wire countReg2__0_carry__0_i_1_n_0;
  wire countReg2__0_carry__0_i_2_n_0;
  wire countReg2__0_carry__0_i_3_n_0;
  wire countReg2__0_carry__0_i_4_n_0;
  wire countReg2__0_carry__0_n_0;
  wire countReg2__0_carry__0_n_1;
  wire countReg2__0_carry__0_n_2;
  wire countReg2__0_carry__0_n_3;
  wire countReg2__0_carry__1_i_1_n_0;
  wire countReg2__0_carry__1_i_2_n_0;
  wire countReg2__0_carry__1_i_3_n_0;
  wire countReg2__0_carry__1_i_4_n_0;
  wire countReg2__0_carry__1_n_0;
  wire countReg2__0_carry__1_n_1;
  wire countReg2__0_carry__1_n_2;
  wire countReg2__0_carry__1_n_3;
  wire countReg2__0_carry__2_i_1_n_0;
  wire countReg2__0_carry__2_i_2_n_0;
  wire countReg2__0_carry__2_i_3_n_0;
  wire countReg2__0_carry__2_i_4_n_0;
  wire countReg2__0_carry__2_n_1;
  wire countReg2__0_carry__2_n_2;
  wire countReg2__0_carry__2_n_3;
  wire countReg2__0_carry_i_1_n_0;
  wire countReg2__0_carry_i_2_n_0;
  wire countReg2__0_carry_i_3_n_0;
  wire countReg2__0_carry_i_4_n_0;
  wire countReg2__0_carry_n_0;
  wire countReg2__0_carry_n_1;
  wire countReg2__0_carry_n_2;
  wire countReg2__0_carry_n_3;
  wire countReg2_carry__0_i_1_n_0;
  wire countReg2_carry__0_i_2_n_0;
  wire countReg2_carry__0_i_3_n_0;
  wire countReg2_carry__0_i_4_n_0;
  wire countReg2_carry__0_n_0;
  wire countReg2_carry__0_n_1;
  wire countReg2_carry__0_n_2;
  wire countReg2_carry__0_n_3;
  wire countReg2_carry__1_i_1_n_0;
  wire countReg2_carry__1_i_2_n_0;
  wire countReg2_carry__1_i_3_n_0;
  wire countReg2_carry__1_i_4_n_0;
  wire countReg2_carry__1_n_0;
  wire countReg2_carry__1_n_1;
  wire countReg2_carry__1_n_2;
  wire countReg2_carry__1_n_3;
  wire countReg2_carry__2_i_1_n_0;
  wire countReg2_carry__2_i_2_n_0;
  wire countReg2_carry__2_i_3_n_0;
  wire countReg2_carry__2_i_4_n_0;
  wire countReg2_carry__2_n_0;
  wire countReg2_carry__2_n_1;
  wire countReg2_carry__2_n_2;
  wire countReg2_carry__2_n_3;
  wire countReg2_carry_i_1_n_0;
  wire countReg2_carry_i_2_n_0;
  wire countReg2_carry_i_3_n_0;
  wire countReg2_carry_i_4_n_0;
  wire countReg2_carry_n_0;
  wire countReg2_carry_n_1;
  wire countReg2_carry_n_2;
  wire countReg2_carry_n_3;
  wire \countReg[0]_i_1_n_0 ;
  wire \countReg[10]_i_1_n_0 ;
  wire \countReg[11]_i_1_n_0 ;
  wire \countReg[11]_i_3_n_0 ;
  wire \countReg[11]_i_4_n_0 ;
  wire \countReg[11]_i_5_n_0 ;
  wire \countReg[11]_i_6_n_0 ;
  wire \countReg[12]_i_1_n_0 ;
  wire \countReg[13]_i_1_n_0 ;
  wire \countReg[14]_i_1_n_0 ;
  wire \countReg[15]_i_2_n_0 ;
  wire \countReg[15]_i_4_n_0 ;
  wire \countReg[15]_i_5_n_0 ;
  wire \countReg[15]_i_6_n_0 ;
  wire \countReg[15]_i_7_n_0 ;
  wire \countReg[1]_i_1_n_0 ;
  wire \countReg[2]_i_1_n_0 ;
  wire \countReg[3]_i_1_n_0 ;
  wire \countReg[3]_i_3_n_0 ;
  wire \countReg[3]_i_4_n_0 ;
  wire \countReg[3]_i_5_n_0 ;
  wire \countReg[3]_i_6_n_0 ;
  wire \countReg[4]_i_1_n_0 ;
  wire \countReg[5]_i_1_n_0 ;
  wire \countReg[6]_i_1_n_0 ;
  wire \countReg[7]_i_1_n_0 ;
  wire \countReg[7]_i_3_n_0 ;
  wire \countReg[7]_i_4_n_0 ;
  wire \countReg[8]_i_1_n_0 ;
  wire \countReg[9]_i_1_n_0 ;
  wire \countReg_reg[11]_i_2_n_0 ;
  wire \countReg_reg[11]_i_2_n_1 ;
  wire \countReg_reg[11]_i_2_n_2 ;
  wire \countReg_reg[11]_i_2_n_3 ;
  wire \countReg_reg[15]_i_3_n_1 ;
  wire \countReg_reg[15]_i_3_n_2 ;
  wire \countReg_reg[15]_i_3_n_3 ;
  wire \countReg_reg[3]_i_2_n_0 ;
  wire \countReg_reg[3]_i_2_n_1 ;
  wire \countReg_reg[3]_i_2_n_2 ;
  wire \countReg_reg[3]_i_2_n_3 ;
  wire \countReg_reg[7]_i_2_n_0 ;
  wire \countReg_reg[7]_i_2_n_1 ;
  wire \countReg_reg[7]_i_2_n_2 ;
  wire \countReg_reg[7]_i_2_n_3 ;
  wire dirReg;
  wire dirReg_i_1_n_0;
  wire dly_q1;
  wire eventReg;
  wire eventReg_i_1_n_0;
  wire \incrDecrValReg_reg_n_0_[0] ;
  wire \incrDecrValReg_reg_n_0_[1] ;
  wire \incrDecrValReg_reg_n_0_[2] ;
  wire \incrDecrValReg_reg_n_0_[3] ;
  wire noNegReg;
  wire [1:0]p_0_in;
  wire pmodENC_A;
  wire pmodENC_B;
  wire q1;
  wire q1_i_1_n_0;
  wire q2;
  wire q2_i_1_n_0;
  wire s00_axi_aclk;
  wire [3:0]NLW_countReg1_carry_O_UNCONNECTED;
  wire [3:0]NLW_countReg1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_countReg1_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_countReg1_carry__1_i_1_CO_UNCONNECTED;
  wire [3:0]NLW_countReg1_carry__1_i_1_O_UNCONNECTED;
  wire [3:0]NLW_countReg1_carry__2_O_UNCONNECTED;
  wire [0:0]NLW_countReg2__0_carry_O_UNCONNECTED;
  wire [3:3]NLW_countReg2__0_carry__2_CO_UNCONNECTED;
  wire [3:3]\NLW_countReg_reg[15]_i_3_CO_UNCONNECTED ;

  FDRE A_int_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(pmodENC_A),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE B_int_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(pmodENC_B),
        .Q(p_0_in[1]),
        .R(1'b0));
  CARRY4 countReg1_carry
       (.CI(1'b0),
        .CO({countReg1_carry_n_0,countReg1_carry_n_1,countReg1_carry_n_2,countReg1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_countReg1_carry_O_UNCONNECTED[3:0]),
        .S({countReg1_carry_i_1_n_0,countReg1_carry_i_2_n_0,countReg1_carry_i_3_n_0,countReg1_carry_i_4_n_0}));
  CARRY4 countReg1_carry__0
       (.CI(countReg1_carry_n_0),
        .CO({countReg1_carry__0_n_0,countReg1_carry__0_n_1,countReg1_carry__0_n_2,countReg1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_countReg1_carry__0_O_UNCONNECTED[3:0]),
        .S({countReg1_carry__0_i_1_n_0,countReg1_carry__0_i_2_n_0,countReg1_carry__0_i_3_n_0,countReg1_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    countReg1_carry__0_i_1
       (.I0(countReg2[14]),
        .I1(countReg2[15]),
        .O(countReg1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    countReg1_carry__0_i_2
       (.I0(countReg2[12]),
        .I1(countReg2[13]),
        .O(countReg1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    countReg1_carry__0_i_3
       (.I0(countReg2[10]),
        .I1(countReg2[11]),
        .O(countReg1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    countReg1_carry__0_i_4
       (.I0(countReg2[8]),
        .I1(countReg2[9]),
        .O(countReg1_carry__0_i_4_n_0));
  CARRY4 countReg1_carry__1
       (.CI(countReg1_carry__0_n_0),
        .CO({countReg1_carry__1_n_0,countReg1_carry__1_n_1,countReg1_carry__1_n_2,countReg1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_countReg1_carry__1_O_UNCONNECTED[3:0]),
        .S({countReg1_carry__1_i_1_n_3,countReg1_carry__1_i_1_n_3,countReg1_carry__1_i_1_n_3,countReg1_carry__1_i_1_n_3}));
  CARRY4 countReg1_carry__1_i_1
       (.CI(countReg2_carry__2_n_0),
        .CO({NLW_countReg1_carry__1_i_1_CO_UNCONNECTED[3:1],countReg1_carry__1_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_countReg1_carry__1_i_1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 countReg1_carry__2
       (.CI(countReg1_carry__1_n_0),
        .CO({countReg1,countReg1_carry__2_n_1,countReg1_carry__2_n_2,countReg1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({countReg2[31],1'b0,1'b0,1'b0}),
        .O(NLW_countReg1_carry__2_O_UNCONNECTED[3:0]),
        .S({countReg1_carry__1_i_1_n_3,countReg1_carry__1_i_1_n_3,countReg1_carry__1_i_1_n_3,countReg1_carry__1_i_1_n_3}));
  LUT1 #(
    .INIT(2'h1)) 
    countReg1_carry__2_i_1
       (.I0(countReg1_carry__1_i_1_n_3),
        .O(countReg2[31]));
  LUT2 #(
    .INIT(4'h1)) 
    countReg1_carry_i_1
       (.I0(countReg2[6]),
        .I1(countReg2[7]),
        .O(countReg1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    countReg1_carry_i_2
       (.I0(countReg2[4]),
        .I1(countReg2[5]),
        .O(countReg1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    countReg1_carry_i_3
       (.I0(countReg2[2]),
        .I1(countReg2[3]),
        .O(countReg1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    countReg1_carry_i_4
       (.I0(countReg2[0]),
        .I1(countReg2[1]),
        .O(countReg1_carry_i_4_n_0));
  CARRY4 countReg2__0_carry
       (.CI(1'b0),
        .CO({countReg2__0_carry_n_0,countReg2__0_carry_n_1,countReg2__0_carry_n_2,countReg2__0_carry_n_3}),
        .CYINIT(1'b1),
        .DI(\axi_rdata_reg[15] [3:0]),
        .O({countReg0[3:1],NLW_countReg2__0_carry_O_UNCONNECTED[0]}),
        .S({countReg2__0_carry_i_1_n_0,countReg2__0_carry_i_2_n_0,countReg2__0_carry_i_3_n_0,countReg2__0_carry_i_4_n_0}));
  CARRY4 countReg2__0_carry__0
       (.CI(countReg2__0_carry_n_0),
        .CO({countReg2__0_carry__0_n_0,countReg2__0_carry__0_n_1,countReg2__0_carry__0_n_2,countReg2__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\axi_rdata_reg[15] [6:5],1'b0,1'b1}),
        .O(countReg0[7:4]),
        .S({countReg2__0_carry__0_i_1_n_0,countReg2__0_carry__0_i_2_n_0,countReg2__0_carry__0_i_3_n_0,countReg2__0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    countReg2__0_carry__0_i_1
       (.I0(\axi_rdata_reg[15] [6]),
        .I1(\axi_rdata_reg[15] [7]),
        .O(countReg2__0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    countReg2__0_carry__0_i_2
       (.I0(\axi_rdata_reg[15] [5]),
        .I1(\axi_rdata_reg[15] [6]),
        .O(countReg2__0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    countReg2__0_carry__0_i_3
       (.I0(\axi_rdata_reg[15] [5]),
        .O(countReg2__0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    countReg2__0_carry__0_i_4
       (.I0(\axi_rdata_reg[15] [4]),
        .O(countReg2__0_carry__0_i_4_n_0));
  CARRY4 countReg2__0_carry__1
       (.CI(countReg2__0_carry__0_n_0),
        .CO({countReg2__0_carry__1_n_0,countReg2__0_carry__1_n_1,countReg2__0_carry__1_n_2,countReg2__0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\axi_rdata_reg[15] [10:7]),
        .O(countReg0[11:8]),
        .S({countReg2__0_carry__1_i_1_n_0,countReg2__0_carry__1_i_2_n_0,countReg2__0_carry__1_i_3_n_0,countReg2__0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    countReg2__0_carry__1_i_1
       (.I0(\axi_rdata_reg[15] [10]),
        .I1(\axi_rdata_reg[15] [11]),
        .O(countReg2__0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    countReg2__0_carry__1_i_2
       (.I0(\axi_rdata_reg[15] [9]),
        .I1(\axi_rdata_reg[15] [10]),
        .O(countReg2__0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    countReg2__0_carry__1_i_3
       (.I0(\axi_rdata_reg[15] [8]),
        .I1(\axi_rdata_reg[15] [9]),
        .O(countReg2__0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    countReg2__0_carry__1_i_4
       (.I0(\axi_rdata_reg[15] [7]),
        .I1(\axi_rdata_reg[15] [8]),
        .O(countReg2__0_carry__1_i_4_n_0));
  CARRY4 countReg2__0_carry__2
       (.CI(countReg2__0_carry__1_n_0),
        .CO({NLW_countReg2__0_carry__2_CO_UNCONNECTED[3],countReg2__0_carry__2_n_1,countReg2__0_carry__2_n_2,countReg2__0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\axi_rdata_reg[15] [13:11]}),
        .O(countReg0[15:12]),
        .S({countReg2__0_carry__2_i_1_n_0,countReg2__0_carry__2_i_2_n_0,countReg2__0_carry__2_i_3_n_0,countReg2__0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    countReg2__0_carry__2_i_1
       (.I0(\axi_rdata_reg[15] [14]),
        .I1(\axi_rdata_reg[15] [15]),
        .O(countReg2__0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    countReg2__0_carry__2_i_2
       (.I0(\axi_rdata_reg[15] [13]),
        .I1(\axi_rdata_reg[15] [14]),
        .O(countReg2__0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    countReg2__0_carry__2_i_3
       (.I0(\axi_rdata_reg[15] [12]),
        .I1(\axi_rdata_reg[15] [13]),
        .O(countReg2__0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    countReg2__0_carry__2_i_4
       (.I0(\axi_rdata_reg[15] [11]),
        .I1(\axi_rdata_reg[15] [12]),
        .O(countReg2__0_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    countReg2__0_carry_i_1
       (.I0(\axi_rdata_reg[15] [3]),
        .I1(\incrDecrValReg_reg_n_0_[3] ),
        .O(countReg2__0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    countReg2__0_carry_i_2
       (.I0(\axi_rdata_reg[15] [2]),
        .I1(\incrDecrValReg_reg_n_0_[2] ),
        .O(countReg2__0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    countReg2__0_carry_i_3
       (.I0(\axi_rdata_reg[15] [1]),
        .I1(\incrDecrValReg_reg_n_0_[1] ),
        .O(countReg2__0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    countReg2__0_carry_i_4
       (.I0(\axi_rdata_reg[15] [0]),
        .I1(\incrDecrValReg_reg_n_0_[0] ),
        .O(countReg2__0_carry_i_4_n_0));
  CARRY4 countReg2_carry
       (.CI(1'b0),
        .CO({countReg2_carry_n_0,countReg2_carry_n_1,countReg2_carry_n_2,countReg2_carry_n_3}),
        .CYINIT(1'b1),
        .DI(\axi_rdata_reg[15] [3:0]),
        .O(countReg2[3:0]),
        .S({countReg2_carry_i_1_n_0,countReg2_carry_i_2_n_0,countReg2_carry_i_3_n_0,countReg2_carry_i_4_n_0}));
  CARRY4 countReg2_carry__0
       (.CI(countReg2_carry_n_0),
        .CO({countReg2_carry__0_n_0,countReg2_carry__0_n_1,countReg2_carry__0_n_2,countReg2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\axi_rdata_reg[15] [6:5],1'b0,1'b1}),
        .O(countReg2[7:4]),
        .S({countReg2_carry__0_i_1_n_0,countReg2_carry__0_i_2_n_0,countReg2_carry__0_i_3_n_0,countReg2_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    countReg2_carry__0_i_1
       (.I0(\axi_rdata_reg[15] [6]),
        .I1(\axi_rdata_reg[15] [7]),
        .O(countReg2_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    countReg2_carry__0_i_2
       (.I0(\axi_rdata_reg[15] [5]),
        .I1(\axi_rdata_reg[15] [6]),
        .O(countReg2_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    countReg2_carry__0_i_3
       (.I0(\axi_rdata_reg[15] [5]),
        .O(countReg2_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    countReg2_carry__0_i_4
       (.I0(\axi_rdata_reg[15] [4]),
        .O(countReg2_carry__0_i_4_n_0));
  CARRY4 countReg2_carry__1
       (.CI(countReg2_carry__0_n_0),
        .CO({countReg2_carry__1_n_0,countReg2_carry__1_n_1,countReg2_carry__1_n_2,countReg2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\axi_rdata_reg[15] [10:7]),
        .O(countReg2[11:8]),
        .S({countReg2_carry__1_i_1_n_0,countReg2_carry__1_i_2_n_0,countReg2_carry__1_i_3_n_0,countReg2_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    countReg2_carry__1_i_1
       (.I0(\axi_rdata_reg[15] [10]),
        .I1(\axi_rdata_reg[15] [11]),
        .O(countReg2_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    countReg2_carry__1_i_2
       (.I0(\axi_rdata_reg[15] [9]),
        .I1(\axi_rdata_reg[15] [10]),
        .O(countReg2_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    countReg2_carry__1_i_3
       (.I0(\axi_rdata_reg[15] [8]),
        .I1(\axi_rdata_reg[15] [9]),
        .O(countReg2_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    countReg2_carry__1_i_4
       (.I0(\axi_rdata_reg[15] [7]),
        .I1(\axi_rdata_reg[15] [8]),
        .O(countReg2_carry__1_i_4_n_0));
  CARRY4 countReg2_carry__2
       (.CI(countReg2_carry__1_n_0),
        .CO({countReg2_carry__2_n_0,countReg2_carry__2_n_1,countReg2_carry__2_n_2,countReg2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(\axi_rdata_reg[15] [14:11]),
        .O(countReg2[15:12]),
        .S({countReg2_carry__2_i_1_n_0,countReg2_carry__2_i_2_n_0,countReg2_carry__2_i_3_n_0,countReg2_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    countReg2_carry__2_i_1
       (.I0(\axi_rdata_reg[15] [14]),
        .I1(\axi_rdata_reg[15] [15]),
        .O(countReg2_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    countReg2_carry__2_i_2
       (.I0(\axi_rdata_reg[15] [13]),
        .I1(\axi_rdata_reg[15] [14]),
        .O(countReg2_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    countReg2_carry__2_i_3
       (.I0(\axi_rdata_reg[15] [12]),
        .I1(\axi_rdata_reg[15] [13]),
        .O(countReg2_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    countReg2_carry__2_i_4
       (.I0(\axi_rdata_reg[15] [11]),
        .I1(\axi_rdata_reg[15] [12]),
        .O(countReg2_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    countReg2_carry_i_1
       (.I0(\axi_rdata_reg[15] [3]),
        .I1(\incrDecrValReg_reg_n_0_[3] ),
        .O(countReg2_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    countReg2_carry_i_2
       (.I0(\axi_rdata_reg[15] [2]),
        .I1(\incrDecrValReg_reg_n_0_[2] ),
        .O(countReg2_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    countReg2_carry_i_3
       (.I0(\axi_rdata_reg[15] [1]),
        .I1(\incrDecrValReg_reg_n_0_[1] ),
        .O(countReg2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    countReg2_carry_i_4
       (.I0(\axi_rdata_reg[15] [0]),
        .I1(\incrDecrValReg_reg_n_0_[0] ),
        .O(countReg2_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h0330AAAA0FF0AAAA)) 
    \countReg[0]_i_1 
       (.I0(countReg00_in[0]),
        .I1(countReg1),
        .I2(\axi_rdata_reg[15] [0]),
        .I3(\incrDecrValReg_reg_n_0_[0] ),
        .I4(dirReg),
        .I5(noNegReg),
        .O(\countReg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30AAF0AA)) 
    \countReg[10]_i_1 
       (.I0(countReg00_in[10]),
        .I1(countReg1),
        .I2(countReg0[10]),
        .I3(dirReg),
        .I4(noNegReg),
        .O(\countReg[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30AAF0AA)) 
    \countReg[11]_i_1 
       (.I0(countReg00_in[11]),
        .I1(countReg1),
        .I2(countReg0[11]),
        .I3(dirReg),
        .I4(noNegReg),
        .O(\countReg[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \countReg[11]_i_3 
       (.I0(\axi_rdata_reg[15] [10]),
        .I1(\axi_rdata_reg[15] [11]),
        .O(\countReg[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \countReg[11]_i_4 
       (.I0(\axi_rdata_reg[15] [9]),
        .I1(\axi_rdata_reg[15] [10]),
        .O(\countReg[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \countReg[11]_i_5 
       (.I0(\axi_rdata_reg[15] [8]),
        .I1(\axi_rdata_reg[15] [9]),
        .O(\countReg[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \countReg[11]_i_6 
       (.I0(\axi_rdata_reg[15] [7]),
        .I1(\axi_rdata_reg[15] [8]),
        .O(\countReg[11]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h30AAF0AA)) 
    \countReg[12]_i_1 
       (.I0(countReg00_in[12]),
        .I1(countReg1),
        .I2(countReg0[12]),
        .I3(dirReg),
        .I4(noNegReg),
        .O(\countReg[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30AAF0AA)) 
    \countReg[13]_i_1 
       (.I0(countReg00_in[13]),
        .I1(countReg1),
        .I2(countReg0[13]),
        .I3(dirReg),
        .I4(noNegReg),
        .O(\countReg[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30AAF0AA)) 
    \countReg[14]_i_1 
       (.I0(countReg00_in[14]),
        .I1(countReg1),
        .I2(countReg0[14]),
        .I3(dirReg),
        .I4(noNegReg),
        .O(\countReg[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30AAF0AA)) 
    \countReg[15]_i_2 
       (.I0(countReg00_in[15]),
        .I1(countReg1),
        .I2(countReg0[15]),
        .I3(dirReg),
        .I4(noNegReg),
        .O(\countReg[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \countReg[15]_i_4 
       (.I0(\axi_rdata_reg[15] [14]),
        .I1(\axi_rdata_reg[15] [15]),
        .O(\countReg[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \countReg[15]_i_5 
       (.I0(\axi_rdata_reg[15] [13]),
        .I1(\axi_rdata_reg[15] [14]),
        .O(\countReg[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \countReg[15]_i_6 
       (.I0(\axi_rdata_reg[15] [12]),
        .I1(\axi_rdata_reg[15] [13]),
        .O(\countReg[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \countReg[15]_i_7 
       (.I0(\axi_rdata_reg[15] [11]),
        .I1(\axi_rdata_reg[15] [12]),
        .O(\countReg[15]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h30AAF0AA)) 
    \countReg[1]_i_1 
       (.I0(countReg00_in[1]),
        .I1(countReg1),
        .I2(countReg0[1]),
        .I3(dirReg),
        .I4(noNegReg),
        .O(\countReg[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30AAF0AA)) 
    \countReg[2]_i_1 
       (.I0(countReg00_in[2]),
        .I1(countReg1),
        .I2(countReg0[2]),
        .I3(dirReg),
        .I4(noNegReg),
        .O(\countReg[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30AAF0AA)) 
    \countReg[3]_i_1 
       (.I0(countReg00_in[3]),
        .I1(countReg1),
        .I2(countReg0[3]),
        .I3(dirReg),
        .I4(noNegReg),
        .O(\countReg[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \countReg[3]_i_3 
       (.I0(\incrDecrValReg_reg_n_0_[3] ),
        .I1(\axi_rdata_reg[15] [3]),
        .O(\countReg[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \countReg[3]_i_4 
       (.I0(\incrDecrValReg_reg_n_0_[2] ),
        .I1(\axi_rdata_reg[15] [2]),
        .O(\countReg[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \countReg[3]_i_5 
       (.I0(\incrDecrValReg_reg_n_0_[1] ),
        .I1(\axi_rdata_reg[15] [1]),
        .O(\countReg[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \countReg[3]_i_6 
       (.I0(\incrDecrValReg_reg_n_0_[0] ),
        .I1(\axi_rdata_reg[15] [0]),
        .O(\countReg[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h30AAF0AA)) 
    \countReg[4]_i_1 
       (.I0(countReg00_in[4]),
        .I1(countReg1),
        .I2(countReg0[4]),
        .I3(dirReg),
        .I4(noNegReg),
        .O(\countReg[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30AAF0AA)) 
    \countReg[5]_i_1 
       (.I0(countReg00_in[5]),
        .I1(countReg1),
        .I2(countReg0[5]),
        .I3(dirReg),
        .I4(noNegReg),
        .O(\countReg[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30AAF0AA)) 
    \countReg[6]_i_1 
       (.I0(countReg00_in[6]),
        .I1(countReg1),
        .I2(countReg0[6]),
        .I3(dirReg),
        .I4(noNegReg),
        .O(\countReg[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30AAF0AA)) 
    \countReg[7]_i_1 
       (.I0(countReg00_in[7]),
        .I1(countReg1),
        .I2(countReg0[7]),
        .I3(dirReg),
        .I4(noNegReg),
        .O(\countReg[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \countReg[7]_i_3 
       (.I0(\axi_rdata_reg[15] [6]),
        .I1(\axi_rdata_reg[15] [7]),
        .O(\countReg[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \countReg[7]_i_4 
       (.I0(\axi_rdata_reg[15] [5]),
        .I1(\axi_rdata_reg[15] [6]),
        .O(\countReg[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30AAF0AA)) 
    \countReg[8]_i_1 
       (.I0(countReg00_in[8]),
        .I1(countReg1),
        .I2(countReg0[8]),
        .I3(dirReg),
        .I4(noNegReg),
        .O(\countReg[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30AAF0AA)) 
    \countReg[9]_i_1 
       (.I0(countReg00_in[9]),
        .I1(countReg1),
        .I2(countReg0[9]),
        .I3(dirReg),
        .I4(noNegReg),
        .O(\countReg[9]_i_1_n_0 ));
  FDRE \countReg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(eventReg),
        .D(\countReg[0]_i_1_n_0 ),
        .Q(\axi_rdata_reg[15] [0]),
        .R(SR));
  FDRE \countReg_reg[10] 
       (.C(s00_axi_aclk),
        .CE(eventReg),
        .D(\countReg[10]_i_1_n_0 ),
        .Q(\axi_rdata_reg[15] [10]),
        .R(SR));
  FDRE \countReg_reg[11] 
       (.C(s00_axi_aclk),
        .CE(eventReg),
        .D(\countReg[11]_i_1_n_0 ),
        .Q(\axi_rdata_reg[15] [11]),
        .R(SR));
  CARRY4 \countReg_reg[11]_i_2 
       (.CI(\countReg_reg[7]_i_2_n_0 ),
        .CO({\countReg_reg[11]_i_2_n_0 ,\countReg_reg[11]_i_2_n_1 ,\countReg_reg[11]_i_2_n_2 ,\countReg_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(\axi_rdata_reg[15] [10:7]),
        .O(countReg00_in[11:8]),
        .S({\countReg[11]_i_3_n_0 ,\countReg[11]_i_4_n_0 ,\countReg[11]_i_5_n_0 ,\countReg[11]_i_6_n_0 }));
  FDRE \countReg_reg[12] 
       (.C(s00_axi_aclk),
        .CE(eventReg),
        .D(\countReg[12]_i_1_n_0 ),
        .Q(\axi_rdata_reg[15] [12]),
        .R(SR));
  FDRE \countReg_reg[13] 
       (.C(s00_axi_aclk),
        .CE(eventReg),
        .D(\countReg[13]_i_1_n_0 ),
        .Q(\axi_rdata_reg[15] [13]),
        .R(SR));
  FDRE \countReg_reg[14] 
       (.C(s00_axi_aclk),
        .CE(eventReg),
        .D(\countReg[14]_i_1_n_0 ),
        .Q(\axi_rdata_reg[15] [14]),
        .R(SR));
  FDRE \countReg_reg[15] 
       (.C(s00_axi_aclk),
        .CE(eventReg),
        .D(\countReg[15]_i_2_n_0 ),
        .Q(\axi_rdata_reg[15] [15]),
        .R(SR));
  CARRY4 \countReg_reg[15]_i_3 
       (.CI(\countReg_reg[11]_i_2_n_0 ),
        .CO({\NLW_countReg_reg[15]_i_3_CO_UNCONNECTED [3],\countReg_reg[15]_i_3_n_1 ,\countReg_reg[15]_i_3_n_2 ,\countReg_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\axi_rdata_reg[15] [13:11]}),
        .O(countReg00_in[15:12]),
        .S({\countReg[15]_i_4_n_0 ,\countReg[15]_i_5_n_0 ,\countReg[15]_i_6_n_0 ,\countReg[15]_i_7_n_0 }));
  FDRE \countReg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(eventReg),
        .D(\countReg[1]_i_1_n_0 ),
        .Q(\axi_rdata_reg[15] [1]),
        .R(SR));
  FDRE \countReg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(eventReg),
        .D(\countReg[2]_i_1_n_0 ),
        .Q(\axi_rdata_reg[15] [2]),
        .R(SR));
  FDRE \countReg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(eventReg),
        .D(\countReg[3]_i_1_n_0 ),
        .Q(\axi_rdata_reg[15] [3]),
        .R(SR));
  CARRY4 \countReg_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\countReg_reg[3]_i_2_n_0 ,\countReg_reg[3]_i_2_n_1 ,\countReg_reg[3]_i_2_n_2 ,\countReg_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(\axi_rdata_reg[15] [3:0]),
        .O(countReg00_in[3:0]),
        .S({\countReg[3]_i_3_n_0 ,\countReg[3]_i_4_n_0 ,\countReg[3]_i_5_n_0 ,\countReg[3]_i_6_n_0 }));
  FDRE \countReg_reg[4] 
       (.C(s00_axi_aclk),
        .CE(eventReg),
        .D(\countReg[4]_i_1_n_0 ),
        .Q(\axi_rdata_reg[15] [4]),
        .R(SR));
  FDRE \countReg_reg[5] 
       (.C(s00_axi_aclk),
        .CE(eventReg),
        .D(\countReg[5]_i_1_n_0 ),
        .Q(\axi_rdata_reg[15] [5]),
        .R(SR));
  FDRE \countReg_reg[6] 
       (.C(s00_axi_aclk),
        .CE(eventReg),
        .D(\countReg[6]_i_1_n_0 ),
        .Q(\axi_rdata_reg[15] [6]),
        .R(SR));
  FDRE \countReg_reg[7] 
       (.C(s00_axi_aclk),
        .CE(eventReg),
        .D(\countReg[7]_i_1_n_0 ),
        .Q(\axi_rdata_reg[15] [7]),
        .R(SR));
  CARRY4 \countReg_reg[7]_i_2 
       (.CI(\countReg_reg[3]_i_2_n_0 ),
        .CO({\countReg_reg[7]_i_2_n_0 ,\countReg_reg[7]_i_2_n_1 ,\countReg_reg[7]_i_2_n_2 ,\countReg_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\axi_rdata_reg[15] [6:5],1'b1,1'b0}),
        .O(countReg00_in[7:4]),
        .S({\countReg[7]_i_3_n_0 ,\countReg[7]_i_4_n_0 ,\axi_rdata_reg[15] [5:4]}));
  FDRE \countReg_reg[8] 
       (.C(s00_axi_aclk),
        .CE(eventReg),
        .D(\countReg[8]_i_1_n_0 ),
        .Q(\axi_rdata_reg[15] [8]),
        .R(SR));
  FDRE \countReg_reg[9] 
       (.C(s00_axi_aclk),
        .CE(eventReg),
        .D(\countReg[9]_i_1_n_0 ),
        .Q(\axi_rdata_reg[15] [9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    dirReg_i_1
       (.I0(q2),
        .I1(q1),
        .I2(dly_q1),
        .I3(dirReg),
        .O(dirReg_i_1_n_0));
  FDRE dirReg_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(dirReg_i_1_n_0),
        .Q(dirReg),
        .R(1'b0));
  FDRE dly_q1_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(q1),
        .Q(dly_q1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    eventReg_i_1
       (.I0(q1),
        .I1(dly_q1),
        .O(eventReg_i_1_n_0));
  FDRE eventReg_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(eventReg_i_1_n_0),
        .Q(eventReg),
        .R(1'b0));
  FDSE \incrDecrValReg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(Q[5]),
        .D(Q[0]),
        .Q(\incrDecrValReg_reg_n_0_[0] ),
        .S(SS));
  FDRE \incrDecrValReg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(Q[5]),
        .D(Q[1]),
        .Q(\incrDecrValReg_reg_n_0_[1] ),
        .R(SS));
  FDRE \incrDecrValReg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(Q[5]),
        .D(Q[2]),
        .Q(\incrDecrValReg_reg_n_0_[2] ),
        .R(SS));
  FDRE \incrDecrValReg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(Q[5]),
        .D(Q[3]),
        .Q(\incrDecrValReg_reg_n_0_[3] ),
        .R(SS));
  FDRE noNegReg_reg
       (.C(s00_axi_aclk),
        .CE(Q[5]),
        .D(Q[4]),
        .Q(noNegReg),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    q1_i_1
       (.I0(q1),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .O(q1_i_1_n_0));
  FDRE q1_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(q1_i_1_n_0),
        .Q(q1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    q2_i_1
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(q2),
        .O(q2_i_1_n_0));
  FDRE q2_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(q2_i_1_n_0),
        .Q(q2),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "pmodENC_v1_0" *) 
module embsys_PmodENC_0_0_pmodENC_v1_0
   (s00_axi_wready,
    s00_axi_awready,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_wstrb,
    s00_axi_wdata,
    s00_axi_arvalid,
    s00_axi_aresetn,
    s00_axi_aclk,
    s00_axi_awaddr,
    pmodENC_btn,
    pmodENC_sw,
    s00_axi_araddr,
    pmodENC_B,
    pmodENC_A,
    s00_axi_bready,
    s00_axi_rready);
  output s00_axi_wready;
  output s00_axi_awready;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [3:0]s00_axi_wstrb;
  input [31:0]s00_axi_wdata;
  input s00_axi_arvalid;
  input s00_axi_aresetn;
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input pmodENC_btn;
  input pmodENC_sw;
  input [1:0]s00_axi_araddr;
  input pmodENC_B;
  input pmodENC_A;
  input s00_axi_bready;
  input s00_axi_rready;

  wire LdCfg;
  wire btnOutReg;
  wire [15:0]countReg;
  wire [3:0]incrDecrValue;
  wire noNeg;
  wire pmodENC_A;
  wire pmodENC_B;
  wire pmodENC_btn;
  wire pmodENC_sw;
  wire pmodENC_v1_0_S00_AXI_inst_n_6;
  wire reset_int;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire swtOutReg;

  embsys_PmodENC_0_0_debouncer PMODENC_DEBOUNCER
       (.SS(reset_int),
        .btnOutReg(btnOutReg),
        .pmodENC_btn(pmodENC_btn),
        .pmodENC_sw(pmodENC_sw),
        .s00_axi_aclk(s00_axi_aclk),
        .swtOutReg(swtOutReg));
  embsys_PmodENC_0_0_encoder PMODENC_ENCODER
       (.Q({LdCfg,noNeg,incrDecrValue}),
        .SR(pmodENC_v1_0_S00_AXI_inst_n_6),
        .SS(reset_int),
        .\axi_rdata_reg[15] (countReg),
        .pmodENC_A(pmodENC_A),
        .pmodENC_B(pmodENC_B),
        .s00_axi_aclk(s00_axi_aclk));
  embsys_PmodENC_0_0_pmodENC_v1_0_S00_AXI pmodENC_v1_0_S00_AXI_inst
       (.Q({LdCfg,noNeg,incrDecrValue}),
        .SR(reset_int),
        .btnOutReg(btnOutReg),
        .\countReg_reg[0] (pmodENC_v1_0_S00_AXI_inst_n_6),
        .\countReg_reg[15] (countReg),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .swtOutReg(swtOutReg));
endmodule

(* ORIG_REF_NAME = "pmodENC_v1_0_S00_AXI" *) 
module embsys_PmodENC_0_0_pmodENC_v1_0_S00_AXI
   (s00_axi_awready,
    SR,
    s00_axi_wready,
    s00_axi_arready,
    s00_axi_rvalid,
    s00_axi_bvalid,
    \countReg_reg[0] ,
    Q,
    s00_axi_rdata,
    s00_axi_aclk,
    s00_axi_arvalid,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_wstrb,
    s00_axi_wdata,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_araddr,
    \countReg_reg[15] ,
    btnOutReg,
    swtOutReg);
  output s00_axi_awready;
  output [0:0]SR;
  output s00_axi_wready;
  output s00_axi_arready;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  output [0:0]\countReg_reg[0] ;
  output [5:0]Q;
  output [31:0]s00_axi_rdata;
  input s00_axi_aclk;
  input s00_axi_arvalid;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [3:0]s00_axi_wstrb;
  input [31:0]s00_axi_wdata;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;
  input [1:0]s00_axi_awaddr;
  input [1:0]s00_axi_araddr;
  input [15:0]\countReg_reg[15] ;
  input btnOutReg;
  input swtOutReg;

  wire ClrCnt;
  wire [5:0]Q;
  wire [0:0]SR;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready_i_1_n_0;
  wire [3:2]axi_awaddr;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready_i_2_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready_i_1_n_0;
  wire btnOutReg;
  wire [0:0]\countReg_reg[0] ;
  wire [15:0]\countReg_reg[15] ;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire \slv_reg1[0]_i_1_n_0 ;
  wire \slv_reg1[10]_i_1_n_0 ;
  wire \slv_reg1[11]_i_1_n_0 ;
  wire \slv_reg1[12]_i_1_n_0 ;
  wire \slv_reg1[13]_i_1_n_0 ;
  wire \slv_reg1[14]_i_1_n_0 ;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[15]_i_2_n_0 ;
  wire \slv_reg1[16]_i_1_n_0 ;
  wire \slv_reg1[17]_i_1_n_0 ;
  wire \slv_reg1[18]_i_1_n_0 ;
  wire \slv_reg1[19]_i_1_n_0 ;
  wire \slv_reg1[1]_i_1_n_0 ;
  wire \slv_reg1[20]_i_1_n_0 ;
  wire \slv_reg1[21]_i_1_n_0 ;
  wire \slv_reg1[22]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[23]_i_2_n_0 ;
  wire \slv_reg1[24]_i_1_n_0 ;
  wire \slv_reg1[25]_i_1_n_0 ;
  wire \slv_reg1[26]_i_1_n_0 ;
  wire \slv_reg1[27]_i_1_n_0 ;
  wire \slv_reg1[28]_i_1_n_0 ;
  wire \slv_reg1[29]_i_1_n_0 ;
  wire \slv_reg1[2]_i_1_n_0 ;
  wire \slv_reg1[30]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[31]_i_2_n_0 ;
  wire \slv_reg1[31]_i_3_n_0 ;
  wire \slv_reg1[3]_i_1_n_0 ;
  wire \slv_reg1[4]_i_1_n_0 ;
  wire \slv_reg1[5]_i_1_n_0 ;
  wire \slv_reg1[6]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire \slv_reg1[7]_i_2_n_0 ;
  wire \slv_reg1[8]_i_1_n_0 ;
  wire \slv_reg1[9]_i_1_n_0 ;
  wire \slv_reg1_reg_n_0_[10] ;
  wire \slv_reg1_reg_n_0_[11] ;
  wire \slv_reg1_reg_n_0_[12] ;
  wire \slv_reg1_reg_n_0_[13] ;
  wire \slv_reg1_reg_n_0_[14] ;
  wire \slv_reg1_reg_n_0_[15] ;
  wire \slv_reg1_reg_n_0_[16] ;
  wire \slv_reg1_reg_n_0_[17] ;
  wire \slv_reg1_reg_n_0_[18] ;
  wire \slv_reg1_reg_n_0_[19] ;
  wire \slv_reg1_reg_n_0_[20] ;
  wire \slv_reg1_reg_n_0_[21] ;
  wire \slv_reg1_reg_n_0_[22] ;
  wire \slv_reg1_reg_n_0_[23] ;
  wire \slv_reg1_reg_n_0_[24] ;
  wire \slv_reg1_reg_n_0_[25] ;
  wire \slv_reg1_reg_n_0_[26] ;
  wire \slv_reg1_reg_n_0_[27] ;
  wire \slv_reg1_reg_n_0_[28] ;
  wire \slv_reg1_reg_n_0_[29] ;
  wire \slv_reg1_reg_n_0_[30] ;
  wire \slv_reg1_reg_n_0_[31] ;
  wire \slv_reg1_reg_n_0_[5] ;
  wire \slv_reg1_reg_n_0_[8] ;
  wire \slv_reg1_reg_n_0_[9] ;
  wire [31:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire slv_reg_rden__0;
  wire swtOutReg;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_arready),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_arready),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(SR));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_arready),
        .O(axi_arready_i_1_n_0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(s00_axi_arready),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awready),
        .I4(axi_awaddr[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awready),
        .I4(axi_awaddr[3]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(axi_awaddr[2]),
        .R(SR));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(axi_awaddr[3]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_2
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awready),
        .O(axi_awready_i_2_n_0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_i_2_n_0),
        .Q(s00_axi_awready),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wready),
        .I3(s00_axi_awready),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(SR));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_1 
       (.I0(slv_reg3[0]),
        .I1(Q[0]),
        .I2(axi_araddr[2]),
        .I3(\countReg_reg[15] [0]),
        .I4(axi_araddr[3]),
        .I5(btnOutReg),
        .O(reg_data_out[0]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg3[10]),
        .I1(\slv_reg1_reg_n_0_[10] ),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(\countReg_reg[15] [10]),
        .O(reg_data_out[10]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg3[11]),
        .I1(\slv_reg1_reg_n_0_[11] ),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(\countReg_reg[15] [11]),
        .O(reg_data_out[11]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg3[12]),
        .I1(\slv_reg1_reg_n_0_[12] ),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(\countReg_reg[15] [12]),
        .O(reg_data_out[12]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg3[13]),
        .I1(\slv_reg1_reg_n_0_[13] ),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(\countReg_reg[15] [13]),
        .O(reg_data_out[13]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg3[14]),
        .I1(\slv_reg1_reg_n_0_[14] ),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(\countReg_reg[15] [14]),
        .O(reg_data_out[14]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg3[15]),
        .I1(\slv_reg1_reg_n_0_[15] ),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(\countReg_reg[15] [15]),
        .O(reg_data_out[15]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[16]_i_1 
       (.I0(axi_araddr[2]),
        .I1(\slv_reg1_reg_n_0_[16] ),
        .I2(axi_araddr[3]),
        .I3(slv_reg3[16]),
        .O(reg_data_out[16]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[17]_i_1 
       (.I0(axi_araddr[2]),
        .I1(\slv_reg1_reg_n_0_[17] ),
        .I2(axi_araddr[3]),
        .I3(slv_reg3[17]),
        .O(reg_data_out[17]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[18]_i_1 
       (.I0(axi_araddr[2]),
        .I1(\slv_reg1_reg_n_0_[18] ),
        .I2(axi_araddr[3]),
        .I3(slv_reg3[18]),
        .O(reg_data_out[18]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[19]_i_1 
       (.I0(axi_araddr[2]),
        .I1(\slv_reg1_reg_n_0_[19] ),
        .I2(axi_araddr[3]),
        .I3(slv_reg3[19]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg3[1]),
        .I1(Q[1]),
        .I2(axi_araddr[2]),
        .I3(\countReg_reg[15] [1]),
        .I4(axi_araddr[3]),
        .I5(swtOutReg),
        .O(reg_data_out[1]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[20]_i_1 
       (.I0(axi_araddr[2]),
        .I1(\slv_reg1_reg_n_0_[20] ),
        .I2(axi_araddr[3]),
        .I3(slv_reg3[20]),
        .O(reg_data_out[20]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[21]_i_1 
       (.I0(axi_araddr[2]),
        .I1(\slv_reg1_reg_n_0_[21] ),
        .I2(axi_araddr[3]),
        .I3(slv_reg3[21]),
        .O(reg_data_out[21]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[22]_i_1 
       (.I0(axi_araddr[2]),
        .I1(\slv_reg1_reg_n_0_[22] ),
        .I2(axi_araddr[3]),
        .I3(slv_reg3[22]),
        .O(reg_data_out[22]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[23]_i_1 
       (.I0(axi_araddr[2]),
        .I1(\slv_reg1_reg_n_0_[23] ),
        .I2(axi_araddr[3]),
        .I3(slv_reg3[23]),
        .O(reg_data_out[23]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[24]_i_1 
       (.I0(axi_araddr[2]),
        .I1(\slv_reg1_reg_n_0_[24] ),
        .I2(axi_araddr[3]),
        .I3(slv_reg3[24]),
        .O(reg_data_out[24]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[25]_i_1 
       (.I0(axi_araddr[2]),
        .I1(\slv_reg1_reg_n_0_[25] ),
        .I2(axi_araddr[3]),
        .I3(slv_reg3[25]),
        .O(reg_data_out[25]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[26]_i_1 
       (.I0(axi_araddr[2]),
        .I1(\slv_reg1_reg_n_0_[26] ),
        .I2(axi_araddr[3]),
        .I3(slv_reg3[26]),
        .O(reg_data_out[26]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[27]_i_1 
       (.I0(axi_araddr[2]),
        .I1(\slv_reg1_reg_n_0_[27] ),
        .I2(axi_araddr[3]),
        .I3(slv_reg3[27]),
        .O(reg_data_out[27]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[28]_i_1 
       (.I0(axi_araddr[2]),
        .I1(\slv_reg1_reg_n_0_[28] ),
        .I2(axi_araddr[3]),
        .I3(slv_reg3[28]),
        .O(reg_data_out[28]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[29]_i_1 
       (.I0(axi_araddr[2]),
        .I1(\slv_reg1_reg_n_0_[29] ),
        .I2(axi_araddr[3]),
        .I3(slv_reg3[29]),
        .O(reg_data_out[29]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg3[2]),
        .I1(Q[2]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(\countReg_reg[15] [2]),
        .O(reg_data_out[2]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[30]_i_1 
       (.I0(axi_araddr[2]),
        .I1(\slv_reg1_reg_n_0_[30] ),
        .I2(axi_araddr[3]),
        .I3(slv_reg3[30]),
        .O(reg_data_out[30]));
  LUT4 #(
    .INIT(16'hA808)) 
    \axi_rdata[31]_i_1 
       (.I0(axi_araddr[2]),
        .I1(\slv_reg1_reg_n_0_[31] ),
        .I2(axi_araddr[3]),
        .I3(slv_reg3[31]),
        .O(reg_data_out[31]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg3[3]),
        .I1(Q[3]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(\countReg_reg[15] [3]),
        .O(reg_data_out[3]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg3[4]),
        .I1(Q[4]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(\countReg_reg[15] [4]),
        .O(reg_data_out[4]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg3[5]),
        .I1(\slv_reg1_reg_n_0_[5] ),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(\countReg_reg[15] [5]),
        .O(reg_data_out[5]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg3[6]),
        .I1(Q[5]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(\countReg_reg[15] [6]),
        .O(reg_data_out[6]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg3[7]),
        .I1(ClrCnt),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(\countReg_reg[15] [7]),
        .O(reg_data_out[7]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg3[8]),
        .I1(\slv_reg1_reg_n_0_[8] ),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(\countReg_reg[15] [8]),
        .O(reg_data_out[8]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg3[9]),
        .I1(\slv_reg1_reg_n_0_[9] ),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(\countReg_reg[15] [9]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(SR));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(SR));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(SR));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(SR));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(SR));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(SR));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(SR));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(SR));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(SR));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(SR));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(SR));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(SR));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(SR));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(SR));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(SR));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(SR));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(SR));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(SR));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(SR));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(SR));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(SR));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(SR));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(SR));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(SR));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(SR));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(SR));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(SR));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(SR));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(SR));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(SR));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(SR));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(SR));
  LUT4 #(
    .INIT(16'h0F88)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arready),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rready),
        .I3(s00_axi_rvalid),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wready),
        .O(axi_wready_i_1_n_0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_i_1_n_0),
        .Q(s00_axi_wready),
        .R(SR));
  LUT2 #(
    .INIT(4'hB)) 
    \countReg[15]_i_1 
       (.I0(ClrCnt),
        .I1(s00_axi_aresetn),
        .O(\countReg_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[0]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(s00_axi_wdata[0]),
        .O(\slv_reg1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[10]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(s00_axi_wdata[10]),
        .O(\slv_reg1[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[11]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(s00_axi_wdata[11]),
        .O(\slv_reg1[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[12]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(s00_axi_wdata[12]),
        .O(\slv_reg1[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[13]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(s00_axi_wdata[13]),
        .O(\slv_reg1[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[14]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(s00_axi_wdata[14]),
        .O(\slv_reg1[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h004F)) 
    \slv_reg1[15]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(s00_axi_wstrb[1]),
        .I2(axi_awaddr[2]),
        .I3(\slv_reg1[31]_i_3_n_0 ),
        .O(\slv_reg1[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[15]_i_2 
       (.I0(axi_awaddr[2]),
        .I1(s00_axi_wdata[15]),
        .O(\slv_reg1[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[16]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(s00_axi_wdata[16]),
        .O(\slv_reg1[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[17]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(s00_axi_wdata[17]),
        .O(\slv_reg1[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[18]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(s00_axi_wdata[18]),
        .O(\slv_reg1[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[19]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(s00_axi_wdata[19]),
        .O(\slv_reg1[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[1]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(s00_axi_wdata[1]),
        .O(\slv_reg1[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[20]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(s00_axi_wdata[20]),
        .O(\slv_reg1[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[21]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(s00_axi_wdata[21]),
        .O(\slv_reg1[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[22]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(s00_axi_wdata[22]),
        .O(\slv_reg1[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h004F)) 
    \slv_reg1[23]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(s00_axi_wstrb[2]),
        .I2(axi_awaddr[2]),
        .I3(\slv_reg1[31]_i_3_n_0 ),
        .O(\slv_reg1[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[23]_i_2 
       (.I0(axi_awaddr[2]),
        .I1(s00_axi_wdata[23]),
        .O(\slv_reg1[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[24]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(s00_axi_wdata[24]),
        .O(\slv_reg1[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[25]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(s00_axi_wdata[25]),
        .O(\slv_reg1[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[26]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(s00_axi_wdata[26]),
        .O(\slv_reg1[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[27]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(s00_axi_wdata[27]),
        .O(\slv_reg1[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[28]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(s00_axi_wdata[28]),
        .O(\slv_reg1[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[29]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(s00_axi_wdata[29]),
        .O(\slv_reg1[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[2]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(s00_axi_wdata[2]),
        .O(\slv_reg1[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[30]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(s00_axi_wdata[30]),
        .O(\slv_reg1[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h004F)) 
    \slv_reg1[31]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(s00_axi_wstrb[3]),
        .I2(axi_awaddr[2]),
        .I3(\slv_reg1[31]_i_3_n_0 ),
        .O(\slv_reg1[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[31]_i_2 
       (.I0(axi_awaddr[2]),
        .I1(s00_axi_wdata[31]),
        .O(\slv_reg1[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \slv_reg1[31]_i_3 
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wready),
        .I3(s00_axi_awready),
        .O(\slv_reg1[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[3]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(s00_axi_wdata[3]),
        .O(\slv_reg1[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[4]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(s00_axi_wdata[4]),
        .O(\slv_reg1[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[5]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(s00_axi_wdata[5]),
        .O(\slv_reg1[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[6]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(s00_axi_wdata[6]),
        .O(\slv_reg1[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h004F)) 
    \slv_reg1[7]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(s00_axi_wstrb[0]),
        .I2(axi_awaddr[2]),
        .I3(\slv_reg1[31]_i_3_n_0 ),
        .O(\slv_reg1[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[7]_i_2 
       (.I0(axi_awaddr[2]),
        .I1(s00_axi_wdata[7]),
        .O(\slv_reg1[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[8]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(s00_axi_wdata[8]),
        .O(\slv_reg1[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[9]_i_1 
       (.I0(axi_awaddr[2]),
        .I1(s00_axi_wdata[9]),
        .O(\slv_reg1[9]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\slv_reg1[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\slv_reg1[10]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[10] ),
        .R(SR));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\slv_reg1[11]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[11] ),
        .R(SR));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\slv_reg1[12]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[12] ),
        .R(SR));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\slv_reg1[13]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[13] ),
        .R(SR));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\slv_reg1[14]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[14] ),
        .R(SR));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\slv_reg1[15]_i_2_n_0 ),
        .Q(\slv_reg1_reg_n_0_[15] ),
        .R(SR));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\slv_reg1[16]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[16] ),
        .R(SR));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\slv_reg1[17]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[17] ),
        .R(SR));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\slv_reg1[18]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[18] ),
        .R(SR));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\slv_reg1[19]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[19] ),
        .R(SR));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\slv_reg1[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\slv_reg1[20]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[20] ),
        .R(SR));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\slv_reg1[21]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[21] ),
        .R(SR));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\slv_reg1[22]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[22] ),
        .R(SR));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\slv_reg1[23]_i_2_n_0 ),
        .Q(\slv_reg1_reg_n_0_[23] ),
        .R(SR));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\slv_reg1[24]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[24] ),
        .R(SR));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\slv_reg1[25]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[25] ),
        .R(SR));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\slv_reg1[26]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[26] ),
        .R(SR));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\slv_reg1[27]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[27] ),
        .R(SR));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\slv_reg1[28]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[28] ),
        .R(SR));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\slv_reg1[29]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[29] ),
        .R(SR));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\slv_reg1[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\slv_reg1[30]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[30] ),
        .R(SR));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\slv_reg1[31]_i_2_n_0 ),
        .Q(\slv_reg1_reg_n_0_[31] ),
        .R(SR));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\slv_reg1[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(SR));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\slv_reg1[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(SR));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\slv_reg1[5]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[5] ),
        .R(SR));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\slv_reg1[6]_i_1_n_0 ),
        .Q(Q[5]),
        .R(SR));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\slv_reg1[7]_i_2_n_0 ),
        .Q(ClrCnt),
        .R(SR));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\slv_reg1[8]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[8] ),
        .R(SR));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\slv_reg1[9]_i_1_n_0 ),
        .Q(\slv_reg1_reg_n_0_[9] ),
        .R(SR));
  LUT4 #(
    .INIT(16'h008F)) 
    \slv_reg3[15]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(s00_axi_wstrb[1]),
        .I2(axi_awaddr[2]),
        .I3(\slv_reg1[31]_i_3_n_0 ),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h008F)) 
    \slv_reg3[23]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(s00_axi_wstrb[2]),
        .I2(axi_awaddr[2]),
        .I3(\slv_reg1[31]_i_3_n_0 ),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h008F)) 
    \slv_reg3[31]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(s00_axi_wstrb[3]),
        .I2(axi_awaddr[2]),
        .I3(\slv_reg1[31]_i_3_n_0 ),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h008F)) 
    \slv_reg3[7]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(s00_axi_wstrb[0]),
        .I2(axi_awaddr[2]),
        .I3(\slv_reg1[31]_i_3_n_0 ),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(\slv_reg1[0]_i_1_n_0 ),
        .Q(slv_reg3[0]),
        .R(SR));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(\slv_reg1[10]_i_1_n_0 ),
        .Q(slv_reg3[10]),
        .R(SR));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(\slv_reg1[11]_i_1_n_0 ),
        .Q(slv_reg3[11]),
        .R(SR));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(\slv_reg1[12]_i_1_n_0 ),
        .Q(slv_reg3[12]),
        .R(SR));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(\slv_reg1[13]_i_1_n_0 ),
        .Q(slv_reg3[13]),
        .R(SR));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(\slv_reg1[14]_i_1_n_0 ),
        .Q(slv_reg3[14]),
        .R(SR));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(\slv_reg1[15]_i_2_n_0 ),
        .Q(slv_reg3[15]),
        .R(SR));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(\slv_reg1[16]_i_1_n_0 ),
        .Q(slv_reg3[16]),
        .R(SR));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(\slv_reg1[17]_i_1_n_0 ),
        .Q(slv_reg3[17]),
        .R(SR));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(\slv_reg1[18]_i_1_n_0 ),
        .Q(slv_reg3[18]),
        .R(SR));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(\slv_reg1[19]_i_1_n_0 ),
        .Q(slv_reg3[19]),
        .R(SR));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(\slv_reg1[1]_i_1_n_0 ),
        .Q(slv_reg3[1]),
        .R(SR));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(\slv_reg1[20]_i_1_n_0 ),
        .Q(slv_reg3[20]),
        .R(SR));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(\slv_reg1[21]_i_1_n_0 ),
        .Q(slv_reg3[21]),
        .R(SR));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(\slv_reg1[22]_i_1_n_0 ),
        .Q(slv_reg3[22]),
        .R(SR));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(\slv_reg1[23]_i_2_n_0 ),
        .Q(slv_reg3[23]),
        .R(SR));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(\slv_reg1[24]_i_1_n_0 ),
        .Q(slv_reg3[24]),
        .R(SR));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(\slv_reg1[25]_i_1_n_0 ),
        .Q(slv_reg3[25]),
        .R(SR));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(\slv_reg1[26]_i_1_n_0 ),
        .Q(slv_reg3[26]),
        .R(SR));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(\slv_reg1[27]_i_1_n_0 ),
        .Q(slv_reg3[27]),
        .R(SR));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(\slv_reg1[28]_i_1_n_0 ),
        .Q(slv_reg3[28]),
        .R(SR));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(\slv_reg1[29]_i_1_n_0 ),
        .Q(slv_reg3[29]),
        .R(SR));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(\slv_reg1[2]_i_1_n_0 ),
        .Q(slv_reg3[2]),
        .R(SR));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(\slv_reg1[30]_i_1_n_0 ),
        .Q(slv_reg3[30]),
        .R(SR));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(\slv_reg1[31]_i_2_n_0 ),
        .Q(slv_reg3[31]),
        .R(SR));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(\slv_reg1[3]_i_1_n_0 ),
        .Q(slv_reg3[3]),
        .R(SR));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(\slv_reg1[4]_i_1_n_0 ),
        .Q(slv_reg3[4]),
        .R(SR));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(\slv_reg1[5]_i_1_n_0 ),
        .Q(slv_reg3[5]),
        .R(SR));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(\slv_reg1[6]_i_1_n_0 ),
        .Q(slv_reg3[6]),
        .R(SR));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(\slv_reg1[7]_i_2_n_0 ),
        .Q(slv_reg3[7]),
        .R(SR));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(\slv_reg1[8]_i_1_n_0 ),
        .Q(slv_reg3[8]),
        .R(SR));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(\slv_reg1[9]_i_1_n_0 ),
        .Q(slv_reg3[9]),
        .R(SR));
  LUT3 #(
    .INIT(8'h40)) 
    slv_reg_rden
       (.I0(s00_axi_rvalid),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_arready),
        .O(slv_reg_rden__0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
