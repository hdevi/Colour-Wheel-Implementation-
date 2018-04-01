// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3.1 (win64) Build 2035080 Fri Oct 20 14:20:01 MDT 2017
// Date        : Sun Jan 21 13:52:06 2018
// Host        : HP running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               h:/Practice/project_2/project_2.srcs/sources_1/bd/embsys/ip/embsys_nexys4IO_0_0/embsys_nexys4IO_0_0_sim_netlist.v
// Design      : embsys_nexys4IO_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "embsys_nexys4IO_0_0,nexys4IO_v2_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "nexys4IO_v2_0,Vivado 2017.3.1" *) 
(* NotValidForBitStream *)
module embsys_nexys4IO_0_0
   (btnU,
    btnD,
    btnR,
    btnL,
    btnC,
    Clock,
    sw,
    led,
    RGB1_Red,
    RGB1_Green,
    RGB1_Blue,
    RGB2_Red,
    RGB2_Green,
    RGB2_Blue,
    seg,
    dp,
    an,
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
  input btnU;
  input btnD;
  input btnR;
  input btnL;
  input btnC;
  input Clock;
  input [15:0]sw;
  output [15:0]led;
  output RGB1_Red;
  output RGB1_Green;
  output RGB1_Blue;
  output RGB2_Red;
  output RGB2_Green;
  output RGB2_Blue;
  output [6:0]seg;
  output dp;
  output [7:0]an;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [5:0]s00_axi_awaddr;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [5:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 16, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input s00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire Clock;
  wire RGB1_Blue;
  wire RGB1_Green;
  wire RGB1_Red;
  wire RGB2_Blue;
  wire RGB2_Green;
  wire RGB2_Red;
  wire [7:0]an;
  wire btnC;
  wire btnD;
  wire btnL;
  wire btnR;
  wire btnU;
  wire dp;
  wire [15:0]led;
  wire s00_axi_aclk;
  wire [5:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [5:0]s00_axi_awaddr;
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
  wire [6:0]seg;
  wire [15:0]sw;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  embsys_nexys4IO_0_0_nexys4IO_v2_0 inst
       (.Clock(Clock),
        .Q({dp,seg}),
        .RGB1_Blue(RGB1_Blue),
        .RGB1_Green(RGB1_Green),
        .RGB1_Red(RGB1_Red),
        .RGB2_Blue(RGB2_Blue),
        .RGB2_Green(RGB2_Green),
        .RGB2_Red(RGB2_Red),
        .S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .an(an),
        .btnC(btnC),
        .btnD(btnD),
        .btnL(btnL),
        .btnR(btnR),
        .btnU(btnU),
        .led(led),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[5:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[5:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .sw(sw));
endmodule

(* ORIG_REF_NAME = "Digit" *) 
module embsys_nexys4IO_0_0_Digit
   (\seg_reg[7]_0 ,
    Q,
    s00_axi_aclk);
  output [7:0]\seg_reg[7]_0 ;
  input [5:0]Q;
  input s00_axi_aclk;

  wire [5:0]Q;
  wire s00_axi_aclk;
  wire [6:0]seg;
  wire seg0;
  wire [7:0]\seg_reg[7]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hDE8CCDCA)) 
    \seg[0]_i_1 
       (.I0(Q[2]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .O(seg[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hF4CAAAEC)) 
    \seg[1]_i_1 
       (.I0(Q[2]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[0]),
        .O(seg[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hE4AACC9C)) 
    \seg[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .O(seg[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hE0DCADCE)) 
    \seg[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .O(seg[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hE004EFDC)) 
    \seg[4]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(seg[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hB040BF8E)) 
    \seg[5]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(seg[5]));
  LUT5 #(
    .INIT(32'hB084F971)) 
    \seg[6]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[4]),
        .I3(Q[0]),
        .I4(Q[3]),
        .O(seg[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \seg[7]_i_1 
       (.I0(Q[5]),
        .O(seg0));
  FDRE \seg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[0]),
        .Q(\seg_reg[7]_0 [0]),
        .R(1'b0));
  FDRE \seg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[1]),
        .Q(\seg_reg[7]_0 [1]),
        .R(1'b0));
  FDRE \seg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[2]),
        .Q(\seg_reg[7]_0 [2]),
        .R(1'b0));
  FDRE \seg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[3]),
        .Q(\seg_reg[7]_0 [3]),
        .R(1'b0));
  FDRE \seg_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[4]),
        .Q(\seg_reg[7]_0 [4]),
        .R(1'b0));
  FDRE \seg_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[5]),
        .Q(\seg_reg[7]_0 [5]),
        .R(1'b0));
  FDRE \seg_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[6]),
        .Q(\seg_reg[7]_0 [6]),
        .R(1'b0));
  FDRE \seg_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg0),
        .Q(\seg_reg[7]_0 [7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Digit" *) 
module embsys_nexys4IO_0_0_Digit_1
   (\seg_reg[7]_0 ,
    Q,
    s00_axi_aclk);
  output [7:0]\seg_reg[7]_0 ;
  input [5:0]Q;
  input s00_axi_aclk;

  wire [5:0]Q;
  wire s00_axi_aclk;
  wire [6:0]seg;
  wire \seg[7]_i_1__0_n_0 ;
  wire [7:0]\seg_reg[7]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hDE8CCDCA)) 
    \seg[0]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .O(seg[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hF4CAAAEC)) 
    \seg[1]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[0]),
        .O(seg[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hE4AACC9C)) 
    \seg[2]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .O(seg[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hE0DCADCE)) 
    \seg[3]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .O(seg[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hE004EFDC)) 
    \seg[4]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(seg[4]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hB040BF8E)) 
    \seg[5]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(seg[5]));
  LUT5 #(
    .INIT(32'hB084F971)) 
    \seg[6]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[4]),
        .I3(Q[0]),
        .I4(Q[3]),
        .O(seg[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \seg[7]_i_1__0 
       (.I0(Q[5]),
        .O(\seg[7]_i_1__0_n_0 ));
  FDRE \seg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[0]),
        .Q(\seg_reg[7]_0 [0]),
        .R(1'b0));
  FDRE \seg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[1]),
        .Q(\seg_reg[7]_0 [1]),
        .R(1'b0));
  FDRE \seg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[2]),
        .Q(\seg_reg[7]_0 [2]),
        .R(1'b0));
  FDRE \seg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[3]),
        .Q(\seg_reg[7]_0 [3]),
        .R(1'b0));
  FDRE \seg_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[4]),
        .Q(\seg_reg[7]_0 [4]),
        .R(1'b0));
  FDRE \seg_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[5]),
        .Q(\seg_reg[7]_0 [5]),
        .R(1'b0));
  FDRE \seg_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[6]),
        .Q(\seg_reg[7]_0 [6]),
        .R(1'b0));
  FDRE \seg_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\seg[7]_i_1__0_n_0 ),
        .Q(\seg_reg[7]_0 [7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Digit" *) 
module embsys_nexys4IO_0_0_Digit_2
   (\seg_reg[7]_0 ,
    Q,
    s00_axi_aclk);
  output [7:0]\seg_reg[7]_0 ;
  input [5:0]Q;
  input s00_axi_aclk;

  wire [5:0]Q;
  wire s00_axi_aclk;
  wire [6:0]seg;
  wire \seg[7]_i_1__1_n_0 ;
  wire [7:0]\seg_reg[7]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hDE8CCDCA)) 
    \seg[0]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .O(seg[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hF4CAAAEC)) 
    \seg[1]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[0]),
        .O(seg[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hE4AACC9C)) 
    \seg[2]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .O(seg[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hE0DCADCE)) 
    \seg[3]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .O(seg[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hE004EFDC)) 
    \seg[4]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(seg[4]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hB040BF8E)) 
    \seg[5]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(seg[5]));
  LUT5 #(
    .INIT(32'hB084F971)) 
    \seg[6]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[4]),
        .I3(Q[0]),
        .I4(Q[3]),
        .O(seg[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \seg[7]_i_1__1 
       (.I0(Q[5]),
        .O(\seg[7]_i_1__1_n_0 ));
  FDRE \seg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[0]),
        .Q(\seg_reg[7]_0 [0]),
        .R(1'b0));
  FDRE \seg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[1]),
        .Q(\seg_reg[7]_0 [1]),
        .R(1'b0));
  FDRE \seg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[2]),
        .Q(\seg_reg[7]_0 [2]),
        .R(1'b0));
  FDRE \seg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[3]),
        .Q(\seg_reg[7]_0 [3]),
        .R(1'b0));
  FDRE \seg_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[4]),
        .Q(\seg_reg[7]_0 [4]),
        .R(1'b0));
  FDRE \seg_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[5]),
        .Q(\seg_reg[7]_0 [5]),
        .R(1'b0));
  FDRE \seg_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[6]),
        .Q(\seg_reg[7]_0 [6]),
        .R(1'b0));
  FDRE \seg_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\seg[7]_i_1__1_n_0 ),
        .Q(\seg_reg[7]_0 [7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Digit" *) 
module embsys_nexys4IO_0_0_Digit_3
   (D,
    Q,
    out,
    \seg_reg[0]_0 ,
    \seg_reg[7]_0 ,
    \seg_reg[7]_1 ,
    \seg_reg[7]_2 ,
    \seg_reg[1]_0 ,
    \seg_reg[2]_0 ,
    \seg_reg[3]_0 ,
    \seg_reg[4]_0 ,
    \seg_reg[5]_0 ,
    \seg_reg[6]_0 ,
    \seg_reg[7]_3 ,
    s00_axi_aclk);
  output [7:0]D;
  input [5:0]Q;
  input [2:0]out;
  input \seg_reg[0]_0 ;
  input [7:0]\seg_reg[7]_0 ;
  input [7:0]\seg_reg[7]_1 ;
  input [7:0]\seg_reg[7]_2 ;
  input \seg_reg[1]_0 ;
  input \seg_reg[2]_0 ;
  input \seg_reg[3]_0 ;
  input \seg_reg[4]_0 ;
  input \seg_reg[5]_0 ;
  input \seg_reg[6]_0 ;
  input \seg_reg[7]_3 ;
  input s00_axi_aclk;

  wire [7:0]D;
  wire [5:0]Q;
  wire [7:0]dig3;
  wire [2:0]out;
  wire s00_axi_aclk;
  wire [6:0]seg;
  wire \seg[0]_i_2_n_0 ;
  wire \seg[1]_i_2_n_0 ;
  wire \seg[2]_i_2_n_0 ;
  wire \seg[3]_i_2_n_0 ;
  wire \seg[4]_i_2_n_0 ;
  wire \seg[5]_i_2_n_0 ;
  wire \seg[6]_i_2_n_0 ;
  wire \seg[7]_i_1__2_n_0 ;
  wire \seg[7]_i_2_n_0 ;
  wire \seg_reg[0]_0 ;
  wire \seg_reg[1]_0 ;
  wire \seg_reg[2]_0 ;
  wire \seg_reg[3]_0 ;
  wire \seg_reg[4]_0 ;
  wire \seg_reg[5]_0 ;
  wire \seg_reg[6]_0 ;
  wire [7:0]\seg_reg[7]_0 ;
  wire [7:0]\seg_reg[7]_1 ;
  wire [7:0]\seg_reg[7]_2 ;
  wire \seg_reg[7]_3 ;

  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hDE8CCDCA)) 
    \seg[0]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .O(seg[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg[0]_i_2 
       (.I0(dig3[0]),
        .I1(\seg_reg[7]_0 [0]),
        .I2(out[1]),
        .I3(\seg_reg[7]_1 [0]),
        .I4(out[0]),
        .I5(\seg_reg[7]_2 [0]),
        .O(\seg[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hF4CAAAEC)) 
    \seg[1]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[0]),
        .O(seg[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg[1]_i_2 
       (.I0(dig3[1]),
        .I1(\seg_reg[7]_0 [1]),
        .I2(out[1]),
        .I3(\seg_reg[7]_1 [1]),
        .I4(out[0]),
        .I5(\seg_reg[7]_2 [1]),
        .O(\seg[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hE4AACC9C)) 
    \seg[2]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .O(seg[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg[2]_i_2 
       (.I0(dig3[2]),
        .I1(\seg_reg[7]_0 [2]),
        .I2(out[1]),
        .I3(\seg_reg[7]_1 [2]),
        .I4(out[0]),
        .I5(\seg_reg[7]_2 [2]),
        .O(\seg[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hE0DCADCE)) 
    \seg[3]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .O(seg[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg[3]_i_2 
       (.I0(dig3[3]),
        .I1(\seg_reg[7]_0 [3]),
        .I2(out[1]),
        .I3(\seg_reg[7]_1 [3]),
        .I4(out[0]),
        .I5(\seg_reg[7]_2 [3]),
        .O(\seg[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hE004EFDC)) 
    \seg[4]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(seg[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg[4]_i_2 
       (.I0(dig3[4]),
        .I1(\seg_reg[7]_0 [4]),
        .I2(out[1]),
        .I3(\seg_reg[7]_1 [4]),
        .I4(out[0]),
        .I5(\seg_reg[7]_2 [4]),
        .O(\seg[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hB040BF8E)) 
    \seg[5]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(seg[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg[5]_i_2 
       (.I0(dig3[5]),
        .I1(\seg_reg[7]_0 [5]),
        .I2(out[1]),
        .I3(\seg_reg[7]_1 [5]),
        .I4(out[0]),
        .I5(\seg_reg[7]_2 [5]),
        .O(\seg[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB084F971)) 
    \seg[6]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[4]),
        .I3(Q[0]),
        .I4(Q[3]),
        .O(seg[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg[6]_i_2 
       (.I0(dig3[6]),
        .I1(\seg_reg[7]_0 [6]),
        .I2(out[1]),
        .I3(\seg_reg[7]_1 [6]),
        .I4(out[0]),
        .I5(\seg_reg[7]_2 [6]),
        .O(\seg[6]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \seg[7]_i_1__2 
       (.I0(Q[5]),
        .O(\seg[7]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg[7]_i_2 
       (.I0(dig3[7]),
        .I1(\seg_reg[7]_0 [7]),
        .I2(out[1]),
        .I3(\seg_reg[7]_1 [7]),
        .I4(out[0]),
        .I5(\seg_reg[7]_2 [7]),
        .O(\seg[7]_i_2_n_0 ));
  FDRE \seg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[0]),
        .Q(dig3[0]),
        .R(1'b0));
  MUXF7 \seg_reg[0]_i_1 
       (.I0(\seg[0]_i_2_n_0 ),
        .I1(\seg_reg[0]_0 ),
        .O(D[0]),
        .S(out[2]));
  FDRE \seg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[1]),
        .Q(dig3[1]),
        .R(1'b0));
  MUXF7 \seg_reg[1]_i_1 
       (.I0(\seg[1]_i_2_n_0 ),
        .I1(\seg_reg[1]_0 ),
        .O(D[1]),
        .S(out[2]));
  FDRE \seg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[2]),
        .Q(dig3[2]),
        .R(1'b0));
  MUXF7 \seg_reg[2]_i_1 
       (.I0(\seg[2]_i_2_n_0 ),
        .I1(\seg_reg[2]_0 ),
        .O(D[2]),
        .S(out[2]));
  FDRE \seg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[3]),
        .Q(dig3[3]),
        .R(1'b0));
  MUXF7 \seg_reg[3]_i_1 
       (.I0(\seg[3]_i_2_n_0 ),
        .I1(\seg_reg[3]_0 ),
        .O(D[3]),
        .S(out[2]));
  FDRE \seg_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[4]),
        .Q(dig3[4]),
        .R(1'b0));
  MUXF7 \seg_reg[4]_i_1 
       (.I0(\seg[4]_i_2_n_0 ),
        .I1(\seg_reg[4]_0 ),
        .O(D[4]),
        .S(out[2]));
  FDRE \seg_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[5]),
        .Q(dig3[5]),
        .R(1'b0));
  MUXF7 \seg_reg[5]_i_1 
       (.I0(\seg[5]_i_2_n_0 ),
        .I1(\seg_reg[5]_0 ),
        .O(D[5]),
        .S(out[2]));
  FDRE \seg_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[6]),
        .Q(dig3[6]),
        .R(1'b0));
  MUXF7 \seg_reg[6]_i_1 
       (.I0(\seg[6]_i_2_n_0 ),
        .I1(\seg_reg[6]_0 ),
        .O(D[6]),
        .S(out[2]));
  FDRE \seg_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\seg[7]_i_1__2_n_0 ),
        .Q(dig3[7]),
        .R(1'b0));
  MUXF7 \seg_reg[7]_i_1 
       (.I0(\seg[7]_i_2_n_0 ),
        .I1(\seg_reg[7]_3 ),
        .O(D[7]),
        .S(out[2]));
endmodule

(* ORIG_REF_NAME = "Digit" *) 
module embsys_nexys4IO_0_0_Digit_4
   (Q,
    \slv_reg7_reg[24] ,
    s00_axi_aclk);
  output [7:0]Q;
  input [5:0]\slv_reg7_reg[24] ;
  input s00_axi_aclk;

  wire [7:0]Q;
  wire s00_axi_aclk;
  wire [6:0]seg;
  wire \seg[7]_i_1__3_n_0 ;
  wire [5:0]\slv_reg7_reg[24] ;

  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hDE8CCDCA)) 
    \seg[0]_i_1__3 
       (.I0(\slv_reg7_reg[24] [2]),
        .I1(\slv_reg7_reg[24] [4]),
        .I2(\slv_reg7_reg[24] [1]),
        .I3(\slv_reg7_reg[24] [0]),
        .I4(\slv_reg7_reg[24] [3]),
        .O(seg[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hF4CAAAEC)) 
    \seg[1]_i_1__3 
       (.I0(\slv_reg7_reg[24] [2]),
        .I1(\slv_reg7_reg[24] [4]),
        .I2(\slv_reg7_reg[24] [1]),
        .I3(\slv_reg7_reg[24] [3]),
        .I4(\slv_reg7_reg[24] [0]),
        .O(seg[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hE4AACC9C)) 
    \seg[2]_i_1__3 
       (.I0(\slv_reg7_reg[24] [2]),
        .I1(\slv_reg7_reg[24] [4]),
        .I2(\slv_reg7_reg[24] [1]),
        .I3(\slv_reg7_reg[24] [0]),
        .I4(\slv_reg7_reg[24] [3]),
        .O(seg[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hE0DCADCE)) 
    \seg[3]_i_1__3 
       (.I0(\slv_reg7_reg[24] [2]),
        .I1(\slv_reg7_reg[24] [4]),
        .I2(\slv_reg7_reg[24] [1]),
        .I3(\slv_reg7_reg[24] [0]),
        .I4(\slv_reg7_reg[24] [3]),
        .O(seg[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hE004EFDC)) 
    \seg[4]_i_1__3 
       (.I0(\slv_reg7_reg[24] [1]),
        .I1(\slv_reg7_reg[24] [0]),
        .I2(\slv_reg7_reg[24] [2]),
        .I3(\slv_reg7_reg[24] [4]),
        .I4(\slv_reg7_reg[24] [3]),
        .O(seg[4]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hB040BF8E)) 
    \seg[5]_i_1__3 
       (.I0(\slv_reg7_reg[24] [1]),
        .I1(\slv_reg7_reg[24] [0]),
        .I2(\slv_reg7_reg[24] [2]),
        .I3(\slv_reg7_reg[24] [4]),
        .I4(\slv_reg7_reg[24] [3]),
        .O(seg[5]));
  LUT5 #(
    .INIT(32'hB084F971)) 
    \seg[6]_i_1__3 
       (.I0(\slv_reg7_reg[24] [1]),
        .I1(\slv_reg7_reg[24] [2]),
        .I2(\slv_reg7_reg[24] [4]),
        .I3(\slv_reg7_reg[24] [0]),
        .I4(\slv_reg7_reg[24] [3]),
        .O(seg[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \seg[7]_i_1__3 
       (.I0(\slv_reg7_reg[24] [5]),
        .O(\seg[7]_i_1__3_n_0 ));
  FDRE \seg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \seg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \seg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \seg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \seg_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \seg_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \seg_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \seg_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\seg[7]_i_1__3_n_0 ),
        .Q(Q[7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Digit" *) 
module embsys_nexys4IO_0_0_Digit_5
   (Q,
    \slv_reg7_reg[25] ,
    s00_axi_aclk);
  output [7:0]Q;
  input [5:0]\slv_reg7_reg[25] ;
  input s00_axi_aclk;

  wire [7:0]Q;
  wire s00_axi_aclk;
  wire [6:0]seg;
  wire \seg[7]_i_1__4_n_0 ;
  wire [5:0]\slv_reg7_reg[25] ;

  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hDE8CCDCA)) 
    \seg[0]_i_1__4 
       (.I0(\slv_reg7_reg[25] [2]),
        .I1(\slv_reg7_reg[25] [4]),
        .I2(\slv_reg7_reg[25] [1]),
        .I3(\slv_reg7_reg[25] [0]),
        .I4(\slv_reg7_reg[25] [3]),
        .O(seg[0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hF4CAAAEC)) 
    \seg[1]_i_1__4 
       (.I0(\slv_reg7_reg[25] [2]),
        .I1(\slv_reg7_reg[25] [4]),
        .I2(\slv_reg7_reg[25] [1]),
        .I3(\slv_reg7_reg[25] [3]),
        .I4(\slv_reg7_reg[25] [0]),
        .O(seg[1]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hE4AACC9C)) 
    \seg[2]_i_1__4 
       (.I0(\slv_reg7_reg[25] [2]),
        .I1(\slv_reg7_reg[25] [4]),
        .I2(\slv_reg7_reg[25] [1]),
        .I3(\slv_reg7_reg[25] [0]),
        .I4(\slv_reg7_reg[25] [3]),
        .O(seg[2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hE0DCADCE)) 
    \seg[3]_i_1__4 
       (.I0(\slv_reg7_reg[25] [2]),
        .I1(\slv_reg7_reg[25] [4]),
        .I2(\slv_reg7_reg[25] [1]),
        .I3(\slv_reg7_reg[25] [0]),
        .I4(\slv_reg7_reg[25] [3]),
        .O(seg[3]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hE004EFDC)) 
    \seg[4]_i_1__4 
       (.I0(\slv_reg7_reg[25] [1]),
        .I1(\slv_reg7_reg[25] [0]),
        .I2(\slv_reg7_reg[25] [2]),
        .I3(\slv_reg7_reg[25] [4]),
        .I4(\slv_reg7_reg[25] [3]),
        .O(seg[4]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hB040BF8E)) 
    \seg[5]_i_1__4 
       (.I0(\slv_reg7_reg[25] [1]),
        .I1(\slv_reg7_reg[25] [0]),
        .I2(\slv_reg7_reg[25] [2]),
        .I3(\slv_reg7_reg[25] [4]),
        .I4(\slv_reg7_reg[25] [3]),
        .O(seg[5]));
  LUT5 #(
    .INIT(32'hB084F971)) 
    \seg[6]_i_1__4 
       (.I0(\slv_reg7_reg[25] [1]),
        .I1(\slv_reg7_reg[25] [2]),
        .I2(\slv_reg7_reg[25] [4]),
        .I3(\slv_reg7_reg[25] [0]),
        .I4(\slv_reg7_reg[25] [3]),
        .O(seg[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \seg[7]_i_1__4 
       (.I0(\slv_reg7_reg[25] [5]),
        .O(\seg[7]_i_1__4_n_0 ));
  FDRE \seg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \seg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \seg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \seg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \seg_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \seg_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \seg_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \seg_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\seg[7]_i_1__4_n_0 ),
        .Q(Q[7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Digit" *) 
module embsys_nexys4IO_0_0_Digit_6
   (Q,
    \slv_reg7_reg[26] ,
    s00_axi_aclk);
  output [7:0]Q;
  input [5:0]\slv_reg7_reg[26] ;
  input s00_axi_aclk;

  wire [7:0]Q;
  wire s00_axi_aclk;
  wire [6:0]seg;
  wire \seg[7]_i_1__5_n_0 ;
  wire [5:0]\slv_reg7_reg[26] ;

  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hDE8CCDCA)) 
    \seg[0]_i_1__5 
       (.I0(\slv_reg7_reg[26] [2]),
        .I1(\slv_reg7_reg[26] [4]),
        .I2(\slv_reg7_reg[26] [1]),
        .I3(\slv_reg7_reg[26] [0]),
        .I4(\slv_reg7_reg[26] [3]),
        .O(seg[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hF4CAAAEC)) 
    \seg[1]_i_1__5 
       (.I0(\slv_reg7_reg[26] [2]),
        .I1(\slv_reg7_reg[26] [4]),
        .I2(\slv_reg7_reg[26] [1]),
        .I3(\slv_reg7_reg[26] [3]),
        .I4(\slv_reg7_reg[26] [0]),
        .O(seg[1]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hE4AACC9C)) 
    \seg[2]_i_1__5 
       (.I0(\slv_reg7_reg[26] [2]),
        .I1(\slv_reg7_reg[26] [4]),
        .I2(\slv_reg7_reg[26] [1]),
        .I3(\slv_reg7_reg[26] [0]),
        .I4(\slv_reg7_reg[26] [3]),
        .O(seg[2]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hE0DCADCE)) 
    \seg[3]_i_1__5 
       (.I0(\slv_reg7_reg[26] [2]),
        .I1(\slv_reg7_reg[26] [4]),
        .I2(\slv_reg7_reg[26] [1]),
        .I3(\slv_reg7_reg[26] [0]),
        .I4(\slv_reg7_reg[26] [3]),
        .O(seg[3]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hE004EFDC)) 
    \seg[4]_i_1__5 
       (.I0(\slv_reg7_reg[26] [1]),
        .I1(\slv_reg7_reg[26] [0]),
        .I2(\slv_reg7_reg[26] [2]),
        .I3(\slv_reg7_reg[26] [4]),
        .I4(\slv_reg7_reg[26] [3]),
        .O(seg[4]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hB040BF8E)) 
    \seg[5]_i_1__5 
       (.I0(\slv_reg7_reg[26] [1]),
        .I1(\slv_reg7_reg[26] [0]),
        .I2(\slv_reg7_reg[26] [2]),
        .I3(\slv_reg7_reg[26] [4]),
        .I4(\slv_reg7_reg[26] [3]),
        .O(seg[5]));
  LUT5 #(
    .INIT(32'hB084F971)) 
    \seg[6]_i_1__5 
       (.I0(\slv_reg7_reg[26] [1]),
        .I1(\slv_reg7_reg[26] [2]),
        .I2(\slv_reg7_reg[26] [4]),
        .I3(\slv_reg7_reg[26] [0]),
        .I4(\slv_reg7_reg[26] [3]),
        .O(seg[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \seg[7]_i_1__5 
       (.I0(\slv_reg7_reg[26] [5]),
        .O(\seg[7]_i_1__5_n_0 ));
  FDRE \seg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \seg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \seg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \seg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \seg_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \seg_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \seg_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \seg_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\seg[7]_i_1__5_n_0 ),
        .Q(Q[7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Digit" *) 
module embsys_nexys4IO_0_0_Digit_7
   (\seg_reg[0]_0 ,
    \seg_reg[1]_0 ,
    \seg_reg[2]_0 ,
    \seg_reg[3]_0 ,
    \seg_reg[4]_0 ,
    \seg_reg[5]_0 ,
    \seg_reg[6]_0 ,
    \seg_reg[7]_0 ,
    \slv_reg7_reg[27] ,
    Q,
    out,
    \seg_reg[7]_1 ,
    \seg_reg[7]_2 ,
    s00_axi_aclk);
  output \seg_reg[0]_0 ;
  output \seg_reg[1]_0 ;
  output \seg_reg[2]_0 ;
  output \seg_reg[3]_0 ;
  output \seg_reg[4]_0 ;
  output \seg_reg[5]_0 ;
  output \seg_reg[6]_0 ;
  output \seg_reg[7]_0 ;
  input [5:0]\slv_reg7_reg[27] ;
  input [7:0]Q;
  input [1:0]out;
  input [7:0]\seg_reg[7]_1 ;
  input [7:0]\seg_reg[7]_2 ;
  input s00_axi_aclk;

  wire [7:0]Q;
  wire [7:0]dig7;
  wire [1:0]out;
  wire s00_axi_aclk;
  wire [6:0]seg;
  wire \seg[7]_i_1__6_n_0 ;
  wire \seg_reg[0]_0 ;
  wire \seg_reg[1]_0 ;
  wire \seg_reg[2]_0 ;
  wire \seg_reg[3]_0 ;
  wire \seg_reg[4]_0 ;
  wire \seg_reg[5]_0 ;
  wire \seg_reg[6]_0 ;
  wire \seg_reg[7]_0 ;
  wire [7:0]\seg_reg[7]_1 ;
  wire [7:0]\seg_reg[7]_2 ;
  wire [5:0]\slv_reg7_reg[27] ;

  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hDE8CCDCA)) 
    \seg[0]_i_1__6 
       (.I0(\slv_reg7_reg[27] [2]),
        .I1(\slv_reg7_reg[27] [4]),
        .I2(\slv_reg7_reg[27] [1]),
        .I3(\slv_reg7_reg[27] [0]),
        .I4(\slv_reg7_reg[27] [3]),
        .O(seg[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg[0]_i_3 
       (.I0(dig7[0]),
        .I1(Q[0]),
        .I2(out[1]),
        .I3(\seg_reg[7]_1 [0]),
        .I4(out[0]),
        .I5(\seg_reg[7]_2 [0]),
        .O(\seg_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hF4CAAAEC)) 
    \seg[1]_i_1__6 
       (.I0(\slv_reg7_reg[27] [2]),
        .I1(\slv_reg7_reg[27] [4]),
        .I2(\slv_reg7_reg[27] [1]),
        .I3(\slv_reg7_reg[27] [3]),
        .I4(\slv_reg7_reg[27] [0]),
        .O(seg[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg[1]_i_3 
       (.I0(dig7[1]),
        .I1(Q[1]),
        .I2(out[1]),
        .I3(\seg_reg[7]_1 [1]),
        .I4(out[0]),
        .I5(\seg_reg[7]_2 [1]),
        .O(\seg_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hE4AACC9C)) 
    \seg[2]_i_1__6 
       (.I0(\slv_reg7_reg[27] [2]),
        .I1(\slv_reg7_reg[27] [4]),
        .I2(\slv_reg7_reg[27] [1]),
        .I3(\slv_reg7_reg[27] [0]),
        .I4(\slv_reg7_reg[27] [3]),
        .O(seg[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg[2]_i_3 
       (.I0(dig7[2]),
        .I1(Q[2]),
        .I2(out[1]),
        .I3(\seg_reg[7]_1 [2]),
        .I4(out[0]),
        .I5(\seg_reg[7]_2 [2]),
        .O(\seg_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hE0DCADCE)) 
    \seg[3]_i_1__6 
       (.I0(\slv_reg7_reg[27] [2]),
        .I1(\slv_reg7_reg[27] [4]),
        .I2(\slv_reg7_reg[27] [1]),
        .I3(\slv_reg7_reg[27] [0]),
        .I4(\slv_reg7_reg[27] [3]),
        .O(seg[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg[3]_i_3 
       (.I0(dig7[3]),
        .I1(Q[3]),
        .I2(out[1]),
        .I3(\seg_reg[7]_1 [3]),
        .I4(out[0]),
        .I5(\seg_reg[7]_2 [3]),
        .O(\seg_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hE004EFDC)) 
    \seg[4]_i_1__6 
       (.I0(\slv_reg7_reg[27] [1]),
        .I1(\slv_reg7_reg[27] [0]),
        .I2(\slv_reg7_reg[27] [2]),
        .I3(\slv_reg7_reg[27] [4]),
        .I4(\slv_reg7_reg[27] [3]),
        .O(seg[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg[4]_i_3 
       (.I0(dig7[4]),
        .I1(Q[4]),
        .I2(out[1]),
        .I3(\seg_reg[7]_1 [4]),
        .I4(out[0]),
        .I5(\seg_reg[7]_2 [4]),
        .O(\seg_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hB040BF8E)) 
    \seg[5]_i_1__6 
       (.I0(\slv_reg7_reg[27] [1]),
        .I1(\slv_reg7_reg[27] [0]),
        .I2(\slv_reg7_reg[27] [2]),
        .I3(\slv_reg7_reg[27] [4]),
        .I4(\slv_reg7_reg[27] [3]),
        .O(seg[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg[5]_i_3 
       (.I0(dig7[5]),
        .I1(Q[5]),
        .I2(out[1]),
        .I3(\seg_reg[7]_1 [5]),
        .I4(out[0]),
        .I5(\seg_reg[7]_2 [5]),
        .O(\seg_reg[5]_0 ));
  LUT5 #(
    .INIT(32'hB084F971)) 
    \seg[6]_i_1__6 
       (.I0(\slv_reg7_reg[27] [1]),
        .I1(\slv_reg7_reg[27] [2]),
        .I2(\slv_reg7_reg[27] [4]),
        .I3(\slv_reg7_reg[27] [0]),
        .I4(\slv_reg7_reg[27] [3]),
        .O(seg[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg[6]_i_3 
       (.I0(dig7[6]),
        .I1(Q[6]),
        .I2(out[1]),
        .I3(\seg_reg[7]_1 [6]),
        .I4(out[0]),
        .I5(\seg_reg[7]_2 [6]),
        .O(\seg_reg[6]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \seg[7]_i_1__6 
       (.I0(\slv_reg7_reg[27] [5]),
        .O(\seg[7]_i_1__6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \seg[7]_i_3 
       (.I0(dig7[7]),
        .I1(Q[7]),
        .I2(out[1]),
        .I3(\seg_reg[7]_1 [7]),
        .I4(out[0]),
        .I5(\seg_reg[7]_2 [7]),
        .O(\seg_reg[7]_0 ));
  FDRE \seg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[0]),
        .Q(dig7[0]),
        .R(1'b0));
  FDRE \seg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[1]),
        .Q(dig7[1]),
        .R(1'b0));
  FDRE \seg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[2]),
        .Q(dig7[2]),
        .R(1'b0));
  FDRE \seg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[3]),
        .Q(dig7[3]),
        .R(1'b0));
  FDRE \seg_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[4]),
        .Q(dig7[4]),
        .R(1'b0));
  FDRE \seg_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[5]),
        .Q(dig7[5]),
        .R(1'b0));
  FDRE \seg_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(seg[6]),
        .Q(dig7[6]),
        .R(1'b0));
  FDRE \seg_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\seg[7]_i_1__6_n_0 ),
        .Q(dig7[7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "debounce" *) 
module embsys_nexys4IO_0_0_debounce
   (D,
    Q,
    \axi_araddr_reg[4] ,
    \slv_reg7_reg[0] ,
    \slv_reg3_reg[20] ,
    \slv_reg2_reg[20] ,
    \slv_reg1_reg[20] ,
    \axi_araddr_reg[4]_0 ,
    \slv_reg7_reg[1] ,
    \axi_araddr_reg[4]_1 ,
    \slv_reg7_reg[2] ,
    \axi_araddr_reg[4]_2 ,
    \slv_reg7_reg[3] ,
    \axi_araddr_reg[4]_3 ,
    \slv_reg7_reg[4] ,
    \axi_araddr_reg[4]_4 ,
    \slv_reg7_reg[5] ,
    \axi_araddr_reg[4]_5 ,
    \slv_reg7_reg[6] ,
    \axi_araddr_reg[4]_6 ,
    \slv_reg7_reg[7] ,
    \axi_araddr_reg[4]_7 ,
    \slv_reg7_reg[8] ,
    \axi_araddr_reg[4]_8 ,
    \slv_reg7_reg[9] ,
    \axi_araddr_reg[4]_9 ,
    \slv_reg7_reg[10] ,
    \axi_araddr_reg[4]_10 ,
    \slv_reg7_reg[11] ,
    \axi_araddr_reg[4]_11 ,
    \slv_reg7_reg[12] ,
    \axi_araddr_reg[4]_12 ,
    \slv_reg7_reg[13] ,
    \axi_araddr_reg[4]_13 ,
    \slv_reg7_reg[14] ,
    \axi_araddr_reg[4]_14 ,
    \slv_reg7_reg[15] ,
    \axi_araddr_reg[4]_15 ,
    \slv_reg7_reg[16] ,
    \axi_araddr_reg[4]_16 ,
    \slv_reg7_reg[17] ,
    \axi_araddr_reg[4]_17 ,
    \slv_reg7_reg[18] ,
    \axi_araddr_reg[4]_18 ,
    \slv_reg7_reg[19] ,
    \axi_araddr_reg[4]_19 ,
    \slv_reg7_reg[20] ,
    s00_axi_aclk,
    pbtn_in,
    sw);
  output [20:0]D;
  input [3:0]Q;
  input \axi_araddr_reg[4] ;
  input \slv_reg7_reg[0] ;
  input [20:0]\slv_reg3_reg[20] ;
  input [20:0]\slv_reg2_reg[20] ;
  input [20:0]\slv_reg1_reg[20] ;
  input \axi_araddr_reg[4]_0 ;
  input \slv_reg7_reg[1] ;
  input \axi_araddr_reg[4]_1 ;
  input \slv_reg7_reg[2] ;
  input \axi_araddr_reg[4]_2 ;
  input \slv_reg7_reg[3] ;
  input \axi_araddr_reg[4]_3 ;
  input \slv_reg7_reg[4] ;
  input \axi_araddr_reg[4]_4 ;
  input \slv_reg7_reg[5] ;
  input \axi_araddr_reg[4]_5 ;
  input \slv_reg7_reg[6] ;
  input \axi_araddr_reg[4]_6 ;
  input \slv_reg7_reg[7] ;
  input \axi_araddr_reg[4]_7 ;
  input \slv_reg7_reg[8] ;
  input \axi_araddr_reg[4]_8 ;
  input \slv_reg7_reg[9] ;
  input \axi_araddr_reg[4]_9 ;
  input \slv_reg7_reg[10] ;
  input \axi_araddr_reg[4]_10 ;
  input \slv_reg7_reg[11] ;
  input \axi_araddr_reg[4]_11 ;
  input \slv_reg7_reg[12] ;
  input \axi_araddr_reg[4]_12 ;
  input \slv_reg7_reg[13] ;
  input \axi_araddr_reg[4]_13 ;
  input \slv_reg7_reg[14] ;
  input \axi_araddr_reg[4]_14 ;
  input \slv_reg7_reg[15] ;
  input \axi_araddr_reg[4]_15 ;
  input \slv_reg7_reg[16] ;
  input \axi_araddr_reg[4]_16 ;
  input \slv_reg7_reg[17] ;
  input \axi_araddr_reg[4]_17 ;
  input \slv_reg7_reg[18] ;
  input \axi_araddr_reg[4]_18 ;
  input \slv_reg7_reg[19] ;
  input \axi_araddr_reg[4]_19 ;
  input \slv_reg7_reg[20] ;
  input s00_axi_aclk;
  input [4:0]pbtn_in;
  input [15:0]sw;

  wire [20:0]D;
  wire [3:0]Q;
  wire \axi_araddr_reg[4] ;
  wire \axi_araddr_reg[4]_0 ;
  wire \axi_araddr_reg[4]_1 ;
  wire \axi_araddr_reg[4]_10 ;
  wire \axi_araddr_reg[4]_11 ;
  wire \axi_araddr_reg[4]_12 ;
  wire \axi_araddr_reg[4]_13 ;
  wire \axi_araddr_reg[4]_14 ;
  wire \axi_araddr_reg[4]_15 ;
  wire \axi_araddr_reg[4]_16 ;
  wire \axi_araddr_reg[4]_17 ;
  wire \axi_araddr_reg[4]_18 ;
  wire \axi_araddr_reg[4]_19 ;
  wire \axi_araddr_reg[4]_2 ;
  wire \axi_araddr_reg[4]_3 ;
  wire \axi_araddr_reg[4]_4 ;
  wire \axi_araddr_reg[4]_5 ;
  wire \axi_araddr_reg[4]_6 ;
  wire \axi_araddr_reg[4]_7 ;
  wire \axi_araddr_reg[4]_8 ;
  wire \axi_araddr_reg[4]_9 ;
  wire \axi_rdata[0]_i_4_n_0 ;
  wire \axi_rdata[10]_i_4_n_0 ;
  wire \axi_rdata[11]_i_4_n_0 ;
  wire \axi_rdata[12]_i_4_n_0 ;
  wire \axi_rdata[13]_i_4_n_0 ;
  wire \axi_rdata[14]_i_4_n_0 ;
  wire \axi_rdata[15]_i_4_n_0 ;
  wire \axi_rdata[16]_i_4_n_0 ;
  wire \axi_rdata[17]_i_4_n_0 ;
  wire \axi_rdata[18]_i_4_n_0 ;
  wire \axi_rdata[19]_i_4_n_0 ;
  wire \axi_rdata[1]_i_4_n_0 ;
  wire \axi_rdata[20]_i_4_n_0 ;
  wire \axi_rdata[2]_i_4_n_0 ;
  wire \axi_rdata[3]_i_4_n_0 ;
  wire \axi_rdata[4]_i_4_n_0 ;
  wire \axi_rdata[5]_i_4_n_0 ;
  wire \axi_rdata[6]_i_4_n_0 ;
  wire \axi_rdata[7]_i_4_n_0 ;
  wire \axi_rdata[8]_i_4_n_0 ;
  wire \axi_rdata[9]_i_4_n_0 ;
  wire \axi_rdata_reg[0]_i_2_n_0 ;
  wire \axi_rdata_reg[10]_i_2_n_0 ;
  wire \axi_rdata_reg[11]_i_2_n_0 ;
  wire \axi_rdata_reg[12]_i_2_n_0 ;
  wire \axi_rdata_reg[13]_i_2_n_0 ;
  wire \axi_rdata_reg[14]_i_2_n_0 ;
  wire \axi_rdata_reg[15]_i_2_n_0 ;
  wire \axi_rdata_reg[16]_i_2_n_0 ;
  wire \axi_rdata_reg[17]_i_2_n_0 ;
  wire \axi_rdata_reg[18]_i_2_n_0 ;
  wire \axi_rdata_reg[19]_i_2_n_0 ;
  wire \axi_rdata_reg[1]_i_2_n_0 ;
  wire \axi_rdata_reg[20]_i_2_n_0 ;
  wire \axi_rdata_reg[2]_i_2_n_0 ;
  wire \axi_rdata_reg[3]_i_2_n_0 ;
  wire \axi_rdata_reg[4]_i_2_n_0 ;
  wire \axi_rdata_reg[5]_i_2_n_0 ;
  wire \axi_rdata_reg[6]_i_2_n_0 ;
  wire \axi_rdata_reg[7]_i_2_n_0 ;
  wire \axi_rdata_reg[8]_i_2_n_0 ;
  wire \axi_rdata_reg[9]_i_2_n_0 ;
  wire [20:0]btnsw_in;
  wire [31:1]data0;
  wire [0:0]db_count;
  wire \db_count[31]_i_10_n_0 ;
  wire \db_count[31]_i_1_n_0 ;
  wire \db_count[31]_i_3_n_0 ;
  wire \db_count[31]_i_4_n_0 ;
  wire \db_count[31]_i_5_n_0 ;
  wire \db_count[31]_i_6_n_0 ;
  wire \db_count[31]_i_7_n_0 ;
  wire \db_count[31]_i_8_n_0 ;
  wire \db_count[31]_i_9_n_0 ;
  wire \db_count_reg[12]_i_1_n_0 ;
  wire \db_count_reg[12]_i_1_n_1 ;
  wire \db_count_reg[12]_i_1_n_2 ;
  wire \db_count_reg[12]_i_1_n_3 ;
  wire \db_count_reg[16]_i_1_n_0 ;
  wire \db_count_reg[16]_i_1_n_1 ;
  wire \db_count_reg[16]_i_1_n_2 ;
  wire \db_count_reg[16]_i_1_n_3 ;
  wire \db_count_reg[20]_i_1_n_0 ;
  wire \db_count_reg[20]_i_1_n_1 ;
  wire \db_count_reg[20]_i_1_n_2 ;
  wire \db_count_reg[20]_i_1_n_3 ;
  wire \db_count_reg[24]_i_1_n_0 ;
  wire \db_count_reg[24]_i_1_n_1 ;
  wire \db_count_reg[24]_i_1_n_2 ;
  wire \db_count_reg[24]_i_1_n_3 ;
  wire \db_count_reg[28]_i_1_n_0 ;
  wire \db_count_reg[28]_i_1_n_1 ;
  wire \db_count_reg[28]_i_1_n_2 ;
  wire \db_count_reg[28]_i_1_n_3 ;
  wire \db_count_reg[31]_i_2_n_2 ;
  wire \db_count_reg[31]_i_2_n_3 ;
  wire \db_count_reg[4]_i_1_n_0 ;
  wire \db_count_reg[4]_i_1_n_1 ;
  wire \db_count_reg[4]_i_1_n_2 ;
  wire \db_count_reg[4]_i_1_n_3 ;
  wire \db_count_reg[8]_i_1_n_0 ;
  wire \db_count_reg[8]_i_1_n_1 ;
  wire \db_count_reg[8]_i_1_n_2 ;
  wire \db_count_reg[8]_i_1_n_3 ;
  wire \db_count_reg_n_0_[0] ;
  wire \db_count_reg_n_0_[10] ;
  wire \db_count_reg_n_0_[11] ;
  wire \db_count_reg_n_0_[12] ;
  wire \db_count_reg_n_0_[13] ;
  wire \db_count_reg_n_0_[14] ;
  wire \db_count_reg_n_0_[15] ;
  wire \db_count_reg_n_0_[16] ;
  wire \db_count_reg_n_0_[17] ;
  wire \db_count_reg_n_0_[18] ;
  wire \db_count_reg_n_0_[19] ;
  wire \db_count_reg_n_0_[1] ;
  wire \db_count_reg_n_0_[20] ;
  wire \db_count_reg_n_0_[21] ;
  wire \db_count_reg_n_0_[22] ;
  wire \db_count_reg_n_0_[23] ;
  wire \db_count_reg_n_0_[24] ;
  wire \db_count_reg_n_0_[25] ;
  wire \db_count_reg_n_0_[26] ;
  wire \db_count_reg_n_0_[27] ;
  wire \db_count_reg_n_0_[28] ;
  wire \db_count_reg_n_0_[29] ;
  wire \db_count_reg_n_0_[2] ;
  wire \db_count_reg_n_0_[30] ;
  wire \db_count_reg_n_0_[31] ;
  wire \db_count_reg_n_0_[3] ;
  wire \db_count_reg_n_0_[4] ;
  wire \db_count_reg_n_0_[5] ;
  wire \db_count_reg_n_0_[6] ;
  wire \db_count_reg_n_0_[7] ;
  wire \db_count_reg_n_0_[8] ;
  wire \db_count_reg_n_0_[9] ;
  wire \pbtn_db[1]_i_1_n_0 ;
  wire \pbtn_db[2]_i_1_n_0 ;
  wire \pbtn_db[3]_i_1_n_0 ;
  wire \pbtn_db[4]_i_1_n_0 ;
  wire \pbtn_db[5]_i_1_n_0 ;
  wire [4:0]pbtn_in;
  wire s00_axi_aclk;
  wire [3:0]shift_pb1;
  wire [3:0]shift_pb2;
  wire [3:0]shift_pb3;
  wire [3:0]shift_pb4;
  wire [3:0]shift_pb5;
  wire [3:0]shift_swtch0;
  wire [3:0]shift_swtch1;
  wire [3:1]shift_swtch100;
  wire \shift_swtch10_reg_n_0_[3] ;
  wire [3:0]shift_swtch11;
  wire [3:0]shift_swtch12;
  wire [3:0]shift_swtch13;
  wire [3:0]shift_swtch14;
  wire [3:0]shift_swtch15;
  wire [3:0]shift_swtch2;
  wire [3:0]shift_swtch3;
  wire [3:0]shift_swtch4;
  wire [3:0]shift_swtch5;
  wire [3:0]shift_swtch6;
  wire [3:0]shift_swtch7;
  wire [3:0]shift_swtch8;
  wire [3:0]shift_swtch9;
  wire [20:0]\slv_reg1_reg[20] ;
  wire [20:0]\slv_reg2_reg[20] ;
  wire [20:0]\slv_reg3_reg[20] ;
  wire \slv_reg7_reg[0] ;
  wire \slv_reg7_reg[10] ;
  wire \slv_reg7_reg[11] ;
  wire \slv_reg7_reg[12] ;
  wire \slv_reg7_reg[13] ;
  wire \slv_reg7_reg[14] ;
  wire \slv_reg7_reg[15] ;
  wire \slv_reg7_reg[16] ;
  wire \slv_reg7_reg[17] ;
  wire \slv_reg7_reg[18] ;
  wire \slv_reg7_reg[19] ;
  wire \slv_reg7_reg[1] ;
  wire \slv_reg7_reg[20] ;
  wire \slv_reg7_reg[2] ;
  wire \slv_reg7_reg[3] ;
  wire \slv_reg7_reg[4] ;
  wire \slv_reg7_reg[5] ;
  wire \slv_reg7_reg[6] ;
  wire \slv_reg7_reg[7] ;
  wire \slv_reg7_reg[8] ;
  wire \slv_reg7_reg[9] ;
  wire [15:0]sw;
  wire \swtch_db[0]_i_1_n_0 ;
  wire \swtch_db[10]_i_1_n_0 ;
  wire \swtch_db[11]_i_1_n_0 ;
  wire \swtch_db[12]_i_1_n_0 ;
  wire \swtch_db[13]_i_1_n_0 ;
  wire \swtch_db[14]_i_1_n_0 ;
  wire \swtch_db[15]_i_1_n_0 ;
  wire \swtch_db[1]_i_1_n_0 ;
  wire \swtch_db[2]_i_1_n_0 ;
  wire \swtch_db[3]_i_1_n_0 ;
  wire \swtch_db[4]_i_1_n_0 ;
  wire \swtch_db[5]_i_1_n_0 ;
  wire \swtch_db[6]_i_1_n_0 ;
  wire \swtch_db[7]_i_1_n_0 ;
  wire \swtch_db[8]_i_1_n_0 ;
  wire \swtch_db[9]_i_1_n_0 ;
  wire [3:2]\NLW_db_count_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_db_count_reg[31]_i_2_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_4 
       (.I0(\slv_reg3_reg[20] [0]),
        .I1(\slv_reg2_reg[20] [0]),
        .I2(Q[1]),
        .I3(\slv_reg1_reg[20] [0]),
        .I4(Q[0]),
        .I5(btnsw_in[0]),
        .O(\axi_rdata[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_4 
       (.I0(\slv_reg3_reg[20] [10]),
        .I1(\slv_reg2_reg[20] [10]),
        .I2(Q[1]),
        .I3(\slv_reg1_reg[20] [10]),
        .I4(Q[0]),
        .I5(btnsw_in[10]),
        .O(\axi_rdata[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_4 
       (.I0(\slv_reg3_reg[20] [11]),
        .I1(\slv_reg2_reg[20] [11]),
        .I2(Q[1]),
        .I3(\slv_reg1_reg[20] [11]),
        .I4(Q[0]),
        .I5(btnsw_in[11]),
        .O(\axi_rdata[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_4 
       (.I0(\slv_reg3_reg[20] [12]),
        .I1(\slv_reg2_reg[20] [12]),
        .I2(Q[1]),
        .I3(\slv_reg1_reg[20] [12]),
        .I4(Q[0]),
        .I5(btnsw_in[12]),
        .O(\axi_rdata[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_4 
       (.I0(\slv_reg3_reg[20] [13]),
        .I1(\slv_reg2_reg[20] [13]),
        .I2(Q[1]),
        .I3(\slv_reg1_reg[20] [13]),
        .I4(Q[0]),
        .I5(btnsw_in[13]),
        .O(\axi_rdata[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_4 
       (.I0(\slv_reg3_reg[20] [14]),
        .I1(\slv_reg2_reg[20] [14]),
        .I2(Q[1]),
        .I3(\slv_reg1_reg[20] [14]),
        .I4(Q[0]),
        .I5(btnsw_in[14]),
        .O(\axi_rdata[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_4 
       (.I0(\slv_reg3_reg[20] [15]),
        .I1(\slv_reg2_reg[20] [15]),
        .I2(Q[1]),
        .I3(\slv_reg1_reg[20] [15]),
        .I4(Q[0]),
        .I5(btnsw_in[15]),
        .O(\axi_rdata[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_4 
       (.I0(\slv_reg3_reg[20] [16]),
        .I1(\slv_reg2_reg[20] [16]),
        .I2(Q[1]),
        .I3(\slv_reg1_reg[20] [16]),
        .I4(Q[0]),
        .I5(btnsw_in[16]),
        .O(\axi_rdata[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_4 
       (.I0(\slv_reg3_reg[20] [17]),
        .I1(\slv_reg2_reg[20] [17]),
        .I2(Q[1]),
        .I3(\slv_reg1_reg[20] [17]),
        .I4(Q[0]),
        .I5(btnsw_in[17]),
        .O(\axi_rdata[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_4 
       (.I0(\slv_reg3_reg[20] [18]),
        .I1(\slv_reg2_reg[20] [18]),
        .I2(Q[1]),
        .I3(\slv_reg1_reg[20] [18]),
        .I4(Q[0]),
        .I5(btnsw_in[18]),
        .O(\axi_rdata[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_4 
       (.I0(\slv_reg3_reg[20] [19]),
        .I1(\slv_reg2_reg[20] [19]),
        .I2(Q[1]),
        .I3(\slv_reg1_reg[20] [19]),
        .I4(Q[0]),
        .I5(btnsw_in[19]),
        .O(\axi_rdata[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_4 
       (.I0(\slv_reg3_reg[20] [1]),
        .I1(\slv_reg2_reg[20] [1]),
        .I2(Q[1]),
        .I3(\slv_reg1_reg[20] [1]),
        .I4(Q[0]),
        .I5(btnsw_in[1]),
        .O(\axi_rdata[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_4 
       (.I0(\slv_reg3_reg[20] [20]),
        .I1(\slv_reg2_reg[20] [20]),
        .I2(Q[1]),
        .I3(\slv_reg1_reg[20] [20]),
        .I4(Q[0]),
        .I5(btnsw_in[20]),
        .O(\axi_rdata[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_4 
       (.I0(\slv_reg3_reg[20] [2]),
        .I1(\slv_reg2_reg[20] [2]),
        .I2(Q[1]),
        .I3(\slv_reg1_reg[20] [2]),
        .I4(Q[0]),
        .I5(btnsw_in[2]),
        .O(\axi_rdata[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_4 
       (.I0(\slv_reg3_reg[20] [3]),
        .I1(\slv_reg2_reg[20] [3]),
        .I2(Q[1]),
        .I3(\slv_reg1_reg[20] [3]),
        .I4(Q[0]),
        .I5(btnsw_in[3]),
        .O(\axi_rdata[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_4 
       (.I0(\slv_reg3_reg[20] [4]),
        .I1(\slv_reg2_reg[20] [4]),
        .I2(Q[1]),
        .I3(\slv_reg1_reg[20] [4]),
        .I4(Q[0]),
        .I5(btnsw_in[4]),
        .O(\axi_rdata[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_4 
       (.I0(\slv_reg3_reg[20] [5]),
        .I1(\slv_reg2_reg[20] [5]),
        .I2(Q[1]),
        .I3(\slv_reg1_reg[20] [5]),
        .I4(Q[0]),
        .I5(btnsw_in[5]),
        .O(\axi_rdata[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_4 
       (.I0(\slv_reg3_reg[20] [6]),
        .I1(\slv_reg2_reg[20] [6]),
        .I2(Q[1]),
        .I3(\slv_reg1_reg[20] [6]),
        .I4(Q[0]),
        .I5(btnsw_in[6]),
        .O(\axi_rdata[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_4 
       (.I0(\slv_reg3_reg[20] [7]),
        .I1(\slv_reg2_reg[20] [7]),
        .I2(Q[1]),
        .I3(\slv_reg1_reg[20] [7]),
        .I4(Q[0]),
        .I5(btnsw_in[7]),
        .O(\axi_rdata[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_4 
       (.I0(\slv_reg3_reg[20] [8]),
        .I1(\slv_reg2_reg[20] [8]),
        .I2(Q[1]),
        .I3(\slv_reg1_reg[20] [8]),
        .I4(Q[0]),
        .I5(btnsw_in[8]),
        .O(\axi_rdata[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_4 
       (.I0(\slv_reg3_reg[20] [9]),
        .I1(\slv_reg2_reg[20] [9]),
        .I2(Q[1]),
        .I3(\slv_reg1_reg[20] [9]),
        .I4(Q[0]),
        .I5(btnsw_in[9]),
        .O(\axi_rdata[9]_i_4_n_0 ));
  MUXF8 \axi_rdata_reg[0]_i_1 
       (.I0(\axi_rdata_reg[0]_i_2_n_0 ),
        .I1(\axi_araddr_reg[4] ),
        .O(D[0]),
        .S(Q[3]));
  MUXF7 \axi_rdata_reg[0]_i_2 
       (.I0(\axi_rdata[0]_i_4_n_0 ),
        .I1(\slv_reg7_reg[0] ),
        .O(\axi_rdata_reg[0]_i_2_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[10]_i_1 
       (.I0(\axi_rdata_reg[10]_i_2_n_0 ),
        .I1(\axi_araddr_reg[4]_9 ),
        .O(D[10]),
        .S(Q[3]));
  MUXF7 \axi_rdata_reg[10]_i_2 
       (.I0(\axi_rdata[10]_i_4_n_0 ),
        .I1(\slv_reg7_reg[10] ),
        .O(\axi_rdata_reg[10]_i_2_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[11]_i_1 
       (.I0(\axi_rdata_reg[11]_i_2_n_0 ),
        .I1(\axi_araddr_reg[4]_10 ),
        .O(D[11]),
        .S(Q[3]));
  MUXF7 \axi_rdata_reg[11]_i_2 
       (.I0(\axi_rdata[11]_i_4_n_0 ),
        .I1(\slv_reg7_reg[11] ),
        .O(\axi_rdata_reg[11]_i_2_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[12]_i_1 
       (.I0(\axi_rdata_reg[12]_i_2_n_0 ),
        .I1(\axi_araddr_reg[4]_11 ),
        .O(D[12]),
        .S(Q[3]));
  MUXF7 \axi_rdata_reg[12]_i_2 
       (.I0(\axi_rdata[12]_i_4_n_0 ),
        .I1(\slv_reg7_reg[12] ),
        .O(\axi_rdata_reg[12]_i_2_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[13]_i_1 
       (.I0(\axi_rdata_reg[13]_i_2_n_0 ),
        .I1(\axi_araddr_reg[4]_12 ),
        .O(D[13]),
        .S(Q[3]));
  MUXF7 \axi_rdata_reg[13]_i_2 
       (.I0(\axi_rdata[13]_i_4_n_0 ),
        .I1(\slv_reg7_reg[13] ),
        .O(\axi_rdata_reg[13]_i_2_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[14]_i_1 
       (.I0(\axi_rdata_reg[14]_i_2_n_0 ),
        .I1(\axi_araddr_reg[4]_13 ),
        .O(D[14]),
        .S(Q[3]));
  MUXF7 \axi_rdata_reg[14]_i_2 
       (.I0(\axi_rdata[14]_i_4_n_0 ),
        .I1(\slv_reg7_reg[14] ),
        .O(\axi_rdata_reg[14]_i_2_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[15]_i_1 
       (.I0(\axi_rdata_reg[15]_i_2_n_0 ),
        .I1(\axi_araddr_reg[4]_14 ),
        .O(D[15]),
        .S(Q[3]));
  MUXF7 \axi_rdata_reg[15]_i_2 
       (.I0(\axi_rdata[15]_i_4_n_0 ),
        .I1(\slv_reg7_reg[15] ),
        .O(\axi_rdata_reg[15]_i_2_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[16]_i_1 
       (.I0(\axi_rdata_reg[16]_i_2_n_0 ),
        .I1(\axi_araddr_reg[4]_15 ),
        .O(D[16]),
        .S(Q[3]));
  MUXF7 \axi_rdata_reg[16]_i_2 
       (.I0(\axi_rdata[16]_i_4_n_0 ),
        .I1(\slv_reg7_reg[16] ),
        .O(\axi_rdata_reg[16]_i_2_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[17]_i_1 
       (.I0(\axi_rdata_reg[17]_i_2_n_0 ),
        .I1(\axi_araddr_reg[4]_16 ),
        .O(D[17]),
        .S(Q[3]));
  MUXF7 \axi_rdata_reg[17]_i_2 
       (.I0(\axi_rdata[17]_i_4_n_0 ),
        .I1(\slv_reg7_reg[17] ),
        .O(\axi_rdata_reg[17]_i_2_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[18]_i_1 
       (.I0(\axi_rdata_reg[18]_i_2_n_0 ),
        .I1(\axi_araddr_reg[4]_17 ),
        .O(D[18]),
        .S(Q[3]));
  MUXF7 \axi_rdata_reg[18]_i_2 
       (.I0(\axi_rdata[18]_i_4_n_0 ),
        .I1(\slv_reg7_reg[18] ),
        .O(\axi_rdata_reg[18]_i_2_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[19]_i_1 
       (.I0(\axi_rdata_reg[19]_i_2_n_0 ),
        .I1(\axi_araddr_reg[4]_18 ),
        .O(D[19]),
        .S(Q[3]));
  MUXF7 \axi_rdata_reg[19]_i_2 
       (.I0(\axi_rdata[19]_i_4_n_0 ),
        .I1(\slv_reg7_reg[19] ),
        .O(\axi_rdata_reg[19]_i_2_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[1]_i_1 
       (.I0(\axi_rdata_reg[1]_i_2_n_0 ),
        .I1(\axi_araddr_reg[4]_0 ),
        .O(D[1]),
        .S(Q[3]));
  MUXF7 \axi_rdata_reg[1]_i_2 
       (.I0(\axi_rdata[1]_i_4_n_0 ),
        .I1(\slv_reg7_reg[1] ),
        .O(\axi_rdata_reg[1]_i_2_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[20]_i_1 
       (.I0(\axi_rdata_reg[20]_i_2_n_0 ),
        .I1(\axi_araddr_reg[4]_19 ),
        .O(D[20]),
        .S(Q[3]));
  MUXF7 \axi_rdata_reg[20]_i_2 
       (.I0(\axi_rdata[20]_i_4_n_0 ),
        .I1(\slv_reg7_reg[20] ),
        .O(\axi_rdata_reg[20]_i_2_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[2]_i_1 
       (.I0(\axi_rdata_reg[2]_i_2_n_0 ),
        .I1(\axi_araddr_reg[4]_1 ),
        .O(D[2]),
        .S(Q[3]));
  MUXF7 \axi_rdata_reg[2]_i_2 
       (.I0(\axi_rdata[2]_i_4_n_0 ),
        .I1(\slv_reg7_reg[2] ),
        .O(\axi_rdata_reg[2]_i_2_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[3]_i_1 
       (.I0(\axi_rdata_reg[3]_i_2_n_0 ),
        .I1(\axi_araddr_reg[4]_2 ),
        .O(D[3]),
        .S(Q[3]));
  MUXF7 \axi_rdata_reg[3]_i_2 
       (.I0(\axi_rdata[3]_i_4_n_0 ),
        .I1(\slv_reg7_reg[3] ),
        .O(\axi_rdata_reg[3]_i_2_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[4]_i_1 
       (.I0(\axi_rdata_reg[4]_i_2_n_0 ),
        .I1(\axi_araddr_reg[4]_3 ),
        .O(D[4]),
        .S(Q[3]));
  MUXF7 \axi_rdata_reg[4]_i_2 
       (.I0(\axi_rdata[4]_i_4_n_0 ),
        .I1(\slv_reg7_reg[4] ),
        .O(\axi_rdata_reg[4]_i_2_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[5]_i_1 
       (.I0(\axi_rdata_reg[5]_i_2_n_0 ),
        .I1(\axi_araddr_reg[4]_4 ),
        .O(D[5]),
        .S(Q[3]));
  MUXF7 \axi_rdata_reg[5]_i_2 
       (.I0(\axi_rdata[5]_i_4_n_0 ),
        .I1(\slv_reg7_reg[5] ),
        .O(\axi_rdata_reg[5]_i_2_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[6]_i_1 
       (.I0(\axi_rdata_reg[6]_i_2_n_0 ),
        .I1(\axi_araddr_reg[4]_5 ),
        .O(D[6]),
        .S(Q[3]));
  MUXF7 \axi_rdata_reg[6]_i_2 
       (.I0(\axi_rdata[6]_i_4_n_0 ),
        .I1(\slv_reg7_reg[6] ),
        .O(\axi_rdata_reg[6]_i_2_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[7]_i_1 
       (.I0(\axi_rdata_reg[7]_i_2_n_0 ),
        .I1(\axi_araddr_reg[4]_6 ),
        .O(D[7]),
        .S(Q[3]));
  MUXF7 \axi_rdata_reg[7]_i_2 
       (.I0(\axi_rdata[7]_i_4_n_0 ),
        .I1(\slv_reg7_reg[7] ),
        .O(\axi_rdata_reg[7]_i_2_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[8]_i_1 
       (.I0(\axi_rdata_reg[8]_i_2_n_0 ),
        .I1(\axi_araddr_reg[4]_7 ),
        .O(D[8]),
        .S(Q[3]));
  MUXF7 \axi_rdata_reg[8]_i_2 
       (.I0(\axi_rdata[8]_i_4_n_0 ),
        .I1(\slv_reg7_reg[8] ),
        .O(\axi_rdata_reg[8]_i_2_n_0 ),
        .S(Q[2]));
  MUXF8 \axi_rdata_reg[9]_i_1 
       (.I0(\axi_rdata_reg[9]_i_2_n_0 ),
        .I1(\axi_araddr_reg[4]_8 ),
        .O(D[9]),
        .S(Q[3]));
  MUXF7 \axi_rdata_reg[9]_i_2 
       (.I0(\axi_rdata[9]_i_4_n_0 ),
        .I1(\slv_reg7_reg[9] ),
        .O(\axi_rdata_reg[9]_i_2_n_0 ),
        .S(Q[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \db_count[0]_i_1 
       (.I0(\db_count_reg_n_0_[0] ),
        .O(db_count));
  LUT4 #(
    .INIT(16'h0001)) 
    \db_count[31]_i_1 
       (.I0(\db_count[31]_i_3_n_0 ),
        .I1(\db_count[31]_i_4_n_0 ),
        .I2(\db_count[31]_i_5_n_0 ),
        .I3(\db_count[31]_i_6_n_0 ),
        .O(\db_count[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \db_count[31]_i_10 
       (.I0(\db_count_reg_n_0_[21] ),
        .I1(\db_count_reg_n_0_[20] ),
        .I2(\db_count_reg_n_0_[23] ),
        .I3(\db_count_reg_n_0_[22] ),
        .O(\db_count[31]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \db_count[31]_i_3 
       (.I0(\db_count_reg_n_0_[10] ),
        .I1(\db_count_reg_n_0_[11] ),
        .I2(\db_count_reg_n_0_[8] ),
        .I3(\db_count_reg_n_0_[9] ),
        .I4(\db_count[31]_i_7_n_0 ),
        .O(\db_count[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \db_count[31]_i_4 
       (.I0(\db_count_reg_n_0_[2] ),
        .I1(\db_count_reg_n_0_[3] ),
        .I2(\db_count_reg_n_0_[0] ),
        .I3(\db_count_reg_n_0_[1] ),
        .I4(\db_count[31]_i_8_n_0 ),
        .O(\db_count[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \db_count[31]_i_5 
       (.I0(\db_count_reg_n_0_[26] ),
        .I1(\db_count_reg_n_0_[27] ),
        .I2(\db_count_reg_n_0_[24] ),
        .I3(\db_count_reg_n_0_[25] ),
        .I4(\db_count[31]_i_9_n_0 ),
        .O(\db_count[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \db_count[31]_i_6 
       (.I0(\db_count_reg_n_0_[19] ),
        .I1(\db_count_reg_n_0_[18] ),
        .I2(\db_count_reg_n_0_[16] ),
        .I3(\db_count_reg_n_0_[17] ),
        .I4(\db_count[31]_i_10_n_0 ),
        .O(\db_count[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \db_count[31]_i_7 
       (.I0(\db_count_reg_n_0_[12] ),
        .I1(\db_count_reg_n_0_[13] ),
        .I2(\db_count_reg_n_0_[15] ),
        .I3(\db_count_reg_n_0_[14] ),
        .O(\db_count[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \db_count[31]_i_8 
       (.I0(\db_count_reg_n_0_[5] ),
        .I1(\db_count_reg_n_0_[4] ),
        .I2(\db_count_reg_n_0_[6] ),
        .I3(\db_count_reg_n_0_[7] ),
        .O(\db_count[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \db_count[31]_i_9 
       (.I0(\db_count_reg_n_0_[29] ),
        .I1(\db_count_reg_n_0_[28] ),
        .I2(\db_count_reg_n_0_[31] ),
        .I3(\db_count_reg_n_0_[30] ),
        .O(\db_count[31]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \db_count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(db_count),
        .Q(\db_count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \db_count_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data0[10]),
        .Q(\db_count_reg_n_0_[10] ),
        .R(\db_count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \db_count_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data0[11]),
        .Q(\db_count_reg_n_0_[11] ),
        .R(\db_count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \db_count_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data0[12]),
        .Q(\db_count_reg_n_0_[12] ),
        .R(\db_count[31]_i_1_n_0 ));
  CARRY4 \db_count_reg[12]_i_1 
       (.CI(\db_count_reg[8]_i_1_n_0 ),
        .CO({\db_count_reg[12]_i_1_n_0 ,\db_count_reg[12]_i_1_n_1 ,\db_count_reg[12]_i_1_n_2 ,\db_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\db_count_reg_n_0_[12] ,\db_count_reg_n_0_[11] ,\db_count_reg_n_0_[10] ,\db_count_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \db_count_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data0[13]),
        .Q(\db_count_reg_n_0_[13] ),
        .R(\db_count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \db_count_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data0[14]),
        .Q(\db_count_reg_n_0_[14] ),
        .R(\db_count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \db_count_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data0[15]),
        .Q(\db_count_reg_n_0_[15] ),
        .R(\db_count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \db_count_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data0[16]),
        .Q(\db_count_reg_n_0_[16] ),
        .R(\db_count[31]_i_1_n_0 ));
  CARRY4 \db_count_reg[16]_i_1 
       (.CI(\db_count_reg[12]_i_1_n_0 ),
        .CO({\db_count_reg[16]_i_1_n_0 ,\db_count_reg[16]_i_1_n_1 ,\db_count_reg[16]_i_1_n_2 ,\db_count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\db_count_reg_n_0_[16] ,\db_count_reg_n_0_[15] ,\db_count_reg_n_0_[14] ,\db_count_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \db_count_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data0[17]),
        .Q(\db_count_reg_n_0_[17] ),
        .R(\db_count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \db_count_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data0[18]),
        .Q(\db_count_reg_n_0_[18] ),
        .R(\db_count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \db_count_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data0[19]),
        .Q(\db_count_reg_n_0_[19] ),
        .R(\db_count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \db_count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data0[1]),
        .Q(\db_count_reg_n_0_[1] ),
        .R(\db_count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \db_count_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data0[20]),
        .Q(\db_count_reg_n_0_[20] ),
        .R(\db_count[31]_i_1_n_0 ));
  CARRY4 \db_count_reg[20]_i_1 
       (.CI(\db_count_reg[16]_i_1_n_0 ),
        .CO({\db_count_reg[20]_i_1_n_0 ,\db_count_reg[20]_i_1_n_1 ,\db_count_reg[20]_i_1_n_2 ,\db_count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S({\db_count_reg_n_0_[20] ,\db_count_reg_n_0_[19] ,\db_count_reg_n_0_[18] ,\db_count_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \db_count_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data0[21]),
        .Q(\db_count_reg_n_0_[21] ),
        .R(\db_count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \db_count_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data0[22]),
        .Q(\db_count_reg_n_0_[22] ),
        .R(\db_count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \db_count_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data0[23]),
        .Q(\db_count_reg_n_0_[23] ),
        .R(\db_count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \db_count_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data0[24]),
        .Q(\db_count_reg_n_0_[24] ),
        .R(\db_count[31]_i_1_n_0 ));
  CARRY4 \db_count_reg[24]_i_1 
       (.CI(\db_count_reg[20]_i_1_n_0 ),
        .CO({\db_count_reg[24]_i_1_n_0 ,\db_count_reg[24]_i_1_n_1 ,\db_count_reg[24]_i_1_n_2 ,\db_count_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S({\db_count_reg_n_0_[24] ,\db_count_reg_n_0_[23] ,\db_count_reg_n_0_[22] ,\db_count_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \db_count_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data0[25]),
        .Q(\db_count_reg_n_0_[25] ),
        .R(\db_count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \db_count_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data0[26]),
        .Q(\db_count_reg_n_0_[26] ),
        .R(\db_count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \db_count_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data0[27]),
        .Q(\db_count_reg_n_0_[27] ),
        .R(\db_count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \db_count_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data0[28]),
        .Q(\db_count_reg_n_0_[28] ),
        .R(\db_count[31]_i_1_n_0 ));
  CARRY4 \db_count_reg[28]_i_1 
       (.CI(\db_count_reg[24]_i_1_n_0 ),
        .CO({\db_count_reg[28]_i_1_n_0 ,\db_count_reg[28]_i_1_n_1 ,\db_count_reg[28]_i_1_n_2 ,\db_count_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S({\db_count_reg_n_0_[28] ,\db_count_reg_n_0_[27] ,\db_count_reg_n_0_[26] ,\db_count_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \db_count_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data0[29]),
        .Q(\db_count_reg_n_0_[29] ),
        .R(\db_count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \db_count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data0[2]),
        .Q(\db_count_reg_n_0_[2] ),
        .R(\db_count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \db_count_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data0[30]),
        .Q(\db_count_reg_n_0_[30] ),
        .R(\db_count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \db_count_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data0[31]),
        .Q(\db_count_reg_n_0_[31] ),
        .R(\db_count[31]_i_1_n_0 ));
  CARRY4 \db_count_reg[31]_i_2 
       (.CI(\db_count_reg[28]_i_1_n_0 ),
        .CO({\NLW_db_count_reg[31]_i_2_CO_UNCONNECTED [3:2],\db_count_reg[31]_i_2_n_2 ,\db_count_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_db_count_reg[31]_i_2_O_UNCONNECTED [3],data0[31:29]}),
        .S({1'b0,\db_count_reg_n_0_[31] ,\db_count_reg_n_0_[30] ,\db_count_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \db_count_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data0[3]),
        .Q(\db_count_reg_n_0_[3] ),
        .R(\db_count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \db_count_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data0[4]),
        .Q(\db_count_reg_n_0_[4] ),
        .R(\db_count[31]_i_1_n_0 ));
  CARRY4 \db_count_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\db_count_reg[4]_i_1_n_0 ,\db_count_reg[4]_i_1_n_1 ,\db_count_reg[4]_i_1_n_2 ,\db_count_reg[4]_i_1_n_3 }),
        .CYINIT(\db_count_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\db_count_reg_n_0_[4] ,\db_count_reg_n_0_[3] ,\db_count_reg_n_0_[2] ,\db_count_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \db_count_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data0[5]),
        .Q(\db_count_reg_n_0_[5] ),
        .R(\db_count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \db_count_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data0[6]),
        .Q(\db_count_reg_n_0_[6] ),
        .R(\db_count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \db_count_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data0[7]),
        .Q(\db_count_reg_n_0_[7] ),
        .R(\db_count[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \db_count_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data0[8]),
        .Q(\db_count_reg_n_0_[8] ),
        .R(\db_count[31]_i_1_n_0 ));
  CARRY4 \db_count_reg[8]_i_1 
       (.CI(\db_count_reg[4]_i_1_n_0 ),
        .CO({\db_count_reg[8]_i_1_n_0 ,\db_count_reg[8]_i_1_n_1 ,\db_count_reg[8]_i_1_n_2 ,\db_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\db_count_reg_n_0_[8] ,\db_count_reg_n_0_[7] ,\db_count_reg_n_0_[6] ,\db_count_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \db_count_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(data0[9]),
        .Q(\db_count_reg_n_0_[9] ),
        .R(\db_count[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE8000)) 
    \pbtn_db[1]_i_1 
       (.I0(shift_pb1[3]),
        .I1(shift_pb1[2]),
        .I2(shift_pb1[1]),
        .I3(shift_pb1[0]),
        .I4(btnsw_in[16]),
        .O(\pbtn_db[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE8000)) 
    \pbtn_db[2]_i_1 
       (.I0(shift_pb2[3]),
        .I1(shift_pb2[2]),
        .I2(shift_pb2[1]),
        .I3(shift_pb2[0]),
        .I4(btnsw_in[17]),
        .O(\pbtn_db[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE8000)) 
    \pbtn_db[3]_i_1 
       (.I0(shift_pb3[3]),
        .I1(shift_pb3[2]),
        .I2(shift_pb3[1]),
        .I3(shift_pb3[0]),
        .I4(btnsw_in[18]),
        .O(\pbtn_db[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE8000)) 
    \pbtn_db[4]_i_1 
       (.I0(shift_pb4[3]),
        .I1(shift_pb4[2]),
        .I2(shift_pb4[1]),
        .I3(shift_pb4[0]),
        .I4(btnsw_in[19]),
        .O(\pbtn_db[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE8000)) 
    \pbtn_db[5]_i_1 
       (.I0(shift_pb5[3]),
        .I1(shift_pb5[2]),
        .I2(shift_pb5[1]),
        .I3(shift_pb5[0]),
        .I4(btnsw_in[20]),
        .O(\pbtn_db[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pbtn_db_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\pbtn_db[1]_i_1_n_0 ),
        .Q(btnsw_in[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pbtn_db_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\pbtn_db[2]_i_1_n_0 ),
        .Q(btnsw_in[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pbtn_db_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\pbtn_db[3]_i_1_n_0 ),
        .Q(btnsw_in[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pbtn_db_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\pbtn_db[4]_i_1_n_0 ),
        .Q(btnsw_in[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pbtn_db_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\pbtn_db[5]_i_1_n_0 ),
        .Q(btnsw_in[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_pb1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(pbtn_in[0]),
        .Q(shift_pb1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_pb1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_pb1[0]),
        .Q(shift_pb1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_pb1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_pb1[1]),
        .Q(shift_pb1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_pb1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_pb1[2]),
        .Q(shift_pb1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_pb2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(pbtn_in[1]),
        .Q(shift_pb2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_pb2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_pb2[0]),
        .Q(shift_pb2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_pb2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_pb2[1]),
        .Q(shift_pb2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_pb2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_pb2[2]),
        .Q(shift_pb2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_pb3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(pbtn_in[2]),
        .Q(shift_pb3[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_pb3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_pb3[0]),
        .Q(shift_pb3[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_pb3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_pb3[1]),
        .Q(shift_pb3[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_pb3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_pb3[2]),
        .Q(shift_pb3[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_pb4_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(pbtn_in[3]),
        .Q(shift_pb4[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_pb4_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_pb4[0]),
        .Q(shift_pb4[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_pb4_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_pb4[1]),
        .Q(shift_pb4[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_pb4_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_pb4[2]),
        .Q(shift_pb4[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_pb5_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(pbtn_in[4]),
        .Q(shift_pb5[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_pb5_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_pb5[0]),
        .Q(shift_pb5[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_pb5_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_pb5[1]),
        .Q(shift_pb5[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_pb5_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_pb5[2]),
        .Q(shift_pb5[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(sw[0]),
        .Q(shift_swtch0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_swtch0[0]),
        .Q(shift_swtch0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_swtch0[1]),
        .Q(shift_swtch0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_swtch0[2]),
        .Q(shift_swtch0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch10_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(sw[10]),
        .Q(shift_swtch100[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch10_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_swtch100[1]),
        .Q(shift_swtch100[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch10_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_swtch100[2]),
        .Q(shift_swtch100[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch10_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_swtch100[3]),
        .Q(\shift_swtch10_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch11_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(sw[11]),
        .Q(shift_swtch11[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch11_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_swtch11[0]),
        .Q(shift_swtch11[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch11_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_swtch11[1]),
        .Q(shift_swtch11[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch11_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_swtch11[2]),
        .Q(shift_swtch11[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch12_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(sw[12]),
        .Q(shift_swtch12[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch12_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_swtch12[0]),
        .Q(shift_swtch12[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch12_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_swtch12[1]),
        .Q(shift_swtch12[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch12_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_swtch12[2]),
        .Q(shift_swtch12[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch13_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(sw[13]),
        .Q(shift_swtch13[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch13_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_swtch13[0]),
        .Q(shift_swtch13[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch13_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_swtch13[1]),
        .Q(shift_swtch13[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch13_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_swtch13[2]),
        .Q(shift_swtch13[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch14_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(sw[14]),
        .Q(shift_swtch14[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch14_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_swtch14[0]),
        .Q(shift_swtch14[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch14_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_swtch14[1]),
        .Q(shift_swtch14[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch14_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_swtch14[2]),
        .Q(shift_swtch14[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch15_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(sw[15]),
        .Q(shift_swtch15[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch15_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_swtch15[0]),
        .Q(shift_swtch15[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch15_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_swtch15[1]),
        .Q(shift_swtch15[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch15_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_swtch15[2]),
        .Q(shift_swtch15[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(sw[1]),
        .Q(shift_swtch1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_swtch1[0]),
        .Q(shift_swtch1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_swtch1[1]),
        .Q(shift_swtch1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_swtch1[2]),
        .Q(shift_swtch1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(sw[2]),
        .Q(shift_swtch2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_swtch2[0]),
        .Q(shift_swtch2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_swtch2[1]),
        .Q(shift_swtch2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_swtch2[2]),
        .Q(shift_swtch2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(sw[3]),
        .Q(shift_swtch3[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_swtch3[0]),
        .Q(shift_swtch3[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_swtch3[1]),
        .Q(shift_swtch3[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_swtch3[2]),
        .Q(shift_swtch3[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch4_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(sw[4]),
        .Q(shift_swtch4[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch4_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_swtch4[0]),
        .Q(shift_swtch4[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch4_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_swtch4[1]),
        .Q(shift_swtch4[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch4_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_swtch4[2]),
        .Q(shift_swtch4[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch5_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(sw[5]),
        .Q(shift_swtch5[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch5_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_swtch5[0]),
        .Q(shift_swtch5[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch5_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_swtch5[1]),
        .Q(shift_swtch5[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch5_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_swtch5[2]),
        .Q(shift_swtch5[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch6_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(sw[6]),
        .Q(shift_swtch6[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch6_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_swtch6[0]),
        .Q(shift_swtch6[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch6_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_swtch6[1]),
        .Q(shift_swtch6[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch6_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_swtch6[2]),
        .Q(shift_swtch6[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch7_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(sw[7]),
        .Q(shift_swtch7[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch7_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_swtch7[0]),
        .Q(shift_swtch7[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch7_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_swtch7[1]),
        .Q(shift_swtch7[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch7_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_swtch7[2]),
        .Q(shift_swtch7[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch8_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(sw[8]),
        .Q(shift_swtch8[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch8_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_swtch8[0]),
        .Q(shift_swtch8[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch8_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_swtch8[1]),
        .Q(shift_swtch8[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch8_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_swtch8[2]),
        .Q(shift_swtch8[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch9_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(sw[9]),
        .Q(shift_swtch9[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch9_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_swtch9[0]),
        .Q(shift_swtch9[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch9_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_swtch9[1]),
        .Q(shift_swtch9[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_swtch9_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\db_count[31]_i_1_n_0 ),
        .D(shift_swtch9[2]),
        .Q(shift_swtch9[3]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFE8000)) 
    \swtch_db[0]_i_1 
       (.I0(shift_swtch0[3]),
        .I1(shift_swtch0[2]),
        .I2(shift_swtch0[1]),
        .I3(shift_swtch0[0]),
        .I4(btnsw_in[0]),
        .O(\swtch_db[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE8000)) 
    \swtch_db[10]_i_1 
       (.I0(\shift_swtch10_reg_n_0_[3] ),
        .I1(shift_swtch100[3]),
        .I2(shift_swtch100[2]),
        .I3(shift_swtch100[1]),
        .I4(btnsw_in[10]),
        .O(\swtch_db[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE8000)) 
    \swtch_db[11]_i_1 
       (.I0(shift_swtch11[3]),
        .I1(shift_swtch11[2]),
        .I2(shift_swtch11[1]),
        .I3(shift_swtch11[0]),
        .I4(btnsw_in[11]),
        .O(\swtch_db[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE8000)) 
    \swtch_db[12]_i_1 
       (.I0(shift_swtch12[3]),
        .I1(shift_swtch12[2]),
        .I2(shift_swtch12[1]),
        .I3(shift_swtch12[0]),
        .I4(btnsw_in[12]),
        .O(\swtch_db[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE8000)) 
    \swtch_db[13]_i_1 
       (.I0(shift_swtch13[3]),
        .I1(shift_swtch13[2]),
        .I2(shift_swtch13[1]),
        .I3(shift_swtch13[0]),
        .I4(btnsw_in[13]),
        .O(\swtch_db[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE8000)) 
    \swtch_db[14]_i_1 
       (.I0(shift_swtch14[3]),
        .I1(shift_swtch14[2]),
        .I2(shift_swtch14[1]),
        .I3(shift_swtch14[0]),
        .I4(btnsw_in[14]),
        .O(\swtch_db[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE8000)) 
    \swtch_db[15]_i_1 
       (.I0(shift_swtch15[3]),
        .I1(shift_swtch15[2]),
        .I2(shift_swtch15[1]),
        .I3(shift_swtch15[0]),
        .I4(btnsw_in[15]),
        .O(\swtch_db[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE8000)) 
    \swtch_db[1]_i_1 
       (.I0(shift_swtch1[3]),
        .I1(shift_swtch1[2]),
        .I2(shift_swtch1[1]),
        .I3(shift_swtch1[0]),
        .I4(btnsw_in[1]),
        .O(\swtch_db[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE8000)) 
    \swtch_db[2]_i_1 
       (.I0(shift_swtch2[3]),
        .I1(shift_swtch2[2]),
        .I2(shift_swtch2[1]),
        .I3(shift_swtch2[0]),
        .I4(btnsw_in[2]),
        .O(\swtch_db[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE8000)) 
    \swtch_db[3]_i_1 
       (.I0(shift_swtch3[3]),
        .I1(shift_swtch3[2]),
        .I2(shift_swtch3[1]),
        .I3(shift_swtch3[0]),
        .I4(btnsw_in[3]),
        .O(\swtch_db[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE8000)) 
    \swtch_db[4]_i_1 
       (.I0(shift_swtch4[3]),
        .I1(shift_swtch4[2]),
        .I2(shift_swtch4[1]),
        .I3(shift_swtch4[0]),
        .I4(btnsw_in[4]),
        .O(\swtch_db[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE8000)) 
    \swtch_db[5]_i_1 
       (.I0(shift_swtch5[3]),
        .I1(shift_swtch5[2]),
        .I2(shift_swtch5[1]),
        .I3(shift_swtch5[0]),
        .I4(btnsw_in[5]),
        .O(\swtch_db[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE8000)) 
    \swtch_db[6]_i_1 
       (.I0(shift_swtch6[3]),
        .I1(shift_swtch6[2]),
        .I2(shift_swtch6[1]),
        .I3(shift_swtch6[0]),
        .I4(btnsw_in[6]),
        .O(\swtch_db[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE8000)) 
    \swtch_db[7]_i_1 
       (.I0(shift_swtch7[3]),
        .I1(shift_swtch7[2]),
        .I2(shift_swtch7[1]),
        .I3(shift_swtch7[0]),
        .I4(btnsw_in[7]),
        .O(\swtch_db[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE8000)) 
    \swtch_db[8]_i_1 
       (.I0(shift_swtch8[3]),
        .I1(shift_swtch8[2]),
        .I2(shift_swtch8[1]),
        .I3(shift_swtch8[0]),
        .I4(btnsw_in[8]),
        .O(\swtch_db[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE8000)) 
    \swtch_db[9]_i_1 
       (.I0(shift_swtch9[3]),
        .I1(shift_swtch9[2]),
        .I2(shift_swtch9[1]),
        .I3(shift_swtch9[0]),
        .I4(btnsw_in[9]),
        .O(\swtch_db[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \swtch_db_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\swtch_db[0]_i_1_n_0 ),
        .Q(btnsw_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \swtch_db_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\swtch_db[10]_i_1_n_0 ),
        .Q(btnsw_in[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \swtch_db_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\swtch_db[11]_i_1_n_0 ),
        .Q(btnsw_in[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \swtch_db_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\swtch_db[12]_i_1_n_0 ),
        .Q(btnsw_in[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \swtch_db_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\swtch_db[13]_i_1_n_0 ),
        .Q(btnsw_in[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \swtch_db_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\swtch_db[14]_i_1_n_0 ),
        .Q(btnsw_in[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \swtch_db_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\swtch_db[15]_i_1_n_0 ),
        .Q(btnsw_in[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \swtch_db_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\swtch_db[1]_i_1_n_0 ),
        .Q(btnsw_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \swtch_db_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\swtch_db[2]_i_1_n_0 ),
        .Q(btnsw_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \swtch_db_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\swtch_db[3]_i_1_n_0 ),
        .Q(btnsw_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \swtch_db_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\swtch_db[4]_i_1_n_0 ),
        .Q(btnsw_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \swtch_db_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\swtch_db[5]_i_1_n_0 ),
        .Q(btnsw_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \swtch_db_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\swtch_db[6]_i_1_n_0 ),
        .Q(btnsw_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \swtch_db_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\swtch_db[7]_i_1_n_0 ),
        .Q(btnsw_in[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \swtch_db_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\swtch_db[8]_i_1_n_0 ),
        .Q(btnsw_in[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \swtch_db_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\swtch_db[9]_i_1_n_0 ),
        .Q(btnsw_in[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "nexys4IO_v2_0" *) 
module embsys_nexys4IO_0_0_nexys4IO_v2_0
   (S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    an,
    Q,
    led,
    s00_axi_rdata,
    RGB1_Blue,
    RGB1_Green,
    RGB1_Red,
    RGB2_Blue,
    RGB2_Green,
    RGB2_Red,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_arvalid,
    s00_axi_aclk,
    btnR,
    btnL,
    btnD,
    btnU,
    btnC,
    sw,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    Clock,
    s00_axi_aresetn,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [7:0]an;
  output [7:0]Q;
  output [15:0]led;
  output [31:0]s00_axi_rdata;
  output RGB1_Blue;
  output RGB1_Green;
  output RGB1_Red;
  output RGB2_Blue;
  output RGB2_Green;
  output RGB2_Red;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_arvalid;
  input s00_axi_aclk;
  input btnR;
  input btnL;
  input btnD;
  input btnU;
  input btnC;
  input [15:0]sw;
  input [3:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_araddr;
  input Clock;
  input s00_axi_aresetn;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;
  input s00_axi_rready;

  wire Clock;
  wire [7:0]Q;
  wire RGB1_Blue;
  wire RGB1_Green;
  wire RGB1_Red;
  wire RGB2_Blue;
  wire RGB2_Green;
  wire RGB2_Red;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire [7:0]an;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire btnC;
  wire btnD;
  wire btnL;
  wire btnR;
  wire btnU;
  wire [15:0]led;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [15:0]sw;

  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(S_AXI_WREADY),
        .I1(S_AXI_AWREADY),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  LUT4 #(
    .INIT(16'h0F88)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rready),
        .I3(s00_axi_rvalid),
        .O(axi_rvalid_i_1_n_0));
  embsys_nexys4IO_0_0_nexys4IO_v2_0_S00_AXI nexys4IO_v2_0_S00_AXI_inst
       (.Clock(Clock),
        .Q(Q),
        .RGB1_Blue(RGB1_Blue),
        .RGB1_Green(RGB1_Green),
        .RGB1_Red(RGB1_Red),
        .RGB2_Blue(RGB2_Blue),
        .RGB2_Green(RGB2_Green),
        .RGB2_Red(RGB2_Red),
        .an(an),
        .axi_arready_reg_0(axi_rvalid_i_1_n_0),
        .axi_wready_reg_0(axi_bvalid_i_1_n_0),
        .led(led),
        .pbtn_in({btnC,btnU,btnD,btnL,btnR}),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(S_AXI_ARREADY),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awready(S_AXI_AWREADY),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(S_AXI_WREADY),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .sw(sw));
endmodule

(* ORIG_REF_NAME = "nexys4IO_v2_0_S00_AXI" *) 
module embsys_nexys4IO_0_0_nexys4IO_v2_0_S00_AXI
   (s00_axi_awready,
    s00_axi_wready,
    s00_axi_arready,
    s00_axi_rvalid,
    s00_axi_bvalid,
    Q,
    led,
    s00_axi_rdata,
    an,
    RGB1_Blue,
    RGB1_Green,
    RGB1_Red,
    RGB2_Blue,
    RGB2_Green,
    RGB2_Red,
    s00_axi_aclk,
    s00_axi_arvalid,
    axi_wready_reg_0,
    axi_arready_reg_0,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_wstrb,
    pbtn_in,
    sw,
    Clock,
    s00_axi_aresetn);
  output s00_axi_awready;
  output s00_axi_wready;
  output s00_axi_arready;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  output [7:0]Q;
  output [15:0]led;
  output [31:0]s00_axi_rdata;
  output [7:0]an;
  output RGB1_Blue;
  output RGB1_Green;
  output RGB1_Red;
  output RGB2_Blue;
  output RGB2_Green;
  output RGB2_Red;
  input s00_axi_aclk;
  input s00_axi_arvalid;
  input axi_wready_reg_0;
  input axi_arready_reg_0;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [3:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;
  input [4:0]pbtn_in;
  input [15:0]sw;
  input Clock;
  input s00_axi_aresetn;

  wire Clock;
  wire [7:0]Q;
  wire RGB1_Blue;
  wire RGB1_Green;
  wire RGB1_Red;
  wire RGB2_Blue;
  wire RGB2_Green;
  wire RGB2_Red;
  wire SSB_n_0;
  wire [7:0]an;
  wire axi_arready_i_1_n_0;
  wire axi_arready_reg_0;
  wire axi_awready_i_1_n_0;
  wire \axi_rdata[0]_i_5_n_0 ;
  wire \axi_rdata[0]_i_6_n_0 ;
  wire \axi_rdata[0]_i_7_n_0 ;
  wire \axi_rdata[10]_i_5_n_0 ;
  wire \axi_rdata[10]_i_6_n_0 ;
  wire \axi_rdata[10]_i_7_n_0 ;
  wire \axi_rdata[11]_i_5_n_0 ;
  wire \axi_rdata[11]_i_6_n_0 ;
  wire \axi_rdata[11]_i_7_n_0 ;
  wire \axi_rdata[12]_i_5_n_0 ;
  wire \axi_rdata[12]_i_6_n_0 ;
  wire \axi_rdata[12]_i_7_n_0 ;
  wire \axi_rdata[13]_i_5_n_0 ;
  wire \axi_rdata[13]_i_6_n_0 ;
  wire \axi_rdata[13]_i_7_n_0 ;
  wire \axi_rdata[14]_i_5_n_0 ;
  wire \axi_rdata[14]_i_6_n_0 ;
  wire \axi_rdata[14]_i_7_n_0 ;
  wire \axi_rdata[15]_i_5_n_0 ;
  wire \axi_rdata[15]_i_6_n_0 ;
  wire \axi_rdata[15]_i_7_n_0 ;
  wire \axi_rdata[16]_i_5_n_0 ;
  wire \axi_rdata[16]_i_6_n_0 ;
  wire \axi_rdata[16]_i_7_n_0 ;
  wire \axi_rdata[17]_i_5_n_0 ;
  wire \axi_rdata[17]_i_6_n_0 ;
  wire \axi_rdata[17]_i_7_n_0 ;
  wire \axi_rdata[18]_i_5_n_0 ;
  wire \axi_rdata[18]_i_6_n_0 ;
  wire \axi_rdata[18]_i_7_n_0 ;
  wire \axi_rdata[19]_i_5_n_0 ;
  wire \axi_rdata[19]_i_6_n_0 ;
  wire \axi_rdata[19]_i_7_n_0 ;
  wire \axi_rdata[1]_i_5_n_0 ;
  wire \axi_rdata[1]_i_6_n_0 ;
  wire \axi_rdata[1]_i_7_n_0 ;
  wire \axi_rdata[20]_i_5_n_0 ;
  wire \axi_rdata[20]_i_6_n_0 ;
  wire \axi_rdata[20]_i_7_n_0 ;
  wire \axi_rdata[21]_i_4_n_0 ;
  wire \axi_rdata[21]_i_5_n_0 ;
  wire \axi_rdata[21]_i_6_n_0 ;
  wire \axi_rdata[21]_i_7_n_0 ;
  wire \axi_rdata[22]_i_4_n_0 ;
  wire \axi_rdata[22]_i_5_n_0 ;
  wire \axi_rdata[22]_i_6_n_0 ;
  wire \axi_rdata[22]_i_7_n_0 ;
  wire \axi_rdata[23]_i_4_n_0 ;
  wire \axi_rdata[23]_i_5_n_0 ;
  wire \axi_rdata[23]_i_6_n_0 ;
  wire \axi_rdata[23]_i_7_n_0 ;
  wire \axi_rdata[24]_i_4_n_0 ;
  wire \axi_rdata[24]_i_5_n_0 ;
  wire \axi_rdata[24]_i_6_n_0 ;
  wire \axi_rdata[24]_i_7_n_0 ;
  wire \axi_rdata[25]_i_4_n_0 ;
  wire \axi_rdata[25]_i_5_n_0 ;
  wire \axi_rdata[25]_i_6_n_0 ;
  wire \axi_rdata[25]_i_7_n_0 ;
  wire \axi_rdata[26]_i_4_n_0 ;
  wire \axi_rdata[26]_i_5_n_0 ;
  wire \axi_rdata[26]_i_6_n_0 ;
  wire \axi_rdata[26]_i_7_n_0 ;
  wire \axi_rdata[27]_i_4_n_0 ;
  wire \axi_rdata[27]_i_5_n_0 ;
  wire \axi_rdata[27]_i_6_n_0 ;
  wire \axi_rdata[27]_i_7_n_0 ;
  wire \axi_rdata[28]_i_4_n_0 ;
  wire \axi_rdata[28]_i_5_n_0 ;
  wire \axi_rdata[28]_i_6_n_0 ;
  wire \axi_rdata[28]_i_7_n_0 ;
  wire \axi_rdata[29]_i_4_n_0 ;
  wire \axi_rdata[29]_i_5_n_0 ;
  wire \axi_rdata[29]_i_6_n_0 ;
  wire \axi_rdata[29]_i_7_n_0 ;
  wire \axi_rdata[2]_i_5_n_0 ;
  wire \axi_rdata[2]_i_6_n_0 ;
  wire \axi_rdata[2]_i_7_n_0 ;
  wire \axi_rdata[30]_i_4_n_0 ;
  wire \axi_rdata[30]_i_5_n_0 ;
  wire \axi_rdata[30]_i_6_n_0 ;
  wire \axi_rdata[30]_i_7_n_0 ;
  wire \axi_rdata[31]_i_4_n_0 ;
  wire \axi_rdata[31]_i_5_n_0 ;
  wire \axi_rdata[31]_i_6_n_0 ;
  wire \axi_rdata[31]_i_7_n_0 ;
  wire \axi_rdata[3]_i_5_n_0 ;
  wire \axi_rdata[3]_i_6_n_0 ;
  wire \axi_rdata[3]_i_7_n_0 ;
  wire \axi_rdata[4]_i_5_n_0 ;
  wire \axi_rdata[4]_i_6_n_0 ;
  wire \axi_rdata[4]_i_7_n_0 ;
  wire \axi_rdata[5]_i_5_n_0 ;
  wire \axi_rdata[5]_i_6_n_0 ;
  wire \axi_rdata[5]_i_7_n_0 ;
  wire \axi_rdata[6]_i_5_n_0 ;
  wire \axi_rdata[6]_i_6_n_0 ;
  wire \axi_rdata[6]_i_7_n_0 ;
  wire \axi_rdata[7]_i_5_n_0 ;
  wire \axi_rdata[7]_i_6_n_0 ;
  wire \axi_rdata[7]_i_7_n_0 ;
  wire \axi_rdata[8]_i_5_n_0 ;
  wire \axi_rdata[8]_i_6_n_0 ;
  wire \axi_rdata[8]_i_7_n_0 ;
  wire \axi_rdata[9]_i_5_n_0 ;
  wire \axi_rdata[9]_i_6_n_0 ;
  wire \axi_rdata[9]_i_7_n_0 ;
  wire \axi_rdata_reg[0]_i_3_n_0 ;
  wire \axi_rdata_reg[10]_i_3_n_0 ;
  wire \axi_rdata_reg[11]_i_3_n_0 ;
  wire \axi_rdata_reg[12]_i_3_n_0 ;
  wire \axi_rdata_reg[13]_i_3_n_0 ;
  wire \axi_rdata_reg[14]_i_3_n_0 ;
  wire \axi_rdata_reg[15]_i_3_n_0 ;
  wire \axi_rdata_reg[16]_i_3_n_0 ;
  wire \axi_rdata_reg[17]_i_3_n_0 ;
  wire \axi_rdata_reg[18]_i_3_n_0 ;
  wire \axi_rdata_reg[19]_i_3_n_0 ;
  wire \axi_rdata_reg[1]_i_3_n_0 ;
  wire \axi_rdata_reg[20]_i_3_n_0 ;
  wire \axi_rdata_reg[21]_i_2_n_0 ;
  wire \axi_rdata_reg[21]_i_3_n_0 ;
  wire \axi_rdata_reg[22]_i_2_n_0 ;
  wire \axi_rdata_reg[22]_i_3_n_0 ;
  wire \axi_rdata_reg[23]_i_2_n_0 ;
  wire \axi_rdata_reg[23]_i_3_n_0 ;
  wire \axi_rdata_reg[24]_i_2_n_0 ;
  wire \axi_rdata_reg[24]_i_3_n_0 ;
  wire \axi_rdata_reg[25]_i_2_n_0 ;
  wire \axi_rdata_reg[25]_i_3_n_0 ;
  wire \axi_rdata_reg[26]_i_2_n_0 ;
  wire \axi_rdata_reg[26]_i_3_n_0 ;
  wire \axi_rdata_reg[27]_i_2_n_0 ;
  wire \axi_rdata_reg[27]_i_3_n_0 ;
  wire \axi_rdata_reg[28]_i_2_n_0 ;
  wire \axi_rdata_reg[28]_i_3_n_0 ;
  wire \axi_rdata_reg[29]_i_2_n_0 ;
  wire \axi_rdata_reg[29]_i_3_n_0 ;
  wire \axi_rdata_reg[2]_i_3_n_0 ;
  wire \axi_rdata_reg[30]_i_2_n_0 ;
  wire \axi_rdata_reg[30]_i_3_n_0 ;
  wire \axi_rdata_reg[31]_i_2_n_0 ;
  wire \axi_rdata_reg[31]_i_3_n_0 ;
  wire \axi_rdata_reg[3]_i_3_n_0 ;
  wire \axi_rdata_reg[4]_i_3_n_0 ;
  wire \axi_rdata_reg[5]_i_3_n_0 ;
  wire \axi_rdata_reg[6]_i_3_n_0 ;
  wire \axi_rdata_reg[7]_i_3_n_0 ;
  wire \axi_rdata_reg[8]_i_3_n_0 ;
  wire \axi_rdata_reg[9]_i_3_n_0 ;
  wire axi_wready_i_1_n_0;
  wire axi_wready_reg_0;
  wire [7:0]decpts;
  wire [4:0]dig1;
  wire [4:0]dig2;
  wire [4:0]dig3;
  wire [4:0]dig5;
  wire [4:0]dig6;
  wire [4:0]dig7;
  wire [15:0]led;
  wire [3:0]p_0_in_0;
  wire [31:7]p_1_in;
  wire [4:0]pbtn_in;
  wire [31:0]reg_data_out;
  wire [7:0]rgb1_greendc;
  wire [7:0]rgb1_reddc;
  wire [7:0]rgb2_greendc;
  wire [7:0]rgb2_reddc;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [3:0]sel0;
  wire [31:16]slv_reg1;
  wire [31:0]slv_reg10;
  wire \slv_reg10[15]_i_1_n_0 ;
  wire \slv_reg10[23]_i_1_n_0 ;
  wire \slv_reg10[31]_i_1_n_0 ;
  wire \slv_reg10[7]_i_1_n_0 ;
  wire [31:0]slv_reg11;
  wire \slv_reg11[15]_i_1_n_0 ;
  wire \slv_reg11[23]_i_1_n_0 ;
  wire \slv_reg11[31]_i_1_n_0 ;
  wire \slv_reg11[7]_i_1_n_0 ;
  wire [31:0]slv_reg12;
  wire \slv_reg12[15]_i_1_n_0 ;
  wire \slv_reg12[23]_i_1_n_0 ;
  wire \slv_reg12[31]_i_1_n_0 ;
  wire \slv_reg12[7]_i_1_n_0 ;
  wire [31:0]slv_reg13;
  wire \slv_reg13[15]_i_1_n_0 ;
  wire \slv_reg13[23]_i_1_n_0 ;
  wire \slv_reg13[31]_i_1_n_0 ;
  wire \slv_reg13[7]_i_1_n_0 ;
  wire [31:0]slv_reg14;
  wire \slv_reg14[15]_i_1_n_0 ;
  wire \slv_reg14[23]_i_1_n_0 ;
  wire \slv_reg14[31]_i_1_n_0 ;
  wire \slv_reg14[7]_i_1_n_0 ;
  wire [31:0]slv_reg15;
  wire \slv_reg15[15]_i_1_n_0 ;
  wire \slv_reg15[23]_i_1_n_0 ;
  wire \slv_reg15[31]_i_1_n_0 ;
  wire \slv_reg15[7]_i_1_n_0 ;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire \slv_reg2_reg_n_0_[0] ;
  wire \slv_reg2_reg_n_0_[1] ;
  wire \slv_reg2_reg_n_0_[24] ;
  wire \slv_reg2_reg_n_0_[25] ;
  wire \slv_reg2_reg_n_0_[26] ;
  wire \slv_reg2_reg_n_0_[27] ;
  wire \slv_reg2_reg_n_0_[28] ;
  wire \slv_reg2_reg_n_0_[29] ;
  wire \slv_reg2_reg_n_0_[2] ;
  wire \slv_reg2_reg_n_0_[30] ;
  wire \slv_reg2_reg_n_0_[31] ;
  wire \slv_reg2_reg_n_0_[3] ;
  wire \slv_reg2_reg_n_0_[4] ;
  wire \slv_reg2_reg_n_0_[5] ;
  wire \slv_reg2_reg_n_0_[6] ;
  wire \slv_reg2_reg_n_0_[7] ;
  wire [31:3]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire [2:0]slv_reg3__0;
  wire \slv_reg4[15]_i_1_n_0 ;
  wire \slv_reg4[23]_i_1_n_0 ;
  wire \slv_reg4[31]_i_1_n_0 ;
  wire \slv_reg4[7]_i_1_n_0 ;
  wire \slv_reg4_reg_n_0_[0] ;
  wire \slv_reg4_reg_n_0_[1] ;
  wire \slv_reg4_reg_n_0_[24] ;
  wire \slv_reg4_reg_n_0_[25] ;
  wire \slv_reg4_reg_n_0_[26] ;
  wire \slv_reg4_reg_n_0_[27] ;
  wire \slv_reg4_reg_n_0_[28] ;
  wire \slv_reg4_reg_n_0_[29] ;
  wire \slv_reg4_reg_n_0_[2] ;
  wire \slv_reg4_reg_n_0_[30] ;
  wire \slv_reg4_reg_n_0_[31] ;
  wire \slv_reg4_reg_n_0_[3] ;
  wire \slv_reg4_reg_n_0_[4] ;
  wire \slv_reg4_reg_n_0_[5] ;
  wire \slv_reg4_reg_n_0_[6] ;
  wire \slv_reg4_reg_n_0_[7] ;
  wire [31:3]slv_reg5;
  wire \slv_reg5[15]_i_1_n_0 ;
  wire \slv_reg5[23]_i_1_n_0 ;
  wire \slv_reg5[31]_i_1_n_0 ;
  wire \slv_reg5[7]_i_1_n_0 ;
  wire [2:0]slv_reg5__0;
  wire \slv_reg6[15]_i_1_n_0 ;
  wire \slv_reg6[23]_i_1_n_0 ;
  wire \slv_reg6[31]_i_1_n_0 ;
  wire \slv_reg6[7]_i_1_n_0 ;
  wire \slv_reg6_reg_n_0_[0] ;
  wire \slv_reg6_reg_n_0_[11] ;
  wire \slv_reg6_reg_n_0_[17] ;
  wire \slv_reg6_reg_n_0_[1] ;
  wire \slv_reg6_reg_n_0_[23] ;
  wire \slv_reg6_reg_n_0_[28] ;
  wire \slv_reg6_reg_n_0_[29] ;
  wire \slv_reg6_reg_n_0_[2] ;
  wire \slv_reg6_reg_n_0_[30] ;
  wire \slv_reg6_reg_n_0_[31] ;
  wire \slv_reg6_reg_n_0_[3] ;
  wire \slv_reg6_reg_n_0_[4] ;
  wire \slv_reg6_reg_n_0_[5] ;
  wire \slv_reg7[15]_i_1_n_0 ;
  wire \slv_reg7[23]_i_1_n_0 ;
  wire \slv_reg7[31]_i_1_n_0 ;
  wire \slv_reg7[7]_i_1_n_0 ;
  wire \slv_reg7_reg_n_0_[0] ;
  wire \slv_reg7_reg_n_0_[11] ;
  wire \slv_reg7_reg_n_0_[17] ;
  wire \slv_reg7_reg_n_0_[1] ;
  wire \slv_reg7_reg_n_0_[23] ;
  wire \slv_reg7_reg_n_0_[28] ;
  wire \slv_reg7_reg_n_0_[29] ;
  wire \slv_reg7_reg_n_0_[2] ;
  wire \slv_reg7_reg_n_0_[30] ;
  wire \slv_reg7_reg_n_0_[31] ;
  wire \slv_reg7_reg_n_0_[3] ;
  wire \slv_reg7_reg_n_0_[4] ;
  wire \slv_reg7_reg_n_0_[5] ;
  wire [31:0]slv_reg8;
  wire \slv_reg8[15]_i_1_n_0 ;
  wire \slv_reg8[23]_i_1_n_0 ;
  wire \slv_reg8[31]_i_1_n_0 ;
  wire \slv_reg8[7]_i_1_n_0 ;
  wire [31:0]slv_reg9;
  wire \slv_reg9[15]_i_1_n_0 ;
  wire \slv_reg9[23]_i_1_n_0 ;
  wire \slv_reg9[31]_i_1_n_0 ;
  wire \slv_reg9[7]_i_1_n_0 ;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;
  wire [15:0]sw;

  embsys_nexys4IO_0_0_debounce DB
       (.D(reg_data_out[20:0]),
        .Q(sel0),
        .\axi_araddr_reg[4] (\axi_rdata_reg[0]_i_3_n_0 ),
        .\axi_araddr_reg[4]_0 (\axi_rdata_reg[1]_i_3_n_0 ),
        .\axi_araddr_reg[4]_1 (\axi_rdata_reg[2]_i_3_n_0 ),
        .\axi_araddr_reg[4]_10 (\axi_rdata_reg[11]_i_3_n_0 ),
        .\axi_araddr_reg[4]_11 (\axi_rdata_reg[12]_i_3_n_0 ),
        .\axi_araddr_reg[4]_12 (\axi_rdata_reg[13]_i_3_n_0 ),
        .\axi_araddr_reg[4]_13 (\axi_rdata_reg[14]_i_3_n_0 ),
        .\axi_araddr_reg[4]_14 (\axi_rdata_reg[15]_i_3_n_0 ),
        .\axi_araddr_reg[4]_15 (\axi_rdata_reg[16]_i_3_n_0 ),
        .\axi_araddr_reg[4]_16 (\axi_rdata_reg[17]_i_3_n_0 ),
        .\axi_araddr_reg[4]_17 (\axi_rdata_reg[18]_i_3_n_0 ),
        .\axi_araddr_reg[4]_18 (\axi_rdata_reg[19]_i_3_n_0 ),
        .\axi_araddr_reg[4]_19 (\axi_rdata_reg[20]_i_3_n_0 ),
        .\axi_araddr_reg[4]_2 (\axi_rdata_reg[3]_i_3_n_0 ),
        .\axi_araddr_reg[4]_3 (\axi_rdata_reg[4]_i_3_n_0 ),
        .\axi_araddr_reg[4]_4 (\axi_rdata_reg[5]_i_3_n_0 ),
        .\axi_araddr_reg[4]_5 (\axi_rdata_reg[6]_i_3_n_0 ),
        .\axi_araddr_reg[4]_6 (\axi_rdata_reg[7]_i_3_n_0 ),
        .\axi_araddr_reg[4]_7 (\axi_rdata_reg[8]_i_3_n_0 ),
        .\axi_araddr_reg[4]_8 (\axi_rdata_reg[9]_i_3_n_0 ),
        .\axi_araddr_reg[4]_9 (\axi_rdata_reg[10]_i_3_n_0 ),
        .pbtn_in(pbtn_in),
        .s00_axi_aclk(s00_axi_aclk),
        .\slv_reg1_reg[20] ({slv_reg1[20:16],led}),
        .\slv_reg2_reg[20] ({rgb1_reddc[4:0],rgb1_greendc,\slv_reg2_reg_n_0_[7] ,\slv_reg2_reg_n_0_[6] ,\slv_reg2_reg_n_0_[5] ,\slv_reg2_reg_n_0_[4] ,\slv_reg2_reg_n_0_[3] ,\slv_reg2_reg_n_0_[2] ,\slv_reg2_reg_n_0_[1] ,\slv_reg2_reg_n_0_[0] }),
        .\slv_reg3_reg[20] ({slv_reg3[20:3],slv_reg3__0}),
        .\slv_reg7_reg[0] (\axi_rdata[0]_i_5_n_0 ),
        .\slv_reg7_reg[10] (\axi_rdata[10]_i_5_n_0 ),
        .\slv_reg7_reg[11] (\axi_rdata[11]_i_5_n_0 ),
        .\slv_reg7_reg[12] (\axi_rdata[12]_i_5_n_0 ),
        .\slv_reg7_reg[13] (\axi_rdata[13]_i_5_n_0 ),
        .\slv_reg7_reg[14] (\axi_rdata[14]_i_5_n_0 ),
        .\slv_reg7_reg[15] (\axi_rdata[15]_i_5_n_0 ),
        .\slv_reg7_reg[16] (\axi_rdata[16]_i_5_n_0 ),
        .\slv_reg7_reg[17] (\axi_rdata[17]_i_5_n_0 ),
        .\slv_reg7_reg[18] (\axi_rdata[18]_i_5_n_0 ),
        .\slv_reg7_reg[19] (\axi_rdata[19]_i_5_n_0 ),
        .\slv_reg7_reg[1] (\axi_rdata[1]_i_5_n_0 ),
        .\slv_reg7_reg[20] (\axi_rdata[20]_i_5_n_0 ),
        .\slv_reg7_reg[2] (\axi_rdata[2]_i_5_n_0 ),
        .\slv_reg7_reg[3] (\axi_rdata[3]_i_5_n_0 ),
        .\slv_reg7_reg[4] (\axi_rdata[4]_i_5_n_0 ),
        .\slv_reg7_reg[5] (\axi_rdata[5]_i_5_n_0 ),
        .\slv_reg7_reg[6] (\axi_rdata[6]_i_5_n_0 ),
        .\slv_reg7_reg[7] (\axi_rdata[7]_i_5_n_0 ),
        .\slv_reg7_reg[8] (\axi_rdata[8]_i_5_n_0 ),
        .\slv_reg7_reg[9] (\axi_rdata[9]_i_5_n_0 ),
        .sw(sw));
  embsys_nexys4IO_0_0_rgbpwm RGB1B
       (.Clock(Clock),
        .Q({rgb1_reddc,rgb1_greendc,\slv_reg2_reg_n_0_[7] ,\slv_reg2_reg_n_0_[6] ,\slv_reg2_reg_n_0_[5] ,\slv_reg2_reg_n_0_[4] ,\slv_reg2_reg_n_0_[3] ,\slv_reg2_reg_n_0_[2] ,\slv_reg2_reg_n_0_[1] ,\slv_reg2_reg_n_0_[0] }),
        .RGB1_Blue(RGB1_Blue),
        .RGB1_Green(RGB1_Green),
        .RGB1_Red(RGB1_Red),
        .s00_axi_aresetn(SSB_n_0),
        .\slv_reg3_reg[2] (slv_reg3__0));
  embsys_nexys4IO_0_0_rgbpwm_0 RGB2B
       (.Clock(Clock),
        .Q({rgb2_reddc,rgb2_greendc,\slv_reg4_reg_n_0_[7] ,\slv_reg4_reg_n_0_[6] ,\slv_reg4_reg_n_0_[5] ,\slv_reg4_reg_n_0_[4] ,\slv_reg4_reg_n_0_[3] ,\slv_reg4_reg_n_0_[2] ,\slv_reg4_reg_n_0_[1] ,\slv_reg4_reg_n_0_[0] }),
        .RGB2_Blue(RGB2_Blue),
        .RGB2_Green(RGB2_Green),
        .RGB2_Red(RGB2_Red),
        .s00_axi_aresetn(SSB_n_0),
        .\slv_reg5_reg[2] (slv_reg5__0));
  embsys_nexys4IO_0_0_sevensegment SSB
       (.Q({decpts[3:0],dig3,dig2,dig1,\slv_reg6_reg_n_0_[4] ,\slv_reg6_reg_n_0_[3] ,\slv_reg6_reg_n_0_[2] ,\slv_reg6_reg_n_0_[1] ,\slv_reg6_reg_n_0_[0] }),
        .an(an),
        .\clk_cnt_reg[0]_0 (SSB_n_0),
        .dp(Q),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .\slv_reg7_reg[27] ({decpts[7:4],dig7,dig6,dig5,\slv_reg7_reg_n_0_[4] ,\slv_reg7_reg_n_0_[3] ,\slv_reg7_reg_n_0_[2] ,\slv_reg7_reg_n_0_[1] ,\slv_reg7_reg_n_0_[0] }));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_i_1_n_0),
        .D(s00_axi_araddr[0]),
        .Q(sel0[0]),
        .R(SSB_n_0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_i_1_n_0),
        .D(s00_axi_araddr[1]),
        .Q(sel0[1]),
        .R(SSB_n_0));
  FDRE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_i_1_n_0),
        .D(s00_axi_araddr[2]),
        .Q(sel0[2]),
        .R(SSB_n_0));
  FDRE \axi_araddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_arready_i_1_n_0),
        .D(s00_axi_araddr[3]),
        .Q(sel0[3]),
        .R(SSB_n_0));
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
        .R(SSB_n_0));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(axi_awready_i_1_n_0),
        .D(s00_axi_awaddr[0]),
        .Q(p_0_in_0[0]),
        .R(SSB_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(axi_awready_i_1_n_0),
        .D(s00_axi_awaddr[1]),
        .Q(p_0_in_0[1]),
        .R(SSB_n_0));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(axi_awready_i_1_n_0),
        .D(s00_axi_awaddr[2]),
        .Q(p_0_in_0[2]),
        .R(SSB_n_0));
  FDRE \axi_awaddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(axi_awready_i_1_n_0),
        .D(s00_axi_awaddr[3]),
        .Q(p_0_in_0[3]),
        .R(SSB_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awready),
        .O(axi_awready_i_1_n_0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_i_1_n_0),
        .Q(s00_axi_awready),
        .R(SSB_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_reg_0),
        .Q(s00_axi_bvalid),
        .R(SSB_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_5 
       (.I0(\slv_reg7_reg_n_0_[0] ),
        .I1(\slv_reg6_reg_n_0_[0] ),
        .I2(sel0[1]),
        .I3(slv_reg5__0[0]),
        .I4(sel0[0]),
        .I5(\slv_reg4_reg_n_0_[0] ),
        .O(\axi_rdata[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_6 
       (.I0(slv_reg11[0]),
        .I1(slv_reg10[0]),
        .I2(sel0[1]),
        .I3(slv_reg9[0]),
        .I4(sel0[0]),
        .I5(slv_reg8[0]),
        .O(\axi_rdata[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_7 
       (.I0(slv_reg15[0]),
        .I1(slv_reg14[0]),
        .I2(sel0[1]),
        .I3(slv_reg13[0]),
        .I4(sel0[0]),
        .I5(slv_reg12[0]),
        .O(\axi_rdata[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_5 
       (.I0(dig5[4]),
        .I1(dig1[4]),
        .I2(sel0[1]),
        .I3(slv_reg5[10]),
        .I4(sel0[0]),
        .I5(rgb2_greendc[2]),
        .O(\axi_rdata[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_6 
       (.I0(slv_reg11[10]),
        .I1(slv_reg10[10]),
        .I2(sel0[1]),
        .I3(slv_reg9[10]),
        .I4(sel0[0]),
        .I5(slv_reg8[10]),
        .O(\axi_rdata[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_7 
       (.I0(slv_reg15[10]),
        .I1(slv_reg14[10]),
        .I2(sel0[1]),
        .I3(slv_reg13[10]),
        .I4(sel0[0]),
        .I5(slv_reg12[10]),
        .O(\axi_rdata[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_5 
       (.I0(\slv_reg7_reg_n_0_[11] ),
        .I1(\slv_reg6_reg_n_0_[11] ),
        .I2(sel0[1]),
        .I3(slv_reg5[11]),
        .I4(sel0[0]),
        .I5(rgb2_greendc[3]),
        .O(\axi_rdata[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_6 
       (.I0(slv_reg11[11]),
        .I1(slv_reg10[11]),
        .I2(sel0[1]),
        .I3(slv_reg9[11]),
        .I4(sel0[0]),
        .I5(slv_reg8[11]),
        .O(\axi_rdata[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_7 
       (.I0(slv_reg15[11]),
        .I1(slv_reg14[11]),
        .I2(sel0[1]),
        .I3(slv_reg13[11]),
        .I4(sel0[0]),
        .I5(slv_reg12[11]),
        .O(\axi_rdata[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_5 
       (.I0(dig6[0]),
        .I1(dig2[0]),
        .I2(sel0[1]),
        .I3(slv_reg5[12]),
        .I4(sel0[0]),
        .I5(rgb2_greendc[4]),
        .O(\axi_rdata[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_6 
       (.I0(slv_reg11[12]),
        .I1(slv_reg10[12]),
        .I2(sel0[1]),
        .I3(slv_reg9[12]),
        .I4(sel0[0]),
        .I5(slv_reg8[12]),
        .O(\axi_rdata[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_7 
       (.I0(slv_reg15[12]),
        .I1(slv_reg14[12]),
        .I2(sel0[1]),
        .I3(slv_reg13[12]),
        .I4(sel0[0]),
        .I5(slv_reg12[12]),
        .O(\axi_rdata[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_5 
       (.I0(dig6[1]),
        .I1(dig2[1]),
        .I2(sel0[1]),
        .I3(slv_reg5[13]),
        .I4(sel0[0]),
        .I5(rgb2_greendc[5]),
        .O(\axi_rdata[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_6 
       (.I0(slv_reg11[13]),
        .I1(slv_reg10[13]),
        .I2(sel0[1]),
        .I3(slv_reg9[13]),
        .I4(sel0[0]),
        .I5(slv_reg8[13]),
        .O(\axi_rdata[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_7 
       (.I0(slv_reg15[13]),
        .I1(slv_reg14[13]),
        .I2(sel0[1]),
        .I3(slv_reg13[13]),
        .I4(sel0[0]),
        .I5(slv_reg12[13]),
        .O(\axi_rdata[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_5 
       (.I0(dig6[2]),
        .I1(dig2[2]),
        .I2(sel0[1]),
        .I3(slv_reg5[14]),
        .I4(sel0[0]),
        .I5(rgb2_greendc[6]),
        .O(\axi_rdata[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_6 
       (.I0(slv_reg11[14]),
        .I1(slv_reg10[14]),
        .I2(sel0[1]),
        .I3(slv_reg9[14]),
        .I4(sel0[0]),
        .I5(slv_reg8[14]),
        .O(\axi_rdata[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_7 
       (.I0(slv_reg15[14]),
        .I1(slv_reg14[14]),
        .I2(sel0[1]),
        .I3(slv_reg13[14]),
        .I4(sel0[0]),
        .I5(slv_reg12[14]),
        .O(\axi_rdata[14]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_5 
       (.I0(dig6[3]),
        .I1(dig2[3]),
        .I2(sel0[1]),
        .I3(slv_reg5[15]),
        .I4(sel0[0]),
        .I5(rgb2_greendc[7]),
        .O(\axi_rdata[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_6 
       (.I0(slv_reg11[15]),
        .I1(slv_reg10[15]),
        .I2(sel0[1]),
        .I3(slv_reg9[15]),
        .I4(sel0[0]),
        .I5(slv_reg8[15]),
        .O(\axi_rdata[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_7 
       (.I0(slv_reg15[15]),
        .I1(slv_reg14[15]),
        .I2(sel0[1]),
        .I3(slv_reg13[15]),
        .I4(sel0[0]),
        .I5(slv_reg12[15]),
        .O(\axi_rdata[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_5 
       (.I0(dig6[4]),
        .I1(dig2[4]),
        .I2(sel0[1]),
        .I3(slv_reg5[16]),
        .I4(sel0[0]),
        .I5(rgb2_reddc[0]),
        .O(\axi_rdata[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_6 
       (.I0(slv_reg11[16]),
        .I1(slv_reg10[16]),
        .I2(sel0[1]),
        .I3(slv_reg9[16]),
        .I4(sel0[0]),
        .I5(slv_reg8[16]),
        .O(\axi_rdata[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_7 
       (.I0(slv_reg15[16]),
        .I1(slv_reg14[16]),
        .I2(sel0[1]),
        .I3(slv_reg13[16]),
        .I4(sel0[0]),
        .I5(slv_reg12[16]),
        .O(\axi_rdata[16]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_5 
       (.I0(\slv_reg7_reg_n_0_[17] ),
        .I1(\slv_reg6_reg_n_0_[17] ),
        .I2(sel0[1]),
        .I3(slv_reg5[17]),
        .I4(sel0[0]),
        .I5(rgb2_reddc[1]),
        .O(\axi_rdata[17]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_6 
       (.I0(slv_reg11[17]),
        .I1(slv_reg10[17]),
        .I2(sel0[1]),
        .I3(slv_reg9[17]),
        .I4(sel0[0]),
        .I5(slv_reg8[17]),
        .O(\axi_rdata[17]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_7 
       (.I0(slv_reg15[17]),
        .I1(slv_reg14[17]),
        .I2(sel0[1]),
        .I3(slv_reg13[17]),
        .I4(sel0[0]),
        .I5(slv_reg12[17]),
        .O(\axi_rdata[17]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_5 
       (.I0(dig7[0]),
        .I1(dig3[0]),
        .I2(sel0[1]),
        .I3(slv_reg5[18]),
        .I4(sel0[0]),
        .I5(rgb2_reddc[2]),
        .O(\axi_rdata[18]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_6 
       (.I0(slv_reg11[18]),
        .I1(slv_reg10[18]),
        .I2(sel0[1]),
        .I3(slv_reg9[18]),
        .I4(sel0[0]),
        .I5(slv_reg8[18]),
        .O(\axi_rdata[18]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_7 
       (.I0(slv_reg15[18]),
        .I1(slv_reg14[18]),
        .I2(sel0[1]),
        .I3(slv_reg13[18]),
        .I4(sel0[0]),
        .I5(slv_reg12[18]),
        .O(\axi_rdata[18]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_5 
       (.I0(dig7[1]),
        .I1(dig3[1]),
        .I2(sel0[1]),
        .I3(slv_reg5[19]),
        .I4(sel0[0]),
        .I5(rgb2_reddc[3]),
        .O(\axi_rdata[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_6 
       (.I0(slv_reg11[19]),
        .I1(slv_reg10[19]),
        .I2(sel0[1]),
        .I3(slv_reg9[19]),
        .I4(sel0[0]),
        .I5(slv_reg8[19]),
        .O(\axi_rdata[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_7 
       (.I0(slv_reg15[19]),
        .I1(slv_reg14[19]),
        .I2(sel0[1]),
        .I3(slv_reg13[19]),
        .I4(sel0[0]),
        .I5(slv_reg12[19]),
        .O(\axi_rdata[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_5 
       (.I0(\slv_reg7_reg_n_0_[1] ),
        .I1(\slv_reg6_reg_n_0_[1] ),
        .I2(sel0[1]),
        .I3(slv_reg5__0[1]),
        .I4(sel0[0]),
        .I5(\slv_reg4_reg_n_0_[1] ),
        .O(\axi_rdata[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_6 
       (.I0(slv_reg11[1]),
        .I1(slv_reg10[1]),
        .I2(sel0[1]),
        .I3(slv_reg9[1]),
        .I4(sel0[0]),
        .I5(slv_reg8[1]),
        .O(\axi_rdata[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_7 
       (.I0(slv_reg15[1]),
        .I1(slv_reg14[1]),
        .I2(sel0[1]),
        .I3(slv_reg13[1]),
        .I4(sel0[0]),
        .I5(slv_reg12[1]),
        .O(\axi_rdata[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_5 
       (.I0(dig7[2]),
        .I1(dig3[2]),
        .I2(sel0[1]),
        .I3(slv_reg5[20]),
        .I4(sel0[0]),
        .I5(rgb2_reddc[4]),
        .O(\axi_rdata[20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_6 
       (.I0(slv_reg11[20]),
        .I1(slv_reg10[20]),
        .I2(sel0[1]),
        .I3(slv_reg9[20]),
        .I4(sel0[0]),
        .I5(slv_reg8[20]),
        .O(\axi_rdata[20]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_7 
       (.I0(slv_reg15[20]),
        .I1(slv_reg14[20]),
        .I2(sel0[1]),
        .I3(slv_reg13[20]),
        .I4(sel0[0]),
        .I5(slv_reg12[20]),
        .O(\axi_rdata[20]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[21]_i_4 
       (.I0(slv_reg3[21]),
        .I1(rgb1_reddc[5]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg1[21]),
        .O(\axi_rdata[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_5 
       (.I0(dig7[3]),
        .I1(dig3[3]),
        .I2(sel0[1]),
        .I3(slv_reg5[21]),
        .I4(sel0[0]),
        .I5(rgb2_reddc[5]),
        .O(\axi_rdata[21]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_6 
       (.I0(slv_reg11[21]),
        .I1(slv_reg10[21]),
        .I2(sel0[1]),
        .I3(slv_reg9[21]),
        .I4(sel0[0]),
        .I5(slv_reg8[21]),
        .O(\axi_rdata[21]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_7 
       (.I0(slv_reg15[21]),
        .I1(slv_reg14[21]),
        .I2(sel0[1]),
        .I3(slv_reg13[21]),
        .I4(sel0[0]),
        .I5(slv_reg12[21]),
        .O(\axi_rdata[21]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[22]_i_4 
       (.I0(slv_reg3[22]),
        .I1(rgb1_reddc[6]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg1[22]),
        .O(\axi_rdata[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_5 
       (.I0(dig7[4]),
        .I1(dig3[4]),
        .I2(sel0[1]),
        .I3(slv_reg5[22]),
        .I4(sel0[0]),
        .I5(rgb2_reddc[6]),
        .O(\axi_rdata[22]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_6 
       (.I0(slv_reg11[22]),
        .I1(slv_reg10[22]),
        .I2(sel0[1]),
        .I3(slv_reg9[22]),
        .I4(sel0[0]),
        .I5(slv_reg8[22]),
        .O(\axi_rdata[22]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_7 
       (.I0(slv_reg15[22]),
        .I1(slv_reg14[22]),
        .I2(sel0[1]),
        .I3(slv_reg13[22]),
        .I4(sel0[0]),
        .I5(slv_reg12[22]),
        .O(\axi_rdata[22]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[23]_i_4 
       (.I0(slv_reg3[23]),
        .I1(rgb1_reddc[7]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg1[23]),
        .O(\axi_rdata[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_5 
       (.I0(\slv_reg7_reg_n_0_[23] ),
        .I1(\slv_reg6_reg_n_0_[23] ),
        .I2(sel0[1]),
        .I3(slv_reg5[23]),
        .I4(sel0[0]),
        .I5(rgb2_reddc[7]),
        .O(\axi_rdata[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_6 
       (.I0(slv_reg11[23]),
        .I1(slv_reg10[23]),
        .I2(sel0[1]),
        .I3(slv_reg9[23]),
        .I4(sel0[0]),
        .I5(slv_reg8[23]),
        .O(\axi_rdata[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_7 
       (.I0(slv_reg15[23]),
        .I1(slv_reg14[23]),
        .I2(sel0[1]),
        .I3(slv_reg13[23]),
        .I4(sel0[0]),
        .I5(slv_reg12[23]),
        .O(\axi_rdata[23]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[24]_i_4 
       (.I0(slv_reg3[24]),
        .I1(\slv_reg2_reg_n_0_[24] ),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg1[24]),
        .O(\axi_rdata[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_5 
       (.I0(decpts[4]),
        .I1(decpts[0]),
        .I2(sel0[1]),
        .I3(slv_reg5[24]),
        .I4(sel0[0]),
        .I5(\slv_reg4_reg_n_0_[24] ),
        .O(\axi_rdata[24]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_6 
       (.I0(slv_reg11[24]),
        .I1(slv_reg10[24]),
        .I2(sel0[1]),
        .I3(slv_reg9[24]),
        .I4(sel0[0]),
        .I5(slv_reg8[24]),
        .O(\axi_rdata[24]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_7 
       (.I0(slv_reg15[24]),
        .I1(slv_reg14[24]),
        .I2(sel0[1]),
        .I3(slv_reg13[24]),
        .I4(sel0[0]),
        .I5(slv_reg12[24]),
        .O(\axi_rdata[24]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[25]_i_4 
       (.I0(slv_reg3[25]),
        .I1(\slv_reg2_reg_n_0_[25] ),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg1[25]),
        .O(\axi_rdata[25]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_5 
       (.I0(decpts[5]),
        .I1(decpts[1]),
        .I2(sel0[1]),
        .I3(slv_reg5[25]),
        .I4(sel0[0]),
        .I5(\slv_reg4_reg_n_0_[25] ),
        .O(\axi_rdata[25]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_6 
       (.I0(slv_reg11[25]),
        .I1(slv_reg10[25]),
        .I2(sel0[1]),
        .I3(slv_reg9[25]),
        .I4(sel0[0]),
        .I5(slv_reg8[25]),
        .O(\axi_rdata[25]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_7 
       (.I0(slv_reg15[25]),
        .I1(slv_reg14[25]),
        .I2(sel0[1]),
        .I3(slv_reg13[25]),
        .I4(sel0[0]),
        .I5(slv_reg12[25]),
        .O(\axi_rdata[25]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[26]_i_4 
       (.I0(slv_reg3[26]),
        .I1(\slv_reg2_reg_n_0_[26] ),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg1[26]),
        .O(\axi_rdata[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_5 
       (.I0(decpts[6]),
        .I1(decpts[2]),
        .I2(sel0[1]),
        .I3(slv_reg5[26]),
        .I4(sel0[0]),
        .I5(\slv_reg4_reg_n_0_[26] ),
        .O(\axi_rdata[26]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_6 
       (.I0(slv_reg11[26]),
        .I1(slv_reg10[26]),
        .I2(sel0[1]),
        .I3(slv_reg9[26]),
        .I4(sel0[0]),
        .I5(slv_reg8[26]),
        .O(\axi_rdata[26]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_7 
       (.I0(slv_reg15[26]),
        .I1(slv_reg14[26]),
        .I2(sel0[1]),
        .I3(slv_reg13[26]),
        .I4(sel0[0]),
        .I5(slv_reg12[26]),
        .O(\axi_rdata[26]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[27]_i_4 
       (.I0(slv_reg3[27]),
        .I1(\slv_reg2_reg_n_0_[27] ),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg1[27]),
        .O(\axi_rdata[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_5 
       (.I0(decpts[7]),
        .I1(decpts[3]),
        .I2(sel0[1]),
        .I3(slv_reg5[27]),
        .I4(sel0[0]),
        .I5(\slv_reg4_reg_n_0_[27] ),
        .O(\axi_rdata[27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_6 
       (.I0(slv_reg11[27]),
        .I1(slv_reg10[27]),
        .I2(sel0[1]),
        .I3(slv_reg9[27]),
        .I4(sel0[0]),
        .I5(slv_reg8[27]),
        .O(\axi_rdata[27]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_7 
       (.I0(slv_reg15[27]),
        .I1(slv_reg14[27]),
        .I2(sel0[1]),
        .I3(slv_reg13[27]),
        .I4(sel0[0]),
        .I5(slv_reg12[27]),
        .O(\axi_rdata[27]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[28]_i_4 
       (.I0(slv_reg3[28]),
        .I1(\slv_reg2_reg_n_0_[28] ),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg1[28]),
        .O(\axi_rdata[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_5 
       (.I0(\slv_reg7_reg_n_0_[28] ),
        .I1(\slv_reg6_reg_n_0_[28] ),
        .I2(sel0[1]),
        .I3(slv_reg5[28]),
        .I4(sel0[0]),
        .I5(\slv_reg4_reg_n_0_[28] ),
        .O(\axi_rdata[28]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_6 
       (.I0(slv_reg11[28]),
        .I1(slv_reg10[28]),
        .I2(sel0[1]),
        .I3(slv_reg9[28]),
        .I4(sel0[0]),
        .I5(slv_reg8[28]),
        .O(\axi_rdata[28]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_7 
       (.I0(slv_reg15[28]),
        .I1(slv_reg14[28]),
        .I2(sel0[1]),
        .I3(slv_reg13[28]),
        .I4(sel0[0]),
        .I5(slv_reg12[28]),
        .O(\axi_rdata[28]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[29]_i_4 
       (.I0(slv_reg3[29]),
        .I1(\slv_reg2_reg_n_0_[29] ),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg1[29]),
        .O(\axi_rdata[29]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_5 
       (.I0(\slv_reg7_reg_n_0_[29] ),
        .I1(\slv_reg6_reg_n_0_[29] ),
        .I2(sel0[1]),
        .I3(slv_reg5[29]),
        .I4(sel0[0]),
        .I5(\slv_reg4_reg_n_0_[29] ),
        .O(\axi_rdata[29]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_6 
       (.I0(slv_reg11[29]),
        .I1(slv_reg10[29]),
        .I2(sel0[1]),
        .I3(slv_reg9[29]),
        .I4(sel0[0]),
        .I5(slv_reg8[29]),
        .O(\axi_rdata[29]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_7 
       (.I0(slv_reg15[29]),
        .I1(slv_reg14[29]),
        .I2(sel0[1]),
        .I3(slv_reg13[29]),
        .I4(sel0[0]),
        .I5(slv_reg12[29]),
        .O(\axi_rdata[29]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_5 
       (.I0(\slv_reg7_reg_n_0_[2] ),
        .I1(\slv_reg6_reg_n_0_[2] ),
        .I2(sel0[1]),
        .I3(slv_reg5__0[2]),
        .I4(sel0[0]),
        .I5(\slv_reg4_reg_n_0_[2] ),
        .O(\axi_rdata[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_6 
       (.I0(slv_reg11[2]),
        .I1(slv_reg10[2]),
        .I2(sel0[1]),
        .I3(slv_reg9[2]),
        .I4(sel0[0]),
        .I5(slv_reg8[2]),
        .O(\axi_rdata[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_7 
       (.I0(slv_reg15[2]),
        .I1(slv_reg14[2]),
        .I2(sel0[1]),
        .I3(slv_reg13[2]),
        .I4(sel0[0]),
        .I5(slv_reg12[2]),
        .O(\axi_rdata[2]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[30]_i_4 
       (.I0(slv_reg3[30]),
        .I1(\slv_reg2_reg_n_0_[30] ),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg1[30]),
        .O(\axi_rdata[30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_5 
       (.I0(\slv_reg7_reg_n_0_[30] ),
        .I1(\slv_reg6_reg_n_0_[30] ),
        .I2(sel0[1]),
        .I3(slv_reg5[30]),
        .I4(sel0[0]),
        .I5(\slv_reg4_reg_n_0_[30] ),
        .O(\axi_rdata[30]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_6 
       (.I0(slv_reg11[30]),
        .I1(slv_reg10[30]),
        .I2(sel0[1]),
        .I3(slv_reg9[30]),
        .I4(sel0[0]),
        .I5(slv_reg8[30]),
        .O(\axi_rdata[30]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_7 
       (.I0(slv_reg15[30]),
        .I1(slv_reg14[30]),
        .I2(sel0[1]),
        .I3(slv_reg13[30]),
        .I4(sel0[0]),
        .I5(slv_reg12[30]),
        .O(\axi_rdata[30]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[31]_i_4 
       (.I0(slv_reg3[31]),
        .I1(\slv_reg2_reg_n_0_[31] ),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg1[31]),
        .O(\axi_rdata[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_5 
       (.I0(\slv_reg7_reg_n_0_[31] ),
        .I1(\slv_reg6_reg_n_0_[31] ),
        .I2(sel0[1]),
        .I3(slv_reg5[31]),
        .I4(sel0[0]),
        .I5(\slv_reg4_reg_n_0_[31] ),
        .O(\axi_rdata[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_6 
       (.I0(slv_reg11[31]),
        .I1(slv_reg10[31]),
        .I2(sel0[1]),
        .I3(slv_reg9[31]),
        .I4(sel0[0]),
        .I5(slv_reg8[31]),
        .O(\axi_rdata[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_7 
       (.I0(slv_reg15[31]),
        .I1(slv_reg14[31]),
        .I2(sel0[1]),
        .I3(slv_reg13[31]),
        .I4(sel0[0]),
        .I5(slv_reg12[31]),
        .O(\axi_rdata[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_5 
       (.I0(\slv_reg7_reg_n_0_[3] ),
        .I1(\slv_reg6_reg_n_0_[3] ),
        .I2(sel0[1]),
        .I3(slv_reg5[3]),
        .I4(sel0[0]),
        .I5(\slv_reg4_reg_n_0_[3] ),
        .O(\axi_rdata[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_6 
       (.I0(slv_reg11[3]),
        .I1(slv_reg10[3]),
        .I2(sel0[1]),
        .I3(slv_reg9[3]),
        .I4(sel0[0]),
        .I5(slv_reg8[3]),
        .O(\axi_rdata[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_7 
       (.I0(slv_reg15[3]),
        .I1(slv_reg14[3]),
        .I2(sel0[1]),
        .I3(slv_reg13[3]),
        .I4(sel0[0]),
        .I5(slv_reg12[3]),
        .O(\axi_rdata[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_5 
       (.I0(\slv_reg7_reg_n_0_[4] ),
        .I1(\slv_reg6_reg_n_0_[4] ),
        .I2(sel0[1]),
        .I3(slv_reg5[4]),
        .I4(sel0[0]),
        .I5(\slv_reg4_reg_n_0_[4] ),
        .O(\axi_rdata[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_6 
       (.I0(slv_reg11[4]),
        .I1(slv_reg10[4]),
        .I2(sel0[1]),
        .I3(slv_reg9[4]),
        .I4(sel0[0]),
        .I5(slv_reg8[4]),
        .O(\axi_rdata[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_7 
       (.I0(slv_reg15[4]),
        .I1(slv_reg14[4]),
        .I2(sel0[1]),
        .I3(slv_reg13[4]),
        .I4(sel0[0]),
        .I5(slv_reg12[4]),
        .O(\axi_rdata[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_5 
       (.I0(\slv_reg7_reg_n_0_[5] ),
        .I1(\slv_reg6_reg_n_0_[5] ),
        .I2(sel0[1]),
        .I3(slv_reg5[5]),
        .I4(sel0[0]),
        .I5(\slv_reg4_reg_n_0_[5] ),
        .O(\axi_rdata[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_6 
       (.I0(slv_reg11[5]),
        .I1(slv_reg10[5]),
        .I2(sel0[1]),
        .I3(slv_reg9[5]),
        .I4(sel0[0]),
        .I5(slv_reg8[5]),
        .O(\axi_rdata[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_7 
       (.I0(slv_reg15[5]),
        .I1(slv_reg14[5]),
        .I2(sel0[1]),
        .I3(slv_reg13[5]),
        .I4(sel0[0]),
        .I5(slv_reg12[5]),
        .O(\axi_rdata[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_5 
       (.I0(dig5[0]),
        .I1(dig1[0]),
        .I2(sel0[1]),
        .I3(slv_reg5[6]),
        .I4(sel0[0]),
        .I5(\slv_reg4_reg_n_0_[6] ),
        .O(\axi_rdata[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_6 
       (.I0(slv_reg11[6]),
        .I1(slv_reg10[6]),
        .I2(sel0[1]),
        .I3(slv_reg9[6]),
        .I4(sel0[0]),
        .I5(slv_reg8[6]),
        .O(\axi_rdata[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_7 
       (.I0(slv_reg15[6]),
        .I1(slv_reg14[6]),
        .I2(sel0[1]),
        .I3(slv_reg13[6]),
        .I4(sel0[0]),
        .I5(slv_reg12[6]),
        .O(\axi_rdata[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_5 
       (.I0(dig5[1]),
        .I1(dig1[1]),
        .I2(sel0[1]),
        .I3(slv_reg5[7]),
        .I4(sel0[0]),
        .I5(\slv_reg4_reg_n_0_[7] ),
        .O(\axi_rdata[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_6 
       (.I0(slv_reg11[7]),
        .I1(slv_reg10[7]),
        .I2(sel0[1]),
        .I3(slv_reg9[7]),
        .I4(sel0[0]),
        .I5(slv_reg8[7]),
        .O(\axi_rdata[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_7 
       (.I0(slv_reg15[7]),
        .I1(slv_reg14[7]),
        .I2(sel0[1]),
        .I3(slv_reg13[7]),
        .I4(sel0[0]),
        .I5(slv_reg12[7]),
        .O(\axi_rdata[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_5 
       (.I0(dig5[2]),
        .I1(dig1[2]),
        .I2(sel0[1]),
        .I3(slv_reg5[8]),
        .I4(sel0[0]),
        .I5(rgb2_greendc[0]),
        .O(\axi_rdata[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_6 
       (.I0(slv_reg11[8]),
        .I1(slv_reg10[8]),
        .I2(sel0[1]),
        .I3(slv_reg9[8]),
        .I4(sel0[0]),
        .I5(slv_reg8[8]),
        .O(\axi_rdata[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_7 
       (.I0(slv_reg15[8]),
        .I1(slv_reg14[8]),
        .I2(sel0[1]),
        .I3(slv_reg13[8]),
        .I4(sel0[0]),
        .I5(slv_reg12[8]),
        .O(\axi_rdata[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_5 
       (.I0(dig5[3]),
        .I1(dig1[3]),
        .I2(sel0[1]),
        .I3(slv_reg5[9]),
        .I4(sel0[0]),
        .I5(rgb2_greendc[1]),
        .O(\axi_rdata[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_6 
       (.I0(slv_reg11[9]),
        .I1(slv_reg10[9]),
        .I2(sel0[1]),
        .I3(slv_reg9[9]),
        .I4(sel0[0]),
        .I5(slv_reg8[9]),
        .O(\axi_rdata[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_7 
       (.I0(slv_reg15[9]),
        .I1(slv_reg14[9]),
        .I2(sel0[1]),
        .I3(slv_reg13[9]),
        .I4(sel0[0]),
        .I5(slv_reg12[9]),
        .O(\axi_rdata[9]_i_7_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(SSB_n_0));
  MUXF7 \axi_rdata_reg[0]_i_3 
       (.I0(\axi_rdata[0]_i_6_n_0 ),
        .I1(\axi_rdata[0]_i_7_n_0 ),
        .O(\axi_rdata_reg[0]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(SSB_n_0));
  MUXF7 \axi_rdata_reg[10]_i_3 
       (.I0(\axi_rdata[10]_i_6_n_0 ),
        .I1(\axi_rdata[10]_i_7_n_0 ),
        .O(\axi_rdata_reg[10]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(SSB_n_0));
  MUXF7 \axi_rdata_reg[11]_i_3 
       (.I0(\axi_rdata[11]_i_6_n_0 ),
        .I1(\axi_rdata[11]_i_7_n_0 ),
        .O(\axi_rdata_reg[11]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(SSB_n_0));
  MUXF7 \axi_rdata_reg[12]_i_3 
       (.I0(\axi_rdata[12]_i_6_n_0 ),
        .I1(\axi_rdata[12]_i_7_n_0 ),
        .O(\axi_rdata_reg[12]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(SSB_n_0));
  MUXF7 \axi_rdata_reg[13]_i_3 
       (.I0(\axi_rdata[13]_i_6_n_0 ),
        .I1(\axi_rdata[13]_i_7_n_0 ),
        .O(\axi_rdata_reg[13]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(SSB_n_0));
  MUXF7 \axi_rdata_reg[14]_i_3 
       (.I0(\axi_rdata[14]_i_6_n_0 ),
        .I1(\axi_rdata[14]_i_7_n_0 ),
        .O(\axi_rdata_reg[14]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(SSB_n_0));
  MUXF7 \axi_rdata_reg[15]_i_3 
       (.I0(\axi_rdata[15]_i_6_n_0 ),
        .I1(\axi_rdata[15]_i_7_n_0 ),
        .O(\axi_rdata_reg[15]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(SSB_n_0));
  MUXF7 \axi_rdata_reg[16]_i_3 
       (.I0(\axi_rdata[16]_i_6_n_0 ),
        .I1(\axi_rdata[16]_i_7_n_0 ),
        .O(\axi_rdata_reg[16]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(SSB_n_0));
  MUXF7 \axi_rdata_reg[17]_i_3 
       (.I0(\axi_rdata[17]_i_6_n_0 ),
        .I1(\axi_rdata[17]_i_7_n_0 ),
        .O(\axi_rdata_reg[17]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(SSB_n_0));
  MUXF7 \axi_rdata_reg[18]_i_3 
       (.I0(\axi_rdata[18]_i_6_n_0 ),
        .I1(\axi_rdata[18]_i_7_n_0 ),
        .O(\axi_rdata_reg[18]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(SSB_n_0));
  MUXF7 \axi_rdata_reg[19]_i_3 
       (.I0(\axi_rdata[19]_i_6_n_0 ),
        .I1(\axi_rdata[19]_i_7_n_0 ),
        .O(\axi_rdata_reg[19]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(SSB_n_0));
  MUXF7 \axi_rdata_reg[1]_i_3 
       (.I0(\axi_rdata[1]_i_6_n_0 ),
        .I1(\axi_rdata[1]_i_7_n_0 ),
        .O(\axi_rdata_reg[1]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(SSB_n_0));
  MUXF7 \axi_rdata_reg[20]_i_3 
       (.I0(\axi_rdata[20]_i_6_n_0 ),
        .I1(\axi_rdata[20]_i_7_n_0 ),
        .O(\axi_rdata_reg[20]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(SSB_n_0));
  MUXF8 \axi_rdata_reg[21]_i_1 
       (.I0(\axi_rdata_reg[21]_i_2_n_0 ),
        .I1(\axi_rdata_reg[21]_i_3_n_0 ),
        .O(reg_data_out[21]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[21]_i_2 
       (.I0(\axi_rdata[21]_i_4_n_0 ),
        .I1(\axi_rdata[21]_i_5_n_0 ),
        .O(\axi_rdata_reg[21]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[21]_i_3 
       (.I0(\axi_rdata[21]_i_6_n_0 ),
        .I1(\axi_rdata[21]_i_7_n_0 ),
        .O(\axi_rdata_reg[21]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(SSB_n_0));
  MUXF8 \axi_rdata_reg[22]_i_1 
       (.I0(\axi_rdata_reg[22]_i_2_n_0 ),
        .I1(\axi_rdata_reg[22]_i_3_n_0 ),
        .O(reg_data_out[22]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[22]_i_2 
       (.I0(\axi_rdata[22]_i_4_n_0 ),
        .I1(\axi_rdata[22]_i_5_n_0 ),
        .O(\axi_rdata_reg[22]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[22]_i_3 
       (.I0(\axi_rdata[22]_i_6_n_0 ),
        .I1(\axi_rdata[22]_i_7_n_0 ),
        .O(\axi_rdata_reg[22]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(SSB_n_0));
  MUXF8 \axi_rdata_reg[23]_i_1 
       (.I0(\axi_rdata_reg[23]_i_2_n_0 ),
        .I1(\axi_rdata_reg[23]_i_3_n_0 ),
        .O(reg_data_out[23]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[23]_i_2 
       (.I0(\axi_rdata[23]_i_4_n_0 ),
        .I1(\axi_rdata[23]_i_5_n_0 ),
        .O(\axi_rdata_reg[23]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[23]_i_3 
       (.I0(\axi_rdata[23]_i_6_n_0 ),
        .I1(\axi_rdata[23]_i_7_n_0 ),
        .O(\axi_rdata_reg[23]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(SSB_n_0));
  MUXF8 \axi_rdata_reg[24]_i_1 
       (.I0(\axi_rdata_reg[24]_i_2_n_0 ),
        .I1(\axi_rdata_reg[24]_i_3_n_0 ),
        .O(reg_data_out[24]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[24]_i_2 
       (.I0(\axi_rdata[24]_i_4_n_0 ),
        .I1(\axi_rdata[24]_i_5_n_0 ),
        .O(\axi_rdata_reg[24]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[24]_i_3 
       (.I0(\axi_rdata[24]_i_6_n_0 ),
        .I1(\axi_rdata[24]_i_7_n_0 ),
        .O(\axi_rdata_reg[24]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(SSB_n_0));
  MUXF8 \axi_rdata_reg[25]_i_1 
       (.I0(\axi_rdata_reg[25]_i_2_n_0 ),
        .I1(\axi_rdata_reg[25]_i_3_n_0 ),
        .O(reg_data_out[25]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[25]_i_2 
       (.I0(\axi_rdata[25]_i_4_n_0 ),
        .I1(\axi_rdata[25]_i_5_n_0 ),
        .O(\axi_rdata_reg[25]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[25]_i_3 
       (.I0(\axi_rdata[25]_i_6_n_0 ),
        .I1(\axi_rdata[25]_i_7_n_0 ),
        .O(\axi_rdata_reg[25]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(SSB_n_0));
  MUXF8 \axi_rdata_reg[26]_i_1 
       (.I0(\axi_rdata_reg[26]_i_2_n_0 ),
        .I1(\axi_rdata_reg[26]_i_3_n_0 ),
        .O(reg_data_out[26]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[26]_i_2 
       (.I0(\axi_rdata[26]_i_4_n_0 ),
        .I1(\axi_rdata[26]_i_5_n_0 ),
        .O(\axi_rdata_reg[26]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[26]_i_3 
       (.I0(\axi_rdata[26]_i_6_n_0 ),
        .I1(\axi_rdata[26]_i_7_n_0 ),
        .O(\axi_rdata_reg[26]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(SSB_n_0));
  MUXF8 \axi_rdata_reg[27]_i_1 
       (.I0(\axi_rdata_reg[27]_i_2_n_0 ),
        .I1(\axi_rdata_reg[27]_i_3_n_0 ),
        .O(reg_data_out[27]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[27]_i_2 
       (.I0(\axi_rdata[27]_i_4_n_0 ),
        .I1(\axi_rdata[27]_i_5_n_0 ),
        .O(\axi_rdata_reg[27]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[27]_i_3 
       (.I0(\axi_rdata[27]_i_6_n_0 ),
        .I1(\axi_rdata[27]_i_7_n_0 ),
        .O(\axi_rdata_reg[27]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(SSB_n_0));
  MUXF8 \axi_rdata_reg[28]_i_1 
       (.I0(\axi_rdata_reg[28]_i_2_n_0 ),
        .I1(\axi_rdata_reg[28]_i_3_n_0 ),
        .O(reg_data_out[28]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[28]_i_2 
       (.I0(\axi_rdata[28]_i_4_n_0 ),
        .I1(\axi_rdata[28]_i_5_n_0 ),
        .O(\axi_rdata_reg[28]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[28]_i_3 
       (.I0(\axi_rdata[28]_i_6_n_0 ),
        .I1(\axi_rdata[28]_i_7_n_0 ),
        .O(\axi_rdata_reg[28]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(SSB_n_0));
  MUXF8 \axi_rdata_reg[29]_i_1 
       (.I0(\axi_rdata_reg[29]_i_2_n_0 ),
        .I1(\axi_rdata_reg[29]_i_3_n_0 ),
        .O(reg_data_out[29]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[29]_i_2 
       (.I0(\axi_rdata[29]_i_4_n_0 ),
        .I1(\axi_rdata[29]_i_5_n_0 ),
        .O(\axi_rdata_reg[29]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[29]_i_3 
       (.I0(\axi_rdata[29]_i_6_n_0 ),
        .I1(\axi_rdata[29]_i_7_n_0 ),
        .O(\axi_rdata_reg[29]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(SSB_n_0));
  MUXF7 \axi_rdata_reg[2]_i_3 
       (.I0(\axi_rdata[2]_i_6_n_0 ),
        .I1(\axi_rdata[2]_i_7_n_0 ),
        .O(\axi_rdata_reg[2]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(SSB_n_0));
  MUXF8 \axi_rdata_reg[30]_i_1 
       (.I0(\axi_rdata_reg[30]_i_2_n_0 ),
        .I1(\axi_rdata_reg[30]_i_3_n_0 ),
        .O(reg_data_out[30]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[30]_i_2 
       (.I0(\axi_rdata[30]_i_4_n_0 ),
        .I1(\axi_rdata[30]_i_5_n_0 ),
        .O(\axi_rdata_reg[30]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[30]_i_3 
       (.I0(\axi_rdata[30]_i_6_n_0 ),
        .I1(\axi_rdata[30]_i_7_n_0 ),
        .O(\axi_rdata_reg[30]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(SSB_n_0));
  MUXF8 \axi_rdata_reg[31]_i_1 
       (.I0(\axi_rdata_reg[31]_i_2_n_0 ),
        .I1(\axi_rdata_reg[31]_i_3_n_0 ),
        .O(reg_data_out[31]),
        .S(sel0[3]));
  MUXF7 \axi_rdata_reg[31]_i_2 
       (.I0(\axi_rdata[31]_i_4_n_0 ),
        .I1(\axi_rdata[31]_i_5_n_0 ),
        .O(\axi_rdata_reg[31]_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[31]_i_3 
       (.I0(\axi_rdata[31]_i_6_n_0 ),
        .I1(\axi_rdata[31]_i_7_n_0 ),
        .O(\axi_rdata_reg[31]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(SSB_n_0));
  MUXF7 \axi_rdata_reg[3]_i_3 
       (.I0(\axi_rdata[3]_i_6_n_0 ),
        .I1(\axi_rdata[3]_i_7_n_0 ),
        .O(\axi_rdata_reg[3]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(SSB_n_0));
  MUXF7 \axi_rdata_reg[4]_i_3 
       (.I0(\axi_rdata[4]_i_6_n_0 ),
        .I1(\axi_rdata[4]_i_7_n_0 ),
        .O(\axi_rdata_reg[4]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(SSB_n_0));
  MUXF7 \axi_rdata_reg[5]_i_3 
       (.I0(\axi_rdata[5]_i_6_n_0 ),
        .I1(\axi_rdata[5]_i_7_n_0 ),
        .O(\axi_rdata_reg[5]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(SSB_n_0));
  MUXF7 \axi_rdata_reg[6]_i_3 
       (.I0(\axi_rdata[6]_i_6_n_0 ),
        .I1(\axi_rdata[6]_i_7_n_0 ),
        .O(\axi_rdata_reg[6]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(SSB_n_0));
  MUXF7 \axi_rdata_reg[7]_i_3 
       (.I0(\axi_rdata[7]_i_6_n_0 ),
        .I1(\axi_rdata[7]_i_7_n_0 ),
        .O(\axi_rdata_reg[7]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(SSB_n_0));
  MUXF7 \axi_rdata_reg[8]_i_3 
       (.I0(\axi_rdata[8]_i_6_n_0 ),
        .I1(\axi_rdata[8]_i_7_n_0 ),
        .O(\axi_rdata_reg[8]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(SSB_n_0));
  MUXF7 \axi_rdata_reg[9]_i_3 
       (.I0(\axi_rdata[9]_i_6_n_0 ),
        .I1(\axi_rdata[9]_i_7_n_0 ),
        .O(\axi_rdata_reg[9]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_reg_0),
        .Q(s00_axi_rvalid),
        .R(SSB_n_0));
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
        .R(SSB_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[3]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[0]),
        .I5(p_0_in_0[2]),
        .O(\slv_reg10[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[3]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[0]),
        .I5(p_0_in_0[2]),
        .O(\slv_reg10[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[3]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[0]),
        .I5(p_0_in_0[2]),
        .O(\slv_reg10[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg10[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[3]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[0]),
        .I5(p_0_in_0[2]),
        .O(\slv_reg10[7]_i_1_n_0 ));
  FDRE \slv_reg10_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg10[0]),
        .R(SSB_n_0));
  FDRE \slv_reg10_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg10[10]),
        .R(SSB_n_0));
  FDRE \slv_reg10_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg10[11]),
        .R(SSB_n_0));
  FDRE \slv_reg10_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg10[12]),
        .R(SSB_n_0));
  FDRE \slv_reg10_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg10[13]),
        .R(SSB_n_0));
  FDRE \slv_reg10_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg10[14]),
        .R(SSB_n_0));
  FDRE \slv_reg10_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg10[15]),
        .R(SSB_n_0));
  FDRE \slv_reg10_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg10[16]),
        .R(SSB_n_0));
  FDRE \slv_reg10_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg10[17]),
        .R(SSB_n_0));
  FDRE \slv_reg10_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg10[18]),
        .R(SSB_n_0));
  FDRE \slv_reg10_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg10[19]),
        .R(SSB_n_0));
  FDRE \slv_reg10_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg10[1]),
        .R(SSB_n_0));
  FDRE \slv_reg10_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg10[20]),
        .R(SSB_n_0));
  FDRE \slv_reg10_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg10[21]),
        .R(SSB_n_0));
  FDRE \slv_reg10_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg10[22]),
        .R(SSB_n_0));
  FDRE \slv_reg10_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg10[23]),
        .R(SSB_n_0));
  FDRE \slv_reg10_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg10[24]),
        .R(SSB_n_0));
  FDRE \slv_reg10_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg10[25]),
        .R(SSB_n_0));
  FDRE \slv_reg10_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg10[26]),
        .R(SSB_n_0));
  FDRE \slv_reg10_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg10[27]),
        .R(SSB_n_0));
  FDRE \slv_reg10_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg10[28]),
        .R(SSB_n_0));
  FDRE \slv_reg10_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg10[29]),
        .R(SSB_n_0));
  FDRE \slv_reg10_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg10[2]),
        .R(SSB_n_0));
  FDRE \slv_reg10_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg10[30]),
        .R(SSB_n_0));
  FDRE \slv_reg10_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg10[31]),
        .R(SSB_n_0));
  FDRE \slv_reg10_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg10[3]),
        .R(SSB_n_0));
  FDRE \slv_reg10_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg10[4]),
        .R(SSB_n_0));
  FDRE \slv_reg10_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg10[5]),
        .R(SSB_n_0));
  FDRE \slv_reg10_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg10[6]),
        .R(SSB_n_0));
  FDRE \slv_reg10_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg10[7]),
        .R(SSB_n_0));
  FDRE \slv_reg10_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg10[8]),
        .R(SSB_n_0));
  FDRE \slv_reg10_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg10[9]),
        .R(SSB_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg11[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in_0[3]),
        .I3(p_0_in_0[0]),
        .I4(p_0_in_0[1]),
        .I5(p_0_in_0[2]),
        .O(\slv_reg11[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg11[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in_0[3]),
        .I3(p_0_in_0[0]),
        .I4(p_0_in_0[1]),
        .I5(p_0_in_0[2]),
        .O(\slv_reg11[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg11[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in_0[3]),
        .I3(p_0_in_0[0]),
        .I4(p_0_in_0[1]),
        .I5(p_0_in_0[2]),
        .O(\slv_reg11[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg11[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in_0[3]),
        .I3(p_0_in_0[0]),
        .I4(p_0_in_0[1]),
        .I5(p_0_in_0[2]),
        .O(\slv_reg11[7]_i_1_n_0 ));
  FDRE \slv_reg11_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg11[0]),
        .R(SSB_n_0));
  FDRE \slv_reg11_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg11[10]),
        .R(SSB_n_0));
  FDRE \slv_reg11_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg11[11]),
        .R(SSB_n_0));
  FDRE \slv_reg11_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg11[12]),
        .R(SSB_n_0));
  FDRE \slv_reg11_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg11[13]),
        .R(SSB_n_0));
  FDRE \slv_reg11_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg11[14]),
        .R(SSB_n_0));
  FDRE \slv_reg11_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg11[15]),
        .R(SSB_n_0));
  FDRE \slv_reg11_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg11[16]),
        .R(SSB_n_0));
  FDRE \slv_reg11_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg11[17]),
        .R(SSB_n_0));
  FDRE \slv_reg11_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg11[18]),
        .R(SSB_n_0));
  FDRE \slv_reg11_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg11[19]),
        .R(SSB_n_0));
  FDRE \slv_reg11_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg11[1]),
        .R(SSB_n_0));
  FDRE \slv_reg11_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg11[20]),
        .R(SSB_n_0));
  FDRE \slv_reg11_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg11[21]),
        .R(SSB_n_0));
  FDRE \slv_reg11_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg11[22]),
        .R(SSB_n_0));
  FDRE \slv_reg11_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg11[23]),
        .R(SSB_n_0));
  FDRE \slv_reg11_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg11[24]),
        .R(SSB_n_0));
  FDRE \slv_reg11_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg11[25]),
        .R(SSB_n_0));
  FDRE \slv_reg11_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg11[26]),
        .R(SSB_n_0));
  FDRE \slv_reg11_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg11[27]),
        .R(SSB_n_0));
  FDRE \slv_reg11_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg11[28]),
        .R(SSB_n_0));
  FDRE \slv_reg11_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg11[29]),
        .R(SSB_n_0));
  FDRE \slv_reg11_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg11[2]),
        .R(SSB_n_0));
  FDRE \slv_reg11_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg11[30]),
        .R(SSB_n_0));
  FDRE \slv_reg11_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg11[31]),
        .R(SSB_n_0));
  FDRE \slv_reg11_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg11[3]),
        .R(SSB_n_0));
  FDRE \slv_reg11_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg11[4]),
        .R(SSB_n_0));
  FDRE \slv_reg11_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg11[5]),
        .R(SSB_n_0));
  FDRE \slv_reg11_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg11[6]),
        .R(SSB_n_0));
  FDRE \slv_reg11_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg11[7]),
        .R(SSB_n_0));
  FDRE \slv_reg11_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg11[8]),
        .R(SSB_n_0));
  FDRE \slv_reg11_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg11[9]),
        .R(SSB_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg12[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[3]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in_0[2]),
        .I4(p_0_in_0[0]),
        .I5(p_0_in_0[1]),
        .O(\slv_reg12[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg12[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[3]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in_0[2]),
        .I4(p_0_in_0[0]),
        .I5(p_0_in_0[1]),
        .O(\slv_reg12[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg12[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[3]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in_0[2]),
        .I4(p_0_in_0[0]),
        .I5(p_0_in_0[1]),
        .O(\slv_reg12[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg12[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[3]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in_0[2]),
        .I4(p_0_in_0[0]),
        .I5(p_0_in_0[1]),
        .O(\slv_reg12[7]_i_1_n_0 ));
  FDRE \slv_reg12_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg12[0]),
        .R(SSB_n_0));
  FDRE \slv_reg12_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg12[10]),
        .R(SSB_n_0));
  FDRE \slv_reg12_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg12[11]),
        .R(SSB_n_0));
  FDRE \slv_reg12_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg12[12]),
        .R(SSB_n_0));
  FDRE \slv_reg12_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg12[13]),
        .R(SSB_n_0));
  FDRE \slv_reg12_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg12[14]),
        .R(SSB_n_0));
  FDRE \slv_reg12_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg12[15]),
        .R(SSB_n_0));
  FDRE \slv_reg12_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg12[16]),
        .R(SSB_n_0));
  FDRE \slv_reg12_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg12[17]),
        .R(SSB_n_0));
  FDRE \slv_reg12_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg12[18]),
        .R(SSB_n_0));
  FDRE \slv_reg12_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg12[19]),
        .R(SSB_n_0));
  FDRE \slv_reg12_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg12[1]),
        .R(SSB_n_0));
  FDRE \slv_reg12_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg12[20]),
        .R(SSB_n_0));
  FDRE \slv_reg12_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg12[21]),
        .R(SSB_n_0));
  FDRE \slv_reg12_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg12[22]),
        .R(SSB_n_0));
  FDRE \slv_reg12_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg12[23]),
        .R(SSB_n_0));
  FDRE \slv_reg12_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg12[24]),
        .R(SSB_n_0));
  FDRE \slv_reg12_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg12[25]),
        .R(SSB_n_0));
  FDRE \slv_reg12_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg12[26]),
        .R(SSB_n_0));
  FDRE \slv_reg12_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg12[27]),
        .R(SSB_n_0));
  FDRE \slv_reg12_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg12[28]),
        .R(SSB_n_0));
  FDRE \slv_reg12_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg12[29]),
        .R(SSB_n_0));
  FDRE \slv_reg12_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg12[2]),
        .R(SSB_n_0));
  FDRE \slv_reg12_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg12[30]),
        .R(SSB_n_0));
  FDRE \slv_reg12_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg12[31]),
        .R(SSB_n_0));
  FDRE \slv_reg12_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg12[3]),
        .R(SSB_n_0));
  FDRE \slv_reg12_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg12[4]),
        .R(SSB_n_0));
  FDRE \slv_reg12_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg12[5]),
        .R(SSB_n_0));
  FDRE \slv_reg12_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg12[6]),
        .R(SSB_n_0));
  FDRE \slv_reg12_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg12[7]),
        .R(SSB_n_0));
  FDRE \slv_reg12_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg12[8]),
        .R(SSB_n_0));
  FDRE \slv_reg12_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg12[9]),
        .R(SSB_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg13[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[3]),
        .I3(p_0_in_0[0]),
        .I4(s00_axi_wstrb[1]),
        .I5(p_0_in_0[1]),
        .O(\slv_reg13[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg13[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[3]),
        .I3(p_0_in_0[0]),
        .I4(s00_axi_wstrb[2]),
        .I5(p_0_in_0[1]),
        .O(\slv_reg13[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg13[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[3]),
        .I3(p_0_in_0[0]),
        .I4(s00_axi_wstrb[3]),
        .I5(p_0_in_0[1]),
        .O(\slv_reg13[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg13[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[3]),
        .I3(p_0_in_0[0]),
        .I4(s00_axi_wstrb[0]),
        .I5(p_0_in_0[1]),
        .O(\slv_reg13[7]_i_1_n_0 ));
  FDRE \slv_reg13_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg13[0]),
        .R(SSB_n_0));
  FDRE \slv_reg13_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg13[10]),
        .R(SSB_n_0));
  FDRE \slv_reg13_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg13[11]),
        .R(SSB_n_0));
  FDRE \slv_reg13_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg13[12]),
        .R(SSB_n_0));
  FDRE \slv_reg13_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg13[13]),
        .R(SSB_n_0));
  FDRE \slv_reg13_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg13[14]),
        .R(SSB_n_0));
  FDRE \slv_reg13_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg13[15]),
        .R(SSB_n_0));
  FDRE \slv_reg13_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg13[16]),
        .R(SSB_n_0));
  FDRE \slv_reg13_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg13[17]),
        .R(SSB_n_0));
  FDRE \slv_reg13_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg13[18]),
        .R(SSB_n_0));
  FDRE \slv_reg13_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg13[19]),
        .R(SSB_n_0));
  FDRE \slv_reg13_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg13[1]),
        .R(SSB_n_0));
  FDRE \slv_reg13_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg13[20]),
        .R(SSB_n_0));
  FDRE \slv_reg13_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg13[21]),
        .R(SSB_n_0));
  FDRE \slv_reg13_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg13[22]),
        .R(SSB_n_0));
  FDRE \slv_reg13_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg13[23]),
        .R(SSB_n_0));
  FDRE \slv_reg13_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg13[24]),
        .R(SSB_n_0));
  FDRE \slv_reg13_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg13[25]),
        .R(SSB_n_0));
  FDRE \slv_reg13_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg13[26]),
        .R(SSB_n_0));
  FDRE \slv_reg13_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg13[27]),
        .R(SSB_n_0));
  FDRE \slv_reg13_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg13[28]),
        .R(SSB_n_0));
  FDRE \slv_reg13_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg13[29]),
        .R(SSB_n_0));
  FDRE \slv_reg13_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg13[2]),
        .R(SSB_n_0));
  FDRE \slv_reg13_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg13[30]),
        .R(SSB_n_0));
  FDRE \slv_reg13_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg13[31]),
        .R(SSB_n_0));
  FDRE \slv_reg13_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg13[3]),
        .R(SSB_n_0));
  FDRE \slv_reg13_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg13[4]),
        .R(SSB_n_0));
  FDRE \slv_reg13_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg13[5]),
        .R(SSB_n_0));
  FDRE \slv_reg13_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg13[6]),
        .R(SSB_n_0));
  FDRE \slv_reg13_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg13[7]),
        .R(SSB_n_0));
  FDRE \slv_reg13_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg13[8]),
        .R(SSB_n_0));
  FDRE \slv_reg13_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg13[9]),
        .R(SSB_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg14[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[3]),
        .I3(s00_axi_wstrb[1]),
        .I4(p_0_in_0[1]),
        .I5(p_0_in_0[0]),
        .O(\slv_reg14[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg14[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[3]),
        .I3(s00_axi_wstrb[2]),
        .I4(p_0_in_0[1]),
        .I5(p_0_in_0[0]),
        .O(\slv_reg14[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg14[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[3]),
        .I3(s00_axi_wstrb[3]),
        .I4(p_0_in_0[1]),
        .I5(p_0_in_0[0]),
        .O(\slv_reg14[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg14[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[3]),
        .I3(s00_axi_wstrb[0]),
        .I4(p_0_in_0[1]),
        .I5(p_0_in_0[0]),
        .O(\slv_reg14[7]_i_1_n_0 ));
  FDRE \slv_reg14_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg14[0]),
        .R(SSB_n_0));
  FDRE \slv_reg14_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg14[10]),
        .R(SSB_n_0));
  FDRE \slv_reg14_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg14[11]),
        .R(SSB_n_0));
  FDRE \slv_reg14_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg14[12]),
        .R(SSB_n_0));
  FDRE \slv_reg14_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg14[13]),
        .R(SSB_n_0));
  FDRE \slv_reg14_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg14[14]),
        .R(SSB_n_0));
  FDRE \slv_reg14_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg14[15]),
        .R(SSB_n_0));
  FDRE \slv_reg14_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg14[16]),
        .R(SSB_n_0));
  FDRE \slv_reg14_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg14[17]),
        .R(SSB_n_0));
  FDRE \slv_reg14_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg14[18]),
        .R(SSB_n_0));
  FDRE \slv_reg14_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg14[19]),
        .R(SSB_n_0));
  FDRE \slv_reg14_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg14[1]),
        .R(SSB_n_0));
  FDRE \slv_reg14_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg14[20]),
        .R(SSB_n_0));
  FDRE \slv_reg14_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg14[21]),
        .R(SSB_n_0));
  FDRE \slv_reg14_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg14[22]),
        .R(SSB_n_0));
  FDRE \slv_reg14_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg14[23]),
        .R(SSB_n_0));
  FDRE \slv_reg14_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg14[24]),
        .R(SSB_n_0));
  FDRE \slv_reg14_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg14[25]),
        .R(SSB_n_0));
  FDRE \slv_reg14_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg14[26]),
        .R(SSB_n_0));
  FDRE \slv_reg14_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg14[27]),
        .R(SSB_n_0));
  FDRE \slv_reg14_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg14[28]),
        .R(SSB_n_0));
  FDRE \slv_reg14_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg14[29]),
        .R(SSB_n_0));
  FDRE \slv_reg14_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg14[2]),
        .R(SSB_n_0));
  FDRE \slv_reg14_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg14[30]),
        .R(SSB_n_0));
  FDRE \slv_reg14_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg14[31]),
        .R(SSB_n_0));
  FDRE \slv_reg14_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg14[3]),
        .R(SSB_n_0));
  FDRE \slv_reg14_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg14[4]),
        .R(SSB_n_0));
  FDRE \slv_reg14_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg14[5]),
        .R(SSB_n_0));
  FDRE \slv_reg14_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg14[6]),
        .R(SSB_n_0));
  FDRE \slv_reg14_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg14[7]),
        .R(SSB_n_0));
  FDRE \slv_reg14_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg14[8]),
        .R(SSB_n_0));
  FDRE \slv_reg14_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg14[9]),
        .R(SSB_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \slv_reg15[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[2]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in_0[0]),
        .I4(p_0_in_0[1]),
        .I5(p_0_in_0[3]),
        .O(\slv_reg15[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \slv_reg15[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[2]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in_0[0]),
        .I4(p_0_in_0[1]),
        .I5(p_0_in_0[3]),
        .O(\slv_reg15[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \slv_reg15[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[2]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in_0[0]),
        .I4(p_0_in_0[1]),
        .I5(p_0_in_0[3]),
        .O(\slv_reg15[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \slv_reg15[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[2]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in_0[0]),
        .I4(p_0_in_0[1]),
        .I5(p_0_in_0[3]),
        .O(\slv_reg15[7]_i_1_n_0 ));
  FDRE \slv_reg15_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg15[0]),
        .R(SSB_n_0));
  FDRE \slv_reg15_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg15[10]),
        .R(SSB_n_0));
  FDRE \slv_reg15_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg15[11]),
        .R(SSB_n_0));
  FDRE \slv_reg15_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg15[12]),
        .R(SSB_n_0));
  FDRE \slv_reg15_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg15[13]),
        .R(SSB_n_0));
  FDRE \slv_reg15_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg15[14]),
        .R(SSB_n_0));
  FDRE \slv_reg15_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg15[15]),
        .R(SSB_n_0));
  FDRE \slv_reg15_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg15[16]),
        .R(SSB_n_0));
  FDRE \slv_reg15_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg15[17]),
        .R(SSB_n_0));
  FDRE \slv_reg15_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg15[18]),
        .R(SSB_n_0));
  FDRE \slv_reg15_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg15[19]),
        .R(SSB_n_0));
  FDRE \slv_reg15_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg15[1]),
        .R(SSB_n_0));
  FDRE \slv_reg15_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg15[20]),
        .R(SSB_n_0));
  FDRE \slv_reg15_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg15[21]),
        .R(SSB_n_0));
  FDRE \slv_reg15_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg15[22]),
        .R(SSB_n_0));
  FDRE \slv_reg15_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg15[23]),
        .R(SSB_n_0));
  FDRE \slv_reg15_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg15[24]),
        .R(SSB_n_0));
  FDRE \slv_reg15_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg15[25]),
        .R(SSB_n_0));
  FDRE \slv_reg15_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg15[26]),
        .R(SSB_n_0));
  FDRE \slv_reg15_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg15[27]),
        .R(SSB_n_0));
  FDRE \slv_reg15_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg15[28]),
        .R(SSB_n_0));
  FDRE \slv_reg15_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg15[29]),
        .R(SSB_n_0));
  FDRE \slv_reg15_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg15[2]),
        .R(SSB_n_0));
  FDRE \slv_reg15_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg15[30]),
        .R(SSB_n_0));
  FDRE \slv_reg15_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg15[31]),
        .R(SSB_n_0));
  FDRE \slv_reg15_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg15[3]),
        .R(SSB_n_0));
  FDRE \slv_reg15_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg15[4]),
        .R(SSB_n_0));
  FDRE \slv_reg15_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg15[5]),
        .R(SSB_n_0));
  FDRE \slv_reg15_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg15[6]),
        .R(SSB_n_0));
  FDRE \slv_reg15_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg15[7]),
        .R(SSB_n_0));
  FDRE \slv_reg15_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg15[8]),
        .R(SSB_n_0));
  FDRE \slv_reg15_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg15[9]),
        .R(SSB_n_0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg1[15]_i_2 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in_0[3]),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[2]),
        .I5(p_0_in_0[0]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg1[15]_i_3 
       (.I0(s00_axi_wready),
        .I1(s00_axi_awready),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in_0[3]),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[2]),
        .I5(p_0_in_0[0]),
        .O(p_1_in[23]));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in_0[3]),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[2]),
        .I5(p_0_in_0[0]),
        .O(p_1_in[31]));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in_0[3]),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[2]),
        .I5(p_0_in_0[0]),
        .O(p_1_in[7]));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(led[0]),
        .R(SSB_n_0));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(led[10]),
        .R(SSB_n_0));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(led[11]),
        .R(SSB_n_0));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(led[12]),
        .R(SSB_n_0));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(led[13]),
        .R(SSB_n_0));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(led[14]),
        .R(SSB_n_0));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(led[15]),
        .R(SSB_n_0));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(SSB_n_0));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(SSB_n_0));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(SSB_n_0));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(SSB_n_0));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(led[1]),
        .R(SSB_n_0));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(SSB_n_0));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(SSB_n_0));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(SSB_n_0));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(SSB_n_0));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(SSB_n_0));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(SSB_n_0));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(SSB_n_0));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(SSB_n_0));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(SSB_n_0));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(SSB_n_0));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(led[2]),
        .R(SSB_n_0));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(SSB_n_0));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(SSB_n_0));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(led[3]),
        .R(SSB_n_0));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(led[4]),
        .R(SSB_n_0));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(led[5]),
        .R(SSB_n_0));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(led[6]),
        .R(SSB_n_0));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(led[7]),
        .R(SSB_n_0));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(led[8]),
        .R(SSB_n_0));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(led[9]),
        .R(SSB_n_0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in_0[3]),
        .I3(p_0_in_0[0]),
        .I4(p_0_in_0[2]),
        .I5(p_0_in_0[1]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in_0[3]),
        .I3(p_0_in_0[0]),
        .I4(p_0_in_0[2]),
        .I5(p_0_in_0[1]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in_0[3]),
        .I3(p_0_in_0[0]),
        .I4(p_0_in_0[2]),
        .I5(p_0_in_0[1]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in_0[3]),
        .I3(p_0_in_0[0]),
        .I4(p_0_in_0[2]),
        .I5(p_0_in_0[1]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg2_reg_n_0_[0] ),
        .R(SSB_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(rgb1_greendc[2]),
        .R(SSB_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(rgb1_greendc[3]),
        .R(SSB_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(rgb1_greendc[4]),
        .R(SSB_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(rgb1_greendc[5]),
        .R(SSB_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(rgb1_greendc[6]),
        .R(SSB_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(rgb1_greendc[7]),
        .R(SSB_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(rgb1_reddc[0]),
        .R(SSB_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(rgb1_reddc[1]),
        .R(SSB_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(rgb1_reddc[2]),
        .R(SSB_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(rgb1_reddc[3]),
        .R(SSB_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg2_reg_n_0_[1] ),
        .R(SSB_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(rgb1_reddc[4]),
        .R(SSB_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(rgb1_reddc[5]),
        .R(SSB_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(rgb1_reddc[6]),
        .R(SSB_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(rgb1_reddc[7]),
        .R(SSB_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg2_reg_n_0_[24] ),
        .R(SSB_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg2_reg_n_0_[25] ),
        .R(SSB_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg2_reg_n_0_[26] ),
        .R(SSB_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg2_reg_n_0_[27] ),
        .R(SSB_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg2_reg_n_0_[28] ),
        .R(SSB_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg2_reg_n_0_[29] ),
        .R(SSB_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg2_reg_n_0_[2] ),
        .R(SSB_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg2_reg_n_0_[30] ),
        .R(SSB_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg2_reg_n_0_[31] ),
        .R(SSB_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg2_reg_n_0_[3] ),
        .R(SSB_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg2_reg_n_0_[4] ),
        .R(SSB_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg2_reg_n_0_[5] ),
        .R(SSB_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg2_reg_n_0_[6] ),
        .R(SSB_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg2_reg_n_0_[7] ),
        .R(SSB_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(rgb1_greendc[0]),
        .R(SSB_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(rgb1_greendc[1]),
        .R(SSB_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[2]),
        .I5(p_0_in_0[3]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[2]),
        .I5(p_0_in_0[3]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[2]),
        .I5(p_0_in_0[3]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[2]),
        .I5(p_0_in_0[3]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3__0[0]),
        .R(SSB_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(SSB_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(SSB_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(SSB_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(SSB_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(SSB_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(SSB_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(SSB_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(SSB_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(SSB_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(SSB_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3__0[1]),
        .R(SSB_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(SSB_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(SSB_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(SSB_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(SSB_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(SSB_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(SSB_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(SSB_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(SSB_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(SSB_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(SSB_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3__0[2]),
        .R(SSB_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(SSB_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(SSB_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(SSB_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(SSB_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(SSB_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(SSB_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(SSB_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(SSB_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(SSB_n_0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg4[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in_0[3]),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[0]),
        .I5(p_0_in_0[2]),
        .O(\slv_reg4[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg4[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in_0[3]),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[0]),
        .I5(p_0_in_0[2]),
        .O(\slv_reg4[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg4[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in_0[3]),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[0]),
        .I5(p_0_in_0[2]),
        .O(\slv_reg4[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg4[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in_0[3]),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[0]),
        .I5(p_0_in_0[2]),
        .O(\slv_reg4[7]_i_1_n_0 ));
  FDRE \slv_reg4_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg4_reg_n_0_[0] ),
        .R(SSB_n_0));
  FDRE \slv_reg4_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(rgb2_greendc[2]),
        .R(SSB_n_0));
  FDRE \slv_reg4_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(rgb2_greendc[3]),
        .R(SSB_n_0));
  FDRE \slv_reg4_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(rgb2_greendc[4]),
        .R(SSB_n_0));
  FDRE \slv_reg4_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(rgb2_greendc[5]),
        .R(SSB_n_0));
  FDRE \slv_reg4_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(rgb2_greendc[6]),
        .R(SSB_n_0));
  FDRE \slv_reg4_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(rgb2_greendc[7]),
        .R(SSB_n_0));
  FDRE \slv_reg4_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(rgb2_reddc[0]),
        .R(SSB_n_0));
  FDRE \slv_reg4_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(rgb2_reddc[1]),
        .R(SSB_n_0));
  FDRE \slv_reg4_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(rgb2_reddc[2]),
        .R(SSB_n_0));
  FDRE \slv_reg4_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(rgb2_reddc[3]),
        .R(SSB_n_0));
  FDRE \slv_reg4_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg4_reg_n_0_[1] ),
        .R(SSB_n_0));
  FDRE \slv_reg4_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(rgb2_reddc[4]),
        .R(SSB_n_0));
  FDRE \slv_reg4_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(rgb2_reddc[5]),
        .R(SSB_n_0));
  FDRE \slv_reg4_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(rgb2_reddc[6]),
        .R(SSB_n_0));
  FDRE \slv_reg4_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(rgb2_reddc[7]),
        .R(SSB_n_0));
  FDRE \slv_reg4_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg4_reg_n_0_[24] ),
        .R(SSB_n_0));
  FDRE \slv_reg4_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg4_reg_n_0_[25] ),
        .R(SSB_n_0));
  FDRE \slv_reg4_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg4_reg_n_0_[26] ),
        .R(SSB_n_0));
  FDRE \slv_reg4_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg4_reg_n_0_[27] ),
        .R(SSB_n_0));
  FDRE \slv_reg4_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg4_reg_n_0_[28] ),
        .R(SSB_n_0));
  FDRE \slv_reg4_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg4_reg_n_0_[29] ),
        .R(SSB_n_0));
  FDRE \slv_reg4_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg4_reg_n_0_[2] ),
        .R(SSB_n_0));
  FDRE \slv_reg4_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg4_reg_n_0_[30] ),
        .R(SSB_n_0));
  FDRE \slv_reg4_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg4_reg_n_0_[31] ),
        .R(SSB_n_0));
  FDRE \slv_reg4_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg4_reg_n_0_[3] ),
        .R(SSB_n_0));
  FDRE \slv_reg4_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg4_reg_n_0_[4] ),
        .R(SSB_n_0));
  FDRE \slv_reg4_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg4_reg_n_0_[5] ),
        .R(SSB_n_0));
  FDRE \slv_reg4_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg4_reg_n_0_[6] ),
        .R(SSB_n_0));
  FDRE \slv_reg4_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg4_reg_n_0_[7] ),
        .R(SSB_n_0));
  FDRE \slv_reg4_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(rgb2_greendc[0]),
        .R(SSB_n_0));
  FDRE \slv_reg4_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(rgb2_greendc[1]),
        .R(SSB_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[2]),
        .I4(p_0_in_0[1]),
        .I5(p_0_in_0[3]),
        .O(\slv_reg5[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[2]),
        .I4(p_0_in_0[1]),
        .I5(p_0_in_0[3]),
        .O(\slv_reg5[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[2]),
        .I4(p_0_in_0[1]),
        .I5(p_0_in_0[3]),
        .O(\slv_reg5[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg5[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[2]),
        .I4(p_0_in_0[1]),
        .I5(p_0_in_0[3]),
        .O(\slv_reg5[7]_i_1_n_0 ));
  FDRE \slv_reg5_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg5__0[0]),
        .R(SSB_n_0));
  FDRE \slv_reg5_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg5[10]),
        .R(SSB_n_0));
  FDRE \slv_reg5_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg5[11]),
        .R(SSB_n_0));
  FDRE \slv_reg5_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg5[12]),
        .R(SSB_n_0));
  FDRE \slv_reg5_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg5[13]),
        .R(SSB_n_0));
  FDRE \slv_reg5_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg5[14]),
        .R(SSB_n_0));
  FDRE \slv_reg5_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg5[15]),
        .R(SSB_n_0));
  FDRE \slv_reg5_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg5[16]),
        .R(SSB_n_0));
  FDRE \slv_reg5_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg5[17]),
        .R(SSB_n_0));
  FDRE \slv_reg5_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg5[18]),
        .R(SSB_n_0));
  FDRE \slv_reg5_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg5[19]),
        .R(SSB_n_0));
  FDRE \slv_reg5_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg5__0[1]),
        .R(SSB_n_0));
  FDRE \slv_reg5_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg5[20]),
        .R(SSB_n_0));
  FDRE \slv_reg5_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg5[21]),
        .R(SSB_n_0));
  FDRE \slv_reg5_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg5[22]),
        .R(SSB_n_0));
  FDRE \slv_reg5_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg5[23]),
        .R(SSB_n_0));
  FDRE \slv_reg5_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg5[24]),
        .R(SSB_n_0));
  FDRE \slv_reg5_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg5[25]),
        .R(SSB_n_0));
  FDRE \slv_reg5_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg5[26]),
        .R(SSB_n_0));
  FDRE \slv_reg5_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg5[27]),
        .R(SSB_n_0));
  FDRE \slv_reg5_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg5[28]),
        .R(SSB_n_0));
  FDRE \slv_reg5_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg5[29]),
        .R(SSB_n_0));
  FDRE \slv_reg5_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg5__0[2]),
        .R(SSB_n_0));
  FDRE \slv_reg5_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg5[30]),
        .R(SSB_n_0));
  FDRE \slv_reg5_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg5[31]),
        .R(SSB_n_0));
  FDRE \slv_reg5_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg5[3]),
        .R(SSB_n_0));
  FDRE \slv_reg5_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg5[4]),
        .R(SSB_n_0));
  FDRE \slv_reg5_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg5[5]),
        .R(SSB_n_0));
  FDRE \slv_reg5_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg5[6]),
        .R(SSB_n_0));
  FDRE \slv_reg5_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg5[7]),
        .R(SSB_n_0));
  FDRE \slv_reg5_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg5[8]),
        .R(SSB_n_0));
  FDRE \slv_reg5_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg5[9]),
        .R(SSB_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg6[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in_0[2]),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[0]),
        .I5(p_0_in_0[3]),
        .O(\slv_reg6[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg6[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in_0[2]),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[0]),
        .I5(p_0_in_0[3]),
        .O(\slv_reg6[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg6[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in_0[2]),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[0]),
        .I5(p_0_in_0[3]),
        .O(\slv_reg6[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg6[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in_0[2]),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[0]),
        .I5(p_0_in_0[3]),
        .O(\slv_reg6[7]_i_1_n_0 ));
  FDRE \slv_reg6_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg6_reg_n_0_[0] ),
        .R(SSB_n_0));
  FDRE \slv_reg6_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(dig1[4]),
        .R(SSB_n_0));
  FDRE \slv_reg6_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg6_reg_n_0_[11] ),
        .R(SSB_n_0));
  FDRE \slv_reg6_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(dig2[0]),
        .R(SSB_n_0));
  FDRE \slv_reg6_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(dig2[1]),
        .R(SSB_n_0));
  FDRE \slv_reg6_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(dig2[2]),
        .R(SSB_n_0));
  FDRE \slv_reg6_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(dig2[3]),
        .R(SSB_n_0));
  FDRE \slv_reg6_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(dig2[4]),
        .R(SSB_n_0));
  FDRE \slv_reg6_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg6_reg_n_0_[17] ),
        .R(SSB_n_0));
  FDRE \slv_reg6_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(dig3[0]),
        .R(SSB_n_0));
  FDRE \slv_reg6_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(dig3[1]),
        .R(SSB_n_0));
  FDRE \slv_reg6_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg6_reg_n_0_[1] ),
        .R(SSB_n_0));
  FDRE \slv_reg6_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(dig3[2]),
        .R(SSB_n_0));
  FDRE \slv_reg6_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(dig3[3]),
        .R(SSB_n_0));
  FDRE \slv_reg6_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(dig3[4]),
        .R(SSB_n_0));
  FDRE \slv_reg6_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg6_reg_n_0_[23] ),
        .R(SSB_n_0));
  FDRE \slv_reg6_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(decpts[0]),
        .R(SSB_n_0));
  FDRE \slv_reg6_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(decpts[1]),
        .R(SSB_n_0));
  FDRE \slv_reg6_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(decpts[2]),
        .R(SSB_n_0));
  FDRE \slv_reg6_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(decpts[3]),
        .R(SSB_n_0));
  FDRE \slv_reg6_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg6_reg_n_0_[28] ),
        .R(SSB_n_0));
  FDRE \slv_reg6_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg6_reg_n_0_[29] ),
        .R(SSB_n_0));
  FDRE \slv_reg6_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg6_reg_n_0_[2] ),
        .R(SSB_n_0));
  FDRE \slv_reg6_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg6_reg_n_0_[30] ),
        .R(SSB_n_0));
  FDRE \slv_reg6_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg6_reg_n_0_[31] ),
        .R(SSB_n_0));
  FDRE \slv_reg6_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg6_reg_n_0_[3] ),
        .R(SSB_n_0));
  FDRE \slv_reg6_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg6_reg_n_0_[4] ),
        .R(SSB_n_0));
  FDRE \slv_reg6_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg6_reg_n_0_[5] ),
        .R(SSB_n_0));
  FDRE \slv_reg6_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(dig1[0]),
        .R(SSB_n_0));
  FDRE \slv_reg6_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(dig1[1]),
        .R(SSB_n_0));
  FDRE \slv_reg6_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(dig1[2]),
        .R(SSB_n_0));
  FDRE \slv_reg6_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(dig1[3]),
        .R(SSB_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg7[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[2]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in_0[0]),
        .I4(p_0_in_0[1]),
        .I5(p_0_in_0[3]),
        .O(\slv_reg7[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg7[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[2]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in_0[0]),
        .I4(p_0_in_0[1]),
        .I5(p_0_in_0[3]),
        .O(\slv_reg7[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg7[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[2]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in_0[0]),
        .I4(p_0_in_0[1]),
        .I5(p_0_in_0[3]),
        .O(\slv_reg7[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg7[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[2]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in_0[0]),
        .I4(p_0_in_0[1]),
        .I5(p_0_in_0[3]),
        .O(\slv_reg7[7]_i_1_n_0 ));
  FDRE \slv_reg7_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg7_reg_n_0_[0] ),
        .R(SSB_n_0));
  FDRE \slv_reg7_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(dig5[4]),
        .R(SSB_n_0));
  FDRE \slv_reg7_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg7_reg_n_0_[11] ),
        .R(SSB_n_0));
  FDRE \slv_reg7_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(dig6[0]),
        .R(SSB_n_0));
  FDRE \slv_reg7_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(dig6[1]),
        .R(SSB_n_0));
  FDRE \slv_reg7_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(dig6[2]),
        .R(SSB_n_0));
  FDRE \slv_reg7_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(dig6[3]),
        .R(SSB_n_0));
  FDRE \slv_reg7_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(dig6[4]),
        .R(SSB_n_0));
  FDRE \slv_reg7_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg7_reg_n_0_[17] ),
        .R(SSB_n_0));
  FDRE \slv_reg7_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(dig7[0]),
        .R(SSB_n_0));
  FDRE \slv_reg7_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(dig7[1]),
        .R(SSB_n_0));
  FDRE \slv_reg7_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg7_reg_n_0_[1] ),
        .R(SSB_n_0));
  FDRE \slv_reg7_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(dig7[2]),
        .R(SSB_n_0));
  FDRE \slv_reg7_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(dig7[3]),
        .R(SSB_n_0));
  FDRE \slv_reg7_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(dig7[4]),
        .R(SSB_n_0));
  FDRE \slv_reg7_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg7_reg_n_0_[23] ),
        .R(SSB_n_0));
  FDRE \slv_reg7_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(decpts[4]),
        .R(SSB_n_0));
  FDRE \slv_reg7_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(decpts[5]),
        .R(SSB_n_0));
  FDRE \slv_reg7_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(decpts[6]),
        .R(SSB_n_0));
  FDRE \slv_reg7_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(decpts[7]),
        .R(SSB_n_0));
  FDRE \slv_reg7_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg7_reg_n_0_[28] ),
        .R(SSB_n_0));
  FDRE \slv_reg7_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg7_reg_n_0_[29] ),
        .R(SSB_n_0));
  FDRE \slv_reg7_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg7_reg_n_0_[2] ),
        .R(SSB_n_0));
  FDRE \slv_reg7_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg7_reg_n_0_[30] ),
        .R(SSB_n_0));
  FDRE \slv_reg7_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg7_reg_n_0_[31] ),
        .R(SSB_n_0));
  FDRE \slv_reg7_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg7_reg_n_0_[3] ),
        .R(SSB_n_0));
  FDRE \slv_reg7_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg7_reg_n_0_[4] ),
        .R(SSB_n_0));
  FDRE \slv_reg7_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg7_reg_n_0_[5] ),
        .R(SSB_n_0));
  FDRE \slv_reg7_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(dig5[0]),
        .R(SSB_n_0));
  FDRE \slv_reg7_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(dig5[1]),
        .R(SSB_n_0));
  FDRE \slv_reg7_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(dig5[2]),
        .R(SSB_n_0));
  FDRE \slv_reg7_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(dig5[3]),
        .R(SSB_n_0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg8[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[0]),
        .I4(p_0_in_0[2]),
        .I5(s00_axi_wstrb[1]),
        .O(\slv_reg8[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg8[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[0]),
        .I4(p_0_in_0[2]),
        .I5(s00_axi_wstrb[2]),
        .O(\slv_reg8[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg8[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[0]),
        .I4(p_0_in_0[2]),
        .I5(s00_axi_wstrb[3]),
        .O(\slv_reg8[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \slv_reg8[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[0]),
        .I4(p_0_in_0[2]),
        .I5(s00_axi_wstrb[0]),
        .O(\slv_reg8[7]_i_1_n_0 ));
  FDRE \slv_reg8_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg8[0]),
        .R(SSB_n_0));
  FDRE \slv_reg8_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg8[10]),
        .R(SSB_n_0));
  FDRE \slv_reg8_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg8[11]),
        .R(SSB_n_0));
  FDRE \slv_reg8_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg8[12]),
        .R(SSB_n_0));
  FDRE \slv_reg8_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg8[13]),
        .R(SSB_n_0));
  FDRE \slv_reg8_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg8[14]),
        .R(SSB_n_0));
  FDRE \slv_reg8_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg8[15]),
        .R(SSB_n_0));
  FDRE \slv_reg8_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg8[16]),
        .R(SSB_n_0));
  FDRE \slv_reg8_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg8[17]),
        .R(SSB_n_0));
  FDRE \slv_reg8_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg8[18]),
        .R(SSB_n_0));
  FDRE \slv_reg8_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg8[19]),
        .R(SSB_n_0));
  FDRE \slv_reg8_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg8[1]),
        .R(SSB_n_0));
  FDRE \slv_reg8_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg8[20]),
        .R(SSB_n_0));
  FDRE \slv_reg8_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg8[21]),
        .R(SSB_n_0));
  FDRE \slv_reg8_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg8[22]),
        .R(SSB_n_0));
  FDRE \slv_reg8_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg8[23]),
        .R(SSB_n_0));
  FDRE \slv_reg8_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg8[24]),
        .R(SSB_n_0));
  FDRE \slv_reg8_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg8[25]),
        .R(SSB_n_0));
  FDRE \slv_reg8_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg8[26]),
        .R(SSB_n_0));
  FDRE \slv_reg8_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg8[27]),
        .R(SSB_n_0));
  FDRE \slv_reg8_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg8[28]),
        .R(SSB_n_0));
  FDRE \slv_reg8_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg8[29]),
        .R(SSB_n_0));
  FDRE \slv_reg8_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg8[2]),
        .R(SSB_n_0));
  FDRE \slv_reg8_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg8[30]),
        .R(SSB_n_0));
  FDRE \slv_reg8_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg8[31]),
        .R(SSB_n_0));
  FDRE \slv_reg8_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg8[3]),
        .R(SSB_n_0));
  FDRE \slv_reg8_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg8[4]),
        .R(SSB_n_0));
  FDRE \slv_reg8_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg8[5]),
        .R(SSB_n_0));
  FDRE \slv_reg8_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg8[6]),
        .R(SSB_n_0));
  FDRE \slv_reg8_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg8[7]),
        .R(SSB_n_0));
  FDRE \slv_reg8_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg8[8]),
        .R(SSB_n_0));
  FDRE \slv_reg8_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg8[9]),
        .R(SSB_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg9[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[0]),
        .I3(s00_axi_wstrb[1]),
        .I4(p_0_in_0[1]),
        .I5(p_0_in_0[2]),
        .O(\slv_reg9[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg9[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[0]),
        .I3(s00_axi_wstrb[2]),
        .I4(p_0_in_0[1]),
        .I5(p_0_in_0[2]),
        .O(\slv_reg9[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg9[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[0]),
        .I3(s00_axi_wstrb[3]),
        .I4(p_0_in_0[1]),
        .I5(p_0_in_0[2]),
        .O(\slv_reg9[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg9[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[0]),
        .I3(s00_axi_wstrb[0]),
        .I4(p_0_in_0[1]),
        .I5(p_0_in_0[2]),
        .O(\slv_reg9[7]_i_1_n_0 ));
  FDRE \slv_reg9_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg9[0]),
        .R(SSB_n_0));
  FDRE \slv_reg9_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg9[10]),
        .R(SSB_n_0));
  FDRE \slv_reg9_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg9[11]),
        .R(SSB_n_0));
  FDRE \slv_reg9_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg9[12]),
        .R(SSB_n_0));
  FDRE \slv_reg9_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg9[13]),
        .R(SSB_n_0));
  FDRE \slv_reg9_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg9[14]),
        .R(SSB_n_0));
  FDRE \slv_reg9_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg9[15]),
        .R(SSB_n_0));
  FDRE \slv_reg9_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg9[16]),
        .R(SSB_n_0));
  FDRE \slv_reg9_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg9[17]),
        .R(SSB_n_0));
  FDRE \slv_reg9_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg9[18]),
        .R(SSB_n_0));
  FDRE \slv_reg9_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg9[19]),
        .R(SSB_n_0));
  FDRE \slv_reg9_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg9[1]),
        .R(SSB_n_0));
  FDRE \slv_reg9_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg9[20]),
        .R(SSB_n_0));
  FDRE \slv_reg9_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg9[21]),
        .R(SSB_n_0));
  FDRE \slv_reg9_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg9[22]),
        .R(SSB_n_0));
  FDRE \slv_reg9_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg9[23]),
        .R(SSB_n_0));
  FDRE \slv_reg9_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg9[24]),
        .R(SSB_n_0));
  FDRE \slv_reg9_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg9[25]),
        .R(SSB_n_0));
  FDRE \slv_reg9_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg9[26]),
        .R(SSB_n_0));
  FDRE \slv_reg9_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg9[27]),
        .R(SSB_n_0));
  FDRE \slv_reg9_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg9[28]),
        .R(SSB_n_0));
  FDRE \slv_reg9_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg9[29]),
        .R(SSB_n_0));
  FDRE \slv_reg9_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg9[2]),
        .R(SSB_n_0));
  FDRE \slv_reg9_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg9[30]),
        .R(SSB_n_0));
  FDRE \slv_reg9_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg9[31]),
        .R(SSB_n_0));
  FDRE \slv_reg9_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg9[3]),
        .R(SSB_n_0));
  FDRE \slv_reg9_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg9[4]),
        .R(SSB_n_0));
  FDRE \slv_reg9_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg9[5]),
        .R(SSB_n_0));
  FDRE \slv_reg9_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg9[6]),
        .R(SSB_n_0));
  FDRE \slv_reg9_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg9[7]),
        .R(SSB_n_0));
  FDRE \slv_reg9_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg9[8]),
        .R(SSB_n_0));
  FDRE \slv_reg9_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg9[9]),
        .R(SSB_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    slv_reg_rden
       (.I0(s00_axi_rvalid),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_arready),
        .O(slv_reg_rden__0));
endmodule

(* ORIG_REF_NAME = "rgbpwm" *) 
module embsys_nexys4IO_0_0_rgbpwm
   (RGB1_Blue,
    RGB1_Green,
    RGB1_Red,
    Q,
    \slv_reg3_reg[2] ,
    s00_axi_aresetn,
    Clock);
  output RGB1_Blue;
  output RGB1_Green;
  output RGB1_Red;
  input [23:0]Q;
  input [2:0]\slv_reg3_reg[2] ;
  input s00_axi_aresetn;
  input Clock;

  wire Clock;
  wire [23:0]Q;
  wire RGB1_Blue;
  wire RGB1_Green;
  wire RGB1_Red;
  wire RGB_OUT1;
  wire RGB_OUT10_in;
  wire RGB_OUT12_in;
  wire RGB_OUT1_carry__0_i_1_n_0;
  wire RGB_OUT1_carry_i_1_n_0;
  wire RGB_OUT1_carry_i_2_n_0;
  wire RGB_OUT1_carry_i_3_n_0;
  wire RGB_OUT1_carry_i_4_n_0;
  wire RGB_OUT1_carry_i_5_n_0;
  wire RGB_OUT1_carry_i_6_n_0;
  wire RGB_OUT1_carry_i_7_n_0;
  wire RGB_OUT1_carry_i_8_n_0;
  wire RGB_OUT1_carry_n_0;
  wire RGB_OUT1_carry_n_1;
  wire RGB_OUT1_carry_n_2;
  wire RGB_OUT1_carry_n_3;
  wire \RGB_OUT1_inferred__0/i__carry_n_0 ;
  wire \RGB_OUT1_inferred__0/i__carry_n_1 ;
  wire \RGB_OUT1_inferred__0/i__carry_n_2 ;
  wire \RGB_OUT1_inferred__0/i__carry_n_3 ;
  wire \RGB_OUT1_inferred__1/i__carry_n_0 ;
  wire \RGB_OUT1_inferred__1/i__carry_n_1 ;
  wire \RGB_OUT1_inferred__1/i__carry_n_2 ;
  wire \RGB_OUT1_inferred__1/i__carry_n_3 ;
  wire i__carry__0_i_1__1_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7__0_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8__0_n_0;
  wire i__carry_i_8_n_0;
  wire [8:1]p_0_in;
  wire \pwm_cntr_ary[2][0]_i_1_n_0 ;
  wire \pwm_cntr_ary[2][8]_i_2_n_0 ;
  wire [8:0]\pwm_cntr_ary_reg[2]_0 ;
  wire s00_axi_aresetn;
  wire [2:0]\slv_reg3_reg[2] ;
  wire [3:0]NLW_RGB_OUT1_carry_O_UNCONNECTED;
  wire [3:1]NLW_RGB_OUT1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_RGB_OUT1_carry__0_O_UNCONNECTED;
  wire [3:0]\NLW_RGB_OUT1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:1]\NLW_RGB_OUT1_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_RGB_OUT1_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_RGB_OUT1_inferred__1/i__carry_O_UNCONNECTED ;
  wire [3:1]\NLW_RGB_OUT1_inferred__1/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_RGB_OUT1_inferred__1/i__carry__0_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h8)) 
    RGB1_Blue_INST_0
       (.I0(\slv_reg3_reg[2] [0]),
        .I1(RGB_OUT1),
        .O(RGB1_Blue));
  LUT2 #(
    .INIT(4'h8)) 
    RGB1_Green_INST_0
       (.I0(\slv_reg3_reg[2] [1]),
        .I1(RGB_OUT10_in),
        .O(RGB1_Green));
  LUT2 #(
    .INIT(4'h8)) 
    RGB1_Red_INST_0
       (.I0(\slv_reg3_reg[2] [2]),
        .I1(RGB_OUT12_in),
        .O(RGB1_Red));
  CARRY4 RGB_OUT1_carry
       (.CI(1'b0),
        .CO({RGB_OUT1_carry_n_0,RGB_OUT1_carry_n_1,RGB_OUT1_carry_n_2,RGB_OUT1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({RGB_OUT1_carry_i_1_n_0,RGB_OUT1_carry_i_2_n_0,RGB_OUT1_carry_i_3_n_0,RGB_OUT1_carry_i_4_n_0}),
        .O(NLW_RGB_OUT1_carry_O_UNCONNECTED[3:0]),
        .S({RGB_OUT1_carry_i_5_n_0,RGB_OUT1_carry_i_6_n_0,RGB_OUT1_carry_i_7_n_0,RGB_OUT1_carry_i_8_n_0}));
  CARRY4 RGB_OUT1_carry__0
       (.CI(RGB_OUT1_carry_n_0),
        .CO({NLW_RGB_OUT1_carry__0_CO_UNCONNECTED[3:1],RGB_OUT1}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_RGB_OUT1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,RGB_OUT1_carry__0_i_1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    RGB_OUT1_carry__0_i_1
       (.I0(\pwm_cntr_ary_reg[2]_0 [8]),
        .O(RGB_OUT1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    RGB_OUT1_carry_i_1
       (.I0(Q[6]),
        .I1(\pwm_cntr_ary_reg[2]_0 [6]),
        .I2(\pwm_cntr_ary_reg[2]_0 [7]),
        .I3(Q[7]),
        .O(RGB_OUT1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    RGB_OUT1_carry_i_2
       (.I0(Q[4]),
        .I1(\pwm_cntr_ary_reg[2]_0 [4]),
        .I2(\pwm_cntr_ary_reg[2]_0 [5]),
        .I3(Q[5]),
        .O(RGB_OUT1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    RGB_OUT1_carry_i_3
       (.I0(Q[2]),
        .I1(\pwm_cntr_ary_reg[2]_0 [2]),
        .I2(\pwm_cntr_ary_reg[2]_0 [3]),
        .I3(Q[3]),
        .O(RGB_OUT1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    RGB_OUT1_carry_i_4
       (.I0(Q[0]),
        .I1(\pwm_cntr_ary_reg[2]_0 [0]),
        .I2(\pwm_cntr_ary_reg[2]_0 [1]),
        .I3(Q[1]),
        .O(RGB_OUT1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    RGB_OUT1_carry_i_5
       (.I0(Q[6]),
        .I1(\pwm_cntr_ary_reg[2]_0 [6]),
        .I2(Q[7]),
        .I3(\pwm_cntr_ary_reg[2]_0 [7]),
        .O(RGB_OUT1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    RGB_OUT1_carry_i_6
       (.I0(Q[4]),
        .I1(\pwm_cntr_ary_reg[2]_0 [4]),
        .I2(Q[5]),
        .I3(\pwm_cntr_ary_reg[2]_0 [5]),
        .O(RGB_OUT1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    RGB_OUT1_carry_i_7
       (.I0(Q[2]),
        .I1(\pwm_cntr_ary_reg[2]_0 [2]),
        .I2(Q[3]),
        .I3(\pwm_cntr_ary_reg[2]_0 [3]),
        .O(RGB_OUT1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    RGB_OUT1_carry_i_8
       (.I0(Q[0]),
        .I1(\pwm_cntr_ary_reg[2]_0 [0]),
        .I2(Q[1]),
        .I3(\pwm_cntr_ary_reg[2]_0 [1]),
        .O(RGB_OUT1_carry_i_8_n_0));
  CARRY4 \RGB_OUT1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\RGB_OUT1_inferred__0/i__carry_n_0 ,\RGB_OUT1_inferred__0/i__carry_n_1 ,\RGB_OUT1_inferred__0/i__carry_n_2 ,\RGB_OUT1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .O(\NLW_RGB_OUT1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  CARRY4 \RGB_OUT1_inferred__0/i__carry__0 
       (.CI(\RGB_OUT1_inferred__0/i__carry_n_0 ),
        .CO({\NLW_RGB_OUT1_inferred__0/i__carry__0_CO_UNCONNECTED [3:1],RGB_OUT10_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_RGB_OUT1_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,i__carry__0_i_1__1_n_0}));
  CARRY4 \RGB_OUT1_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\RGB_OUT1_inferred__1/i__carry_n_0 ,\RGB_OUT1_inferred__1/i__carry_n_1 ,\RGB_OUT1_inferred__1/i__carry_n_2 ,\RGB_OUT1_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}),
        .O(\NLW_RGB_OUT1_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__0_n_0,i__carry_i_6__0_n_0,i__carry_i_7__0_n_0,i__carry_i_8__0_n_0}));
  CARRY4 \RGB_OUT1_inferred__1/i__carry__0 
       (.CI(\RGB_OUT1_inferred__1/i__carry_n_0 ),
        .CO({\NLW_RGB_OUT1_inferred__1/i__carry__0_CO_UNCONNECTED [3:1],RGB_OUT12_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_RGB_OUT1_inferred__1/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,i__carry__0_i_1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1
       (.I0(\pwm_cntr_ary_reg[2]_0 [8]),
        .O(i__carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1__1
       (.I0(\pwm_cntr_ary_reg[2]_0 [8]),
        .O(i__carry__0_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1
       (.I0(Q[14]),
        .I1(\pwm_cntr_ary_reg[2]_0 [6]),
        .I2(\pwm_cntr_ary_reg[2]_0 [7]),
        .I3(Q[15]),
        .O(i__carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1__0
       (.I0(Q[22]),
        .I1(\pwm_cntr_ary_reg[2]_0 [6]),
        .I2(\pwm_cntr_ary_reg[2]_0 [7]),
        .I3(Q[23]),
        .O(i__carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2
       (.I0(Q[12]),
        .I1(\pwm_cntr_ary_reg[2]_0 [4]),
        .I2(\pwm_cntr_ary_reg[2]_0 [5]),
        .I3(Q[13]),
        .O(i__carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2__0
       (.I0(Q[20]),
        .I1(\pwm_cntr_ary_reg[2]_0 [4]),
        .I2(\pwm_cntr_ary_reg[2]_0 [5]),
        .I3(Q[21]),
        .O(i__carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3
       (.I0(Q[10]),
        .I1(\pwm_cntr_ary_reg[2]_0 [2]),
        .I2(\pwm_cntr_ary_reg[2]_0 [3]),
        .I3(Q[11]),
        .O(i__carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3__0
       (.I0(Q[18]),
        .I1(\pwm_cntr_ary_reg[2]_0 [2]),
        .I2(\pwm_cntr_ary_reg[2]_0 [3]),
        .I3(Q[19]),
        .O(i__carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_4
       (.I0(Q[8]),
        .I1(\pwm_cntr_ary_reg[2]_0 [0]),
        .I2(\pwm_cntr_ary_reg[2]_0 [1]),
        .I3(Q[9]),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_4__0
       (.I0(Q[16]),
        .I1(\pwm_cntr_ary_reg[2]_0 [0]),
        .I2(\pwm_cntr_ary_reg[2]_0 [1]),
        .I3(Q[17]),
        .O(i__carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(Q[14]),
        .I1(\pwm_cntr_ary_reg[2]_0 [6]),
        .I2(Q[15]),
        .I3(\pwm_cntr_ary_reg[2]_0 [7]),
        .O(i__carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__0
       (.I0(Q[22]),
        .I1(\pwm_cntr_ary_reg[2]_0 [6]),
        .I2(Q[23]),
        .I3(\pwm_cntr_ary_reg[2]_0 [7]),
        .O(i__carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(Q[12]),
        .I1(\pwm_cntr_ary_reg[2]_0 [4]),
        .I2(Q[13]),
        .I3(\pwm_cntr_ary_reg[2]_0 [5]),
        .O(i__carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__0
       (.I0(Q[20]),
        .I1(\pwm_cntr_ary_reg[2]_0 [4]),
        .I2(Q[21]),
        .I3(\pwm_cntr_ary_reg[2]_0 [5]),
        .O(i__carry_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7
       (.I0(Q[10]),
        .I1(\pwm_cntr_ary_reg[2]_0 [2]),
        .I2(Q[11]),
        .I3(\pwm_cntr_ary_reg[2]_0 [3]),
        .O(i__carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__0
       (.I0(Q[18]),
        .I1(\pwm_cntr_ary_reg[2]_0 [2]),
        .I2(Q[19]),
        .I3(\pwm_cntr_ary_reg[2]_0 [3]),
        .O(i__carry_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8
       (.I0(Q[8]),
        .I1(\pwm_cntr_ary_reg[2]_0 [0]),
        .I2(Q[9]),
        .I3(\pwm_cntr_ary_reg[2]_0 [1]),
        .O(i__carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__0
       (.I0(Q[16]),
        .I1(\pwm_cntr_ary_reg[2]_0 [0]),
        .I2(Q[17]),
        .I3(\pwm_cntr_ary_reg[2]_0 [1]),
        .O(i__carry_i_8__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \pwm_cntr_ary[2][0]_i_1 
       (.I0(\pwm_cntr_ary_reg[2]_0 [0]),
        .O(\pwm_cntr_ary[2][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pwm_cntr_ary[2][1]_i_1 
       (.I0(\pwm_cntr_ary_reg[2]_0 [0]),
        .I1(\pwm_cntr_ary_reg[2]_0 [1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pwm_cntr_ary[2][2]_i_1 
       (.I0(\pwm_cntr_ary_reg[2]_0 [0]),
        .I1(\pwm_cntr_ary_reg[2]_0 [1]),
        .I2(\pwm_cntr_ary_reg[2]_0 [2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pwm_cntr_ary[2][3]_i_1 
       (.I0(\pwm_cntr_ary_reg[2]_0 [1]),
        .I1(\pwm_cntr_ary_reg[2]_0 [0]),
        .I2(\pwm_cntr_ary_reg[2]_0 [2]),
        .I3(\pwm_cntr_ary_reg[2]_0 [3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \pwm_cntr_ary[2][4]_i_1 
       (.I0(\pwm_cntr_ary_reg[2]_0 [2]),
        .I1(\pwm_cntr_ary_reg[2]_0 [0]),
        .I2(\pwm_cntr_ary_reg[2]_0 [1]),
        .I3(\pwm_cntr_ary_reg[2]_0 [3]),
        .I4(\pwm_cntr_ary_reg[2]_0 [4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \pwm_cntr_ary[2][5]_i_1 
       (.I0(\pwm_cntr_ary_reg[2]_0 [3]),
        .I1(\pwm_cntr_ary_reg[2]_0 [1]),
        .I2(\pwm_cntr_ary_reg[2]_0 [0]),
        .I3(\pwm_cntr_ary_reg[2]_0 [2]),
        .I4(\pwm_cntr_ary_reg[2]_0 [4]),
        .I5(\pwm_cntr_ary_reg[2]_0 [5]),
        .O(p_0_in[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \pwm_cntr_ary[2][6]_i_1 
       (.I0(\pwm_cntr_ary[2][8]_i_2_n_0 ),
        .I1(\pwm_cntr_ary_reg[2]_0 [6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pwm_cntr_ary[2][7]_i_1 
       (.I0(\pwm_cntr_ary[2][8]_i_2_n_0 ),
        .I1(\pwm_cntr_ary_reg[2]_0 [6]),
        .I2(\pwm_cntr_ary_reg[2]_0 [7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pwm_cntr_ary[2][8]_i_1 
       (.I0(\pwm_cntr_ary_reg[2]_0 [6]),
        .I1(\pwm_cntr_ary[2][8]_i_2_n_0 ),
        .I2(\pwm_cntr_ary_reg[2]_0 [7]),
        .I3(\pwm_cntr_ary_reg[2]_0 [8]),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \pwm_cntr_ary[2][8]_i_2 
       (.I0(\pwm_cntr_ary_reg[2]_0 [5]),
        .I1(\pwm_cntr_ary_reg[2]_0 [3]),
        .I2(\pwm_cntr_ary_reg[2]_0 [1]),
        .I3(\pwm_cntr_ary_reg[2]_0 [0]),
        .I4(\pwm_cntr_ary_reg[2]_0 [2]),
        .I5(\pwm_cntr_ary_reg[2]_0 [4]),
        .O(\pwm_cntr_ary[2][8]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cntr_ary_reg[2][0] 
       (.C(Clock),
        .CE(1'b1),
        .D(\pwm_cntr_ary[2][0]_i_1_n_0 ),
        .Q(\pwm_cntr_ary_reg[2]_0 [0]),
        .R(s00_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cntr_ary_reg[2][1] 
       (.C(Clock),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(\pwm_cntr_ary_reg[2]_0 [1]),
        .R(s00_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cntr_ary_reg[2][2] 
       (.C(Clock),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(\pwm_cntr_ary_reg[2]_0 [2]),
        .R(s00_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cntr_ary_reg[2][3] 
       (.C(Clock),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(\pwm_cntr_ary_reg[2]_0 [3]),
        .R(s00_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cntr_ary_reg[2][4] 
       (.C(Clock),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(\pwm_cntr_ary_reg[2]_0 [4]),
        .R(s00_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cntr_ary_reg[2][5] 
       (.C(Clock),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(\pwm_cntr_ary_reg[2]_0 [5]),
        .R(s00_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cntr_ary_reg[2][6] 
       (.C(Clock),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(\pwm_cntr_ary_reg[2]_0 [6]),
        .R(s00_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cntr_ary_reg[2][7] 
       (.C(Clock),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(\pwm_cntr_ary_reg[2]_0 [7]),
        .R(s00_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cntr_ary_reg[2][8] 
       (.C(Clock),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(\pwm_cntr_ary_reg[2]_0 [8]),
        .R(s00_axi_aresetn));
endmodule

(* ORIG_REF_NAME = "rgbpwm" *) 
module embsys_nexys4IO_0_0_rgbpwm_0
   (RGB2_Blue,
    RGB2_Green,
    RGB2_Red,
    Q,
    \slv_reg5_reg[2] ,
    s00_axi_aresetn,
    Clock);
  output RGB2_Blue;
  output RGB2_Green;
  output RGB2_Red;
  input [23:0]Q;
  input [2:0]\slv_reg5_reg[2] ;
  input s00_axi_aresetn;
  input Clock;

  wire Clock;
  wire [23:0]Q;
  wire RGB2_Blue;
  wire RGB2_Green;
  wire RGB2_Red;
  wire RGB_OUT1;
  wire RGB_OUT10_in;
  wire RGB_OUT12_in;
  wire RGB_OUT1_carry__0_i_1__0_n_0;
  wire RGB_OUT1_carry_i_1__0_n_0;
  wire RGB_OUT1_carry_i_2__0_n_0;
  wire RGB_OUT1_carry_i_3__0_n_0;
  wire RGB_OUT1_carry_i_4__0_n_0;
  wire RGB_OUT1_carry_i_5__0_n_0;
  wire RGB_OUT1_carry_i_6__0_n_0;
  wire RGB_OUT1_carry_i_7__0_n_0;
  wire RGB_OUT1_carry_i_8__0_n_0;
  wire RGB_OUT1_carry_n_0;
  wire RGB_OUT1_carry_n_1;
  wire RGB_OUT1_carry_n_2;
  wire RGB_OUT1_carry_n_3;
  wire \RGB_OUT1_inferred__0/i__carry_n_0 ;
  wire \RGB_OUT1_inferred__0/i__carry_n_1 ;
  wire \RGB_OUT1_inferred__0/i__carry_n_2 ;
  wire \RGB_OUT1_inferred__0/i__carry_n_3 ;
  wire \RGB_OUT1_inferred__1/i__carry_n_0 ;
  wire \RGB_OUT1_inferred__1/i__carry_n_1 ;
  wire \RGB_OUT1_inferred__1/i__carry_n_2 ;
  wire \RGB_OUT1_inferred__1/i__carry_n_3 ;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1__2_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_1__2_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_2__2_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_3__2_n_0;
  wire i__carry_i_4__1_n_0;
  wire i__carry_i_4__2_n_0;
  wire i__carry_i_5__1_n_0;
  wire i__carry_i_5__2_n_0;
  wire i__carry_i_6__1_n_0;
  wire i__carry_i_6__2_n_0;
  wire i__carry_i_7__1_n_0;
  wire i__carry_i_7__2_n_0;
  wire i__carry_i_8__1_n_0;
  wire i__carry_i_8__2_n_0;
  wire [8:1]p_0_in__0;
  wire \pwm_cntr_ary[2][0]_i_1__0_n_0 ;
  wire \pwm_cntr_ary[2][8]_i_2__0_n_0 ;
  wire [8:0]\pwm_cntr_ary_reg[2]_1 ;
  wire s00_axi_aresetn;
  wire [2:0]\slv_reg5_reg[2] ;
  wire [3:0]NLW_RGB_OUT1_carry_O_UNCONNECTED;
  wire [3:1]NLW_RGB_OUT1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_RGB_OUT1_carry__0_O_UNCONNECTED;
  wire [3:0]\NLW_RGB_OUT1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:1]\NLW_RGB_OUT1_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_RGB_OUT1_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_RGB_OUT1_inferred__1/i__carry_O_UNCONNECTED ;
  wire [3:1]\NLW_RGB_OUT1_inferred__1/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_RGB_OUT1_inferred__1/i__carry__0_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h8)) 
    RGB2_Blue_INST_0
       (.I0(\slv_reg5_reg[2] [0]),
        .I1(RGB_OUT1),
        .O(RGB2_Blue));
  LUT2 #(
    .INIT(4'h8)) 
    RGB2_Green_INST_0
       (.I0(\slv_reg5_reg[2] [1]),
        .I1(RGB_OUT10_in),
        .O(RGB2_Green));
  LUT2 #(
    .INIT(4'h8)) 
    RGB2_Red_INST_0
       (.I0(\slv_reg5_reg[2] [2]),
        .I1(RGB_OUT12_in),
        .O(RGB2_Red));
  CARRY4 RGB_OUT1_carry
       (.CI(1'b0),
        .CO({RGB_OUT1_carry_n_0,RGB_OUT1_carry_n_1,RGB_OUT1_carry_n_2,RGB_OUT1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({RGB_OUT1_carry_i_1__0_n_0,RGB_OUT1_carry_i_2__0_n_0,RGB_OUT1_carry_i_3__0_n_0,RGB_OUT1_carry_i_4__0_n_0}),
        .O(NLW_RGB_OUT1_carry_O_UNCONNECTED[3:0]),
        .S({RGB_OUT1_carry_i_5__0_n_0,RGB_OUT1_carry_i_6__0_n_0,RGB_OUT1_carry_i_7__0_n_0,RGB_OUT1_carry_i_8__0_n_0}));
  CARRY4 RGB_OUT1_carry__0
       (.CI(RGB_OUT1_carry_n_0),
        .CO({NLW_RGB_OUT1_carry__0_CO_UNCONNECTED[3:1],RGB_OUT1}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_RGB_OUT1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,RGB_OUT1_carry__0_i_1__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    RGB_OUT1_carry__0_i_1__0
       (.I0(\pwm_cntr_ary_reg[2]_1 [8]),
        .O(RGB_OUT1_carry__0_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    RGB_OUT1_carry_i_1__0
       (.I0(Q[6]),
        .I1(\pwm_cntr_ary_reg[2]_1 [6]),
        .I2(\pwm_cntr_ary_reg[2]_1 [7]),
        .I3(Q[7]),
        .O(RGB_OUT1_carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    RGB_OUT1_carry_i_2__0
       (.I0(Q[4]),
        .I1(\pwm_cntr_ary_reg[2]_1 [4]),
        .I2(\pwm_cntr_ary_reg[2]_1 [5]),
        .I3(Q[5]),
        .O(RGB_OUT1_carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    RGB_OUT1_carry_i_3__0
       (.I0(Q[2]),
        .I1(\pwm_cntr_ary_reg[2]_1 [2]),
        .I2(\pwm_cntr_ary_reg[2]_1 [3]),
        .I3(Q[3]),
        .O(RGB_OUT1_carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    RGB_OUT1_carry_i_4__0
       (.I0(Q[0]),
        .I1(\pwm_cntr_ary_reg[2]_1 [0]),
        .I2(\pwm_cntr_ary_reg[2]_1 [1]),
        .I3(Q[1]),
        .O(RGB_OUT1_carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    RGB_OUT1_carry_i_5__0
       (.I0(Q[6]),
        .I1(\pwm_cntr_ary_reg[2]_1 [6]),
        .I2(Q[7]),
        .I3(\pwm_cntr_ary_reg[2]_1 [7]),
        .O(RGB_OUT1_carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    RGB_OUT1_carry_i_6__0
       (.I0(Q[4]),
        .I1(\pwm_cntr_ary_reg[2]_1 [4]),
        .I2(Q[5]),
        .I3(\pwm_cntr_ary_reg[2]_1 [5]),
        .O(RGB_OUT1_carry_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    RGB_OUT1_carry_i_7__0
       (.I0(Q[2]),
        .I1(\pwm_cntr_ary_reg[2]_1 [2]),
        .I2(Q[3]),
        .I3(\pwm_cntr_ary_reg[2]_1 [3]),
        .O(RGB_OUT1_carry_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    RGB_OUT1_carry_i_8__0
       (.I0(Q[0]),
        .I1(\pwm_cntr_ary_reg[2]_1 [0]),
        .I2(Q[1]),
        .I3(\pwm_cntr_ary_reg[2]_1 [1]),
        .O(RGB_OUT1_carry_i_8__0_n_0));
  CARRY4 \RGB_OUT1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\RGB_OUT1_inferred__0/i__carry_n_0 ,\RGB_OUT1_inferred__0/i__carry_n_1 ,\RGB_OUT1_inferred__0/i__carry_n_2 ,\RGB_OUT1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__1_n_0,i__carry_i_2__1_n_0,i__carry_i_3__1_n_0,i__carry_i_4__1_n_0}),
        .O(\NLW_RGB_OUT1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__1_n_0,i__carry_i_6__1_n_0,i__carry_i_7__1_n_0,i__carry_i_8__1_n_0}));
  CARRY4 \RGB_OUT1_inferred__0/i__carry__0 
       (.CI(\RGB_OUT1_inferred__0/i__carry_n_0 ),
        .CO({\NLW_RGB_OUT1_inferred__0/i__carry__0_CO_UNCONNECTED [3:1],RGB_OUT10_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_RGB_OUT1_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,i__carry__0_i_1__2_n_0}));
  CARRY4 \RGB_OUT1_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\RGB_OUT1_inferred__1/i__carry_n_0 ,\RGB_OUT1_inferred__1/i__carry_n_1 ,\RGB_OUT1_inferred__1/i__carry_n_2 ,\RGB_OUT1_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__2_n_0,i__carry_i_2__2_n_0,i__carry_i_3__2_n_0,i__carry_i_4__2_n_0}),
        .O(\NLW_RGB_OUT1_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__2_n_0,i__carry_i_6__2_n_0,i__carry_i_7__2_n_0,i__carry_i_8__2_n_0}));
  CARRY4 \RGB_OUT1_inferred__1/i__carry__0 
       (.CI(\RGB_OUT1_inferred__1/i__carry_n_0 ),
        .CO({\NLW_RGB_OUT1_inferred__1/i__carry__0_CO_UNCONNECTED [3:1],RGB_OUT12_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_RGB_OUT1_inferred__1/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,i__carry__0_i_1__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1__0
       (.I0(\pwm_cntr_ary_reg[2]_1 [8]),
        .O(i__carry__0_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1__2
       (.I0(\pwm_cntr_ary_reg[2]_1 [8]),
        .O(i__carry__0_i_1__2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1__1
       (.I0(Q[14]),
        .I1(\pwm_cntr_ary_reg[2]_1 [6]),
        .I2(\pwm_cntr_ary_reg[2]_1 [7]),
        .I3(Q[15]),
        .O(i__carry_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_1__2
       (.I0(Q[22]),
        .I1(\pwm_cntr_ary_reg[2]_1 [6]),
        .I2(\pwm_cntr_ary_reg[2]_1 [7]),
        .I3(Q[23]),
        .O(i__carry_i_1__2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2__1
       (.I0(Q[12]),
        .I1(\pwm_cntr_ary_reg[2]_1 [4]),
        .I2(\pwm_cntr_ary_reg[2]_1 [5]),
        .I3(Q[13]),
        .O(i__carry_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_2__2
       (.I0(Q[20]),
        .I1(\pwm_cntr_ary_reg[2]_1 [4]),
        .I2(\pwm_cntr_ary_reg[2]_1 [5]),
        .I3(Q[21]),
        .O(i__carry_i_2__2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3__1
       (.I0(Q[10]),
        .I1(\pwm_cntr_ary_reg[2]_1 [2]),
        .I2(\pwm_cntr_ary_reg[2]_1 [3]),
        .I3(Q[11]),
        .O(i__carry_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_3__2
       (.I0(Q[18]),
        .I1(\pwm_cntr_ary_reg[2]_1 [2]),
        .I2(\pwm_cntr_ary_reg[2]_1 [3]),
        .I3(Q[19]),
        .O(i__carry_i_3__2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_4__1
       (.I0(Q[8]),
        .I1(\pwm_cntr_ary_reg[2]_1 [0]),
        .I2(\pwm_cntr_ary_reg[2]_1 [1]),
        .I3(Q[9]),
        .O(i__carry_i_4__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    i__carry_i_4__2
       (.I0(Q[16]),
        .I1(\pwm_cntr_ary_reg[2]_1 [0]),
        .I2(\pwm_cntr_ary_reg[2]_1 [1]),
        .I3(Q[17]),
        .O(i__carry_i_4__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__1
       (.I0(Q[14]),
        .I1(\pwm_cntr_ary_reg[2]_1 [6]),
        .I2(Q[15]),
        .I3(\pwm_cntr_ary_reg[2]_1 [7]),
        .O(i__carry_i_5__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5__2
       (.I0(Q[22]),
        .I1(\pwm_cntr_ary_reg[2]_1 [6]),
        .I2(Q[23]),
        .I3(\pwm_cntr_ary_reg[2]_1 [7]),
        .O(i__carry_i_5__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__1
       (.I0(Q[12]),
        .I1(\pwm_cntr_ary_reg[2]_1 [4]),
        .I2(Q[13]),
        .I3(\pwm_cntr_ary_reg[2]_1 [5]),
        .O(i__carry_i_6__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6__2
       (.I0(Q[20]),
        .I1(\pwm_cntr_ary_reg[2]_1 [4]),
        .I2(Q[21]),
        .I3(\pwm_cntr_ary_reg[2]_1 [5]),
        .O(i__carry_i_6__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__1
       (.I0(Q[10]),
        .I1(\pwm_cntr_ary_reg[2]_1 [2]),
        .I2(Q[11]),
        .I3(\pwm_cntr_ary_reg[2]_1 [3]),
        .O(i__carry_i_7__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__2
       (.I0(Q[18]),
        .I1(\pwm_cntr_ary_reg[2]_1 [2]),
        .I2(Q[19]),
        .I3(\pwm_cntr_ary_reg[2]_1 [3]),
        .O(i__carry_i_7__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__1
       (.I0(Q[8]),
        .I1(\pwm_cntr_ary_reg[2]_1 [0]),
        .I2(Q[9]),
        .I3(\pwm_cntr_ary_reg[2]_1 [1]),
        .O(i__carry_i_8__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__2
       (.I0(Q[16]),
        .I1(\pwm_cntr_ary_reg[2]_1 [0]),
        .I2(Q[17]),
        .I3(\pwm_cntr_ary_reg[2]_1 [1]),
        .O(i__carry_i_8__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \pwm_cntr_ary[2][0]_i_1__0 
       (.I0(\pwm_cntr_ary_reg[2]_1 [0]),
        .O(\pwm_cntr_ary[2][0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pwm_cntr_ary[2][1]_i_1__0 
       (.I0(\pwm_cntr_ary_reg[2]_1 [0]),
        .I1(\pwm_cntr_ary_reg[2]_1 [1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pwm_cntr_ary[2][2]_i_1__0 
       (.I0(\pwm_cntr_ary_reg[2]_1 [0]),
        .I1(\pwm_cntr_ary_reg[2]_1 [1]),
        .I2(\pwm_cntr_ary_reg[2]_1 [2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pwm_cntr_ary[2][3]_i_1__0 
       (.I0(\pwm_cntr_ary_reg[2]_1 [1]),
        .I1(\pwm_cntr_ary_reg[2]_1 [0]),
        .I2(\pwm_cntr_ary_reg[2]_1 [2]),
        .I3(\pwm_cntr_ary_reg[2]_1 [3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \pwm_cntr_ary[2][4]_i_1__0 
       (.I0(\pwm_cntr_ary_reg[2]_1 [2]),
        .I1(\pwm_cntr_ary_reg[2]_1 [0]),
        .I2(\pwm_cntr_ary_reg[2]_1 [1]),
        .I3(\pwm_cntr_ary_reg[2]_1 [3]),
        .I4(\pwm_cntr_ary_reg[2]_1 [4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \pwm_cntr_ary[2][5]_i_1__0 
       (.I0(\pwm_cntr_ary_reg[2]_1 [3]),
        .I1(\pwm_cntr_ary_reg[2]_1 [1]),
        .I2(\pwm_cntr_ary_reg[2]_1 [0]),
        .I3(\pwm_cntr_ary_reg[2]_1 [2]),
        .I4(\pwm_cntr_ary_reg[2]_1 [4]),
        .I5(\pwm_cntr_ary_reg[2]_1 [5]),
        .O(p_0_in__0[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \pwm_cntr_ary[2][6]_i_1__0 
       (.I0(\pwm_cntr_ary[2][8]_i_2__0_n_0 ),
        .I1(\pwm_cntr_ary_reg[2]_1 [6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pwm_cntr_ary[2][7]_i_1__0 
       (.I0(\pwm_cntr_ary[2][8]_i_2__0_n_0 ),
        .I1(\pwm_cntr_ary_reg[2]_1 [6]),
        .I2(\pwm_cntr_ary_reg[2]_1 [7]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pwm_cntr_ary[2][8]_i_1__0 
       (.I0(\pwm_cntr_ary_reg[2]_1 [6]),
        .I1(\pwm_cntr_ary[2][8]_i_2__0_n_0 ),
        .I2(\pwm_cntr_ary_reg[2]_1 [7]),
        .I3(\pwm_cntr_ary_reg[2]_1 [8]),
        .O(p_0_in__0[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \pwm_cntr_ary[2][8]_i_2__0 
       (.I0(\pwm_cntr_ary_reg[2]_1 [5]),
        .I1(\pwm_cntr_ary_reg[2]_1 [3]),
        .I2(\pwm_cntr_ary_reg[2]_1 [1]),
        .I3(\pwm_cntr_ary_reg[2]_1 [0]),
        .I4(\pwm_cntr_ary_reg[2]_1 [2]),
        .I5(\pwm_cntr_ary_reg[2]_1 [4]),
        .O(\pwm_cntr_ary[2][8]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cntr_ary_reg[2][0] 
       (.C(Clock),
        .CE(1'b1),
        .D(\pwm_cntr_ary[2][0]_i_1__0_n_0 ),
        .Q(\pwm_cntr_ary_reg[2]_1 [0]),
        .R(s00_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cntr_ary_reg[2][1] 
       (.C(Clock),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(\pwm_cntr_ary_reg[2]_1 [1]),
        .R(s00_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cntr_ary_reg[2][2] 
       (.C(Clock),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(\pwm_cntr_ary_reg[2]_1 [2]),
        .R(s00_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cntr_ary_reg[2][3] 
       (.C(Clock),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(\pwm_cntr_ary_reg[2]_1 [3]),
        .R(s00_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cntr_ary_reg[2][4] 
       (.C(Clock),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(\pwm_cntr_ary_reg[2]_1 [4]),
        .R(s00_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cntr_ary_reg[2][5] 
       (.C(Clock),
        .CE(1'b1),
        .D(p_0_in__0[5]),
        .Q(\pwm_cntr_ary_reg[2]_1 [5]),
        .R(s00_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cntr_ary_reg[2][6] 
       (.C(Clock),
        .CE(1'b1),
        .D(p_0_in__0[6]),
        .Q(\pwm_cntr_ary_reg[2]_1 [6]),
        .R(s00_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cntr_ary_reg[2][7] 
       (.C(Clock),
        .CE(1'b1),
        .D(p_0_in__0[7]),
        .Q(\pwm_cntr_ary_reg[2]_1 [7]),
        .R(s00_axi_aresetn));
  FDRE #(
    .INIT(1'b0)) 
    \pwm_cntr_ary_reg[2][8] 
       (.C(Clock),
        .CE(1'b1),
        .D(p_0_in__0[8]),
        .Q(\pwm_cntr_ary_reg[2]_1 [8]),
        .R(s00_axi_aresetn));
endmodule

(* ORIG_REF_NAME = "sevensegment" *) 
module embsys_nexys4IO_0_0_sevensegment
   (\clk_cnt_reg[0]_0 ,
    dp,
    an,
    Q,
    \slv_reg7_reg[27] ,
    s00_axi_aresetn,
    s00_axi_aclk);
  output \clk_cnt_reg[0]_0 ;
  output [7:0]dp;
  output [7:0]an;
  input [23:0]Q;
  input [23:0]\slv_reg7_reg[27] ;
  input s00_axi_aresetn;
  input s00_axi_aclk;

  wire Digit3_n_0;
  wire Digit3_n_1;
  wire Digit3_n_2;
  wire Digit3_n_3;
  wire Digit3_n_4;
  wire Digit3_n_5;
  wire Digit3_n_6;
  wire Digit3_n_7;
  wire Digit7_n_0;
  wire Digit7_n_1;
  wire Digit7_n_2;
  wire Digit7_n_3;
  wire Digit7_n_4;
  wire Digit7_n_5;
  wire Digit7_n_6;
  wire Digit7_n_7;
  wire \FSM_sequential_an[0]_i_1_n_0 ;
  wire \FSM_sequential_an[1]_i_1_n_0 ;
  wire \FSM_sequential_an[1]_i_2_n_0 ;
  wire \FSM_sequential_an[1]_i_3_n_0 ;
  wire \FSM_sequential_an[1]_i_4_n_0 ;
  wire \FSM_sequential_an[2]_i_10_n_0 ;
  wire \FSM_sequential_an[2]_i_1_n_0 ;
  wire \FSM_sequential_an[2]_i_2_n_0 ;
  wire \FSM_sequential_an[2]_i_3_n_0 ;
  wire \FSM_sequential_an[2]_i_4_n_0 ;
  wire \FSM_sequential_an[2]_i_5_n_0 ;
  wire \FSM_sequential_an[2]_i_6_n_0 ;
  wire \FSM_sequential_an[2]_i_7_n_0 ;
  wire \FSM_sequential_an[2]_i_8_n_0 ;
  wire \FSM_sequential_an[2]_i_9_n_0 ;
  wire [23:0]Q;
  wire [7:0]an;
  (* RTL_KEEP = "yes" *) wire [2:0]an_0;
  wire [31:0]clk_cnt;
  wire \clk_cnt_reg[0]_0 ;
  wire \clk_cnt_reg[12]_i_2_n_0 ;
  wire \clk_cnt_reg[12]_i_2_n_1 ;
  wire \clk_cnt_reg[12]_i_2_n_2 ;
  wire \clk_cnt_reg[12]_i_2_n_3 ;
  wire \clk_cnt_reg[12]_i_2_n_4 ;
  wire \clk_cnt_reg[12]_i_2_n_5 ;
  wire \clk_cnt_reg[12]_i_2_n_6 ;
  wire \clk_cnt_reg[12]_i_2_n_7 ;
  wire \clk_cnt_reg[16]_i_2_n_0 ;
  wire \clk_cnt_reg[16]_i_2_n_1 ;
  wire \clk_cnt_reg[16]_i_2_n_2 ;
  wire \clk_cnt_reg[16]_i_2_n_3 ;
  wire \clk_cnt_reg[16]_i_2_n_4 ;
  wire \clk_cnt_reg[16]_i_2_n_5 ;
  wire \clk_cnt_reg[16]_i_2_n_6 ;
  wire \clk_cnt_reg[16]_i_2_n_7 ;
  wire \clk_cnt_reg[20]_i_2_n_0 ;
  wire \clk_cnt_reg[20]_i_2_n_1 ;
  wire \clk_cnt_reg[20]_i_2_n_2 ;
  wire \clk_cnt_reg[20]_i_2_n_3 ;
  wire \clk_cnt_reg[20]_i_2_n_4 ;
  wire \clk_cnt_reg[20]_i_2_n_5 ;
  wire \clk_cnt_reg[20]_i_2_n_6 ;
  wire \clk_cnt_reg[20]_i_2_n_7 ;
  wire \clk_cnt_reg[24]_i_2_n_0 ;
  wire \clk_cnt_reg[24]_i_2_n_1 ;
  wire \clk_cnt_reg[24]_i_2_n_2 ;
  wire \clk_cnt_reg[24]_i_2_n_3 ;
  wire \clk_cnt_reg[24]_i_2_n_4 ;
  wire \clk_cnt_reg[24]_i_2_n_5 ;
  wire \clk_cnt_reg[24]_i_2_n_6 ;
  wire \clk_cnt_reg[24]_i_2_n_7 ;
  wire \clk_cnt_reg[28]_i_2_n_0 ;
  wire \clk_cnt_reg[28]_i_2_n_1 ;
  wire \clk_cnt_reg[28]_i_2_n_2 ;
  wire \clk_cnt_reg[28]_i_2_n_3 ;
  wire \clk_cnt_reg[28]_i_2_n_4 ;
  wire \clk_cnt_reg[28]_i_2_n_5 ;
  wire \clk_cnt_reg[28]_i_2_n_6 ;
  wire \clk_cnt_reg[28]_i_2_n_7 ;
  wire \clk_cnt_reg[31]_i_2_n_2 ;
  wire \clk_cnt_reg[31]_i_2_n_3 ;
  wire \clk_cnt_reg[31]_i_2_n_5 ;
  wire \clk_cnt_reg[31]_i_2_n_6 ;
  wire \clk_cnt_reg[31]_i_2_n_7 ;
  wire \clk_cnt_reg[4]_i_2_n_0 ;
  wire \clk_cnt_reg[4]_i_2_n_1 ;
  wire \clk_cnt_reg[4]_i_2_n_2 ;
  wire \clk_cnt_reg[4]_i_2_n_3 ;
  wire \clk_cnt_reg[4]_i_2_n_4 ;
  wire \clk_cnt_reg[4]_i_2_n_5 ;
  wire \clk_cnt_reg[4]_i_2_n_6 ;
  wire \clk_cnt_reg[4]_i_2_n_7 ;
  wire \clk_cnt_reg[8]_i_2_n_0 ;
  wire \clk_cnt_reg[8]_i_2_n_1 ;
  wire \clk_cnt_reg[8]_i_2_n_2 ;
  wire \clk_cnt_reg[8]_i_2_n_3 ;
  wire \clk_cnt_reg[8]_i_2_n_4 ;
  wire \clk_cnt_reg[8]_i_2_n_5 ;
  wire \clk_cnt_reg[8]_i_2_n_6 ;
  wire \clk_cnt_reg[8]_i_2_n_7 ;
  wire \clk_cnt_reg_n_0_[0] ;
  wire \clk_cnt_reg_n_0_[10] ;
  wire \clk_cnt_reg_n_0_[11] ;
  wire \clk_cnt_reg_n_0_[12] ;
  wire \clk_cnt_reg_n_0_[13] ;
  wire \clk_cnt_reg_n_0_[14] ;
  wire \clk_cnt_reg_n_0_[15] ;
  wire \clk_cnt_reg_n_0_[16] ;
  wire \clk_cnt_reg_n_0_[17] ;
  wire \clk_cnt_reg_n_0_[18] ;
  wire \clk_cnt_reg_n_0_[19] ;
  wire \clk_cnt_reg_n_0_[1] ;
  wire \clk_cnt_reg_n_0_[20] ;
  wire \clk_cnt_reg_n_0_[21] ;
  wire \clk_cnt_reg_n_0_[22] ;
  wire \clk_cnt_reg_n_0_[23] ;
  wire \clk_cnt_reg_n_0_[24] ;
  wire \clk_cnt_reg_n_0_[25] ;
  wire \clk_cnt_reg_n_0_[26] ;
  wire \clk_cnt_reg_n_0_[27] ;
  wire \clk_cnt_reg_n_0_[28] ;
  wire \clk_cnt_reg_n_0_[29] ;
  wire \clk_cnt_reg_n_0_[2] ;
  wire \clk_cnt_reg_n_0_[30] ;
  wire \clk_cnt_reg_n_0_[31] ;
  wire \clk_cnt_reg_n_0_[3] ;
  wire \clk_cnt_reg_n_0_[4] ;
  wire \clk_cnt_reg_n_0_[5] ;
  wire \clk_cnt_reg_n_0_[6] ;
  wire \clk_cnt_reg_n_0_[7] ;
  wire \clk_cnt_reg_n_0_[8] ;
  wire \clk_cnt_reg_n_0_[9] ;
  wire [7:0]dig0;
  wire [7:0]dig1;
  wire [7:0]dig2;
  wire [7:0]dig4;
  wire [7:0]dig5;
  wire [7:0]dig6;
  wire [7:0]dp;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [23:0]\slv_reg7_reg[27] ;
  wire [3:2]\NLW_clk_cnt_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_clk_cnt_reg[31]_i_2_O_UNCONNECTED ;

  embsys_nexys4IO_0_0_Digit Digit0
       (.Q({Q[20],Q[4:0]}),
        .s00_axi_aclk(s00_axi_aclk),
        .\seg_reg[7]_0 (dig0));
  embsys_nexys4IO_0_0_Digit_1 Digit1
       (.Q({Q[21],Q[9:5]}),
        .s00_axi_aclk(s00_axi_aclk),
        .\seg_reg[7]_0 (dig1));
  embsys_nexys4IO_0_0_Digit_2 Digit2
       (.Q({Q[22],Q[14:10]}),
        .s00_axi_aclk(s00_axi_aclk),
        .\seg_reg[7]_0 (dig2));
  embsys_nexys4IO_0_0_Digit_3 Digit3
       (.D({Digit3_n_0,Digit3_n_1,Digit3_n_2,Digit3_n_3,Digit3_n_4,Digit3_n_5,Digit3_n_6,Digit3_n_7}),
        .Q({Q[23],Q[19:15]}),
        .out(an_0),
        .s00_axi_aclk(s00_axi_aclk),
        .\seg_reg[0]_0 (Digit7_n_0),
        .\seg_reg[1]_0 (Digit7_n_1),
        .\seg_reg[2]_0 (Digit7_n_2),
        .\seg_reg[3]_0 (Digit7_n_3),
        .\seg_reg[4]_0 (Digit7_n_4),
        .\seg_reg[5]_0 (Digit7_n_5),
        .\seg_reg[6]_0 (Digit7_n_6),
        .\seg_reg[7]_0 (dig2),
        .\seg_reg[7]_1 (dig1),
        .\seg_reg[7]_2 (dig0),
        .\seg_reg[7]_3 (Digit7_n_7));
  embsys_nexys4IO_0_0_Digit_4 Digit4
       (.Q(dig4),
        .s00_axi_aclk(s00_axi_aclk),
        .\slv_reg7_reg[24] ({\slv_reg7_reg[27] [20],\slv_reg7_reg[27] [4:0]}));
  embsys_nexys4IO_0_0_Digit_5 Digit5
       (.Q(dig5),
        .s00_axi_aclk(s00_axi_aclk),
        .\slv_reg7_reg[25] ({\slv_reg7_reg[27] [21],\slv_reg7_reg[27] [9:5]}));
  embsys_nexys4IO_0_0_Digit_6 Digit6
       (.Q(dig6),
        .s00_axi_aclk(s00_axi_aclk),
        .\slv_reg7_reg[26] ({\slv_reg7_reg[27] [22],\slv_reg7_reg[27] [14:10]}));
  embsys_nexys4IO_0_0_Digit_7 Digit7
       (.Q(dig6),
        .out(an_0[1:0]),
        .s00_axi_aclk(s00_axi_aclk),
        .\seg_reg[0]_0 (Digit7_n_0),
        .\seg_reg[1]_0 (Digit7_n_1),
        .\seg_reg[2]_0 (Digit7_n_2),
        .\seg_reg[3]_0 (Digit7_n_3),
        .\seg_reg[4]_0 (Digit7_n_4),
        .\seg_reg[5]_0 (Digit7_n_5),
        .\seg_reg[6]_0 (Digit7_n_6),
        .\seg_reg[7]_0 (Digit7_n_7),
        .\seg_reg[7]_1 (dig5),
        .\seg_reg[7]_2 (dig4),
        .\slv_reg7_reg[27] ({\slv_reg7_reg[27] [23],\slv_reg7_reg[27] [19:15]}));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \FSM_sequential_an[0]_i_1 
       (.I0(an_0[0]),
        .I1(\FSM_sequential_an[2]_i_3_n_0 ),
        .I2(\FSM_sequential_an[2]_i_4_n_0 ),
        .I3(\FSM_sequential_an[2]_i_5_n_0 ),
        .I4(\FSM_sequential_an[2]_i_6_n_0 ),
        .I5(an_0[0]),
        .O(\FSM_sequential_an[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF600000006)) 
    \FSM_sequential_an[1]_i_1 
       (.I0(an_0[0]),
        .I1(an_0[1]),
        .I2(\FSM_sequential_an[1]_i_2_n_0 ),
        .I3(\FSM_sequential_an[2]_i_5_n_0 ),
        .I4(\FSM_sequential_an[2]_i_6_n_0 ),
        .I5(an_0[1]),
        .O(\FSM_sequential_an[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_an[1]_i_2 
       (.I0(\FSM_sequential_an[2]_i_7_n_0 ),
        .I1(\FSM_sequential_an[1]_i_3_n_0 ),
        .I2(\FSM_sequential_an[2]_i_8_n_0 ),
        .I3(\FSM_sequential_an[1]_i_4_n_0 ),
        .O(\FSM_sequential_an[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \FSM_sequential_an[1]_i_3 
       (.I0(\clk_cnt_reg_n_0_[17] ),
        .I1(\clk_cnt_reg_n_0_[16] ),
        .I2(\clk_cnt_reg_n_0_[19] ),
        .I3(\clk_cnt_reg_n_0_[18] ),
        .O(\FSM_sequential_an[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_an[1]_i_4 
       (.I0(\clk_cnt_reg_n_0_[25] ),
        .I1(\clk_cnt_reg_n_0_[24] ),
        .I2(\clk_cnt_reg_n_0_[27] ),
        .I3(\clk_cnt_reg_n_0_[26] ),
        .O(\FSM_sequential_an[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \FSM_sequential_an[2]_i_1 
       (.I0(\FSM_sequential_an[2]_i_2_n_0 ),
        .I1(\FSM_sequential_an[2]_i_3_n_0 ),
        .I2(\FSM_sequential_an[2]_i_4_n_0 ),
        .I3(\FSM_sequential_an[2]_i_5_n_0 ),
        .I4(\FSM_sequential_an[2]_i_6_n_0 ),
        .I5(an_0[2]),
        .O(\FSM_sequential_an[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_an[2]_i_10 
       (.I0(\clk_cnt_reg_n_0_[13] ),
        .I1(\clk_cnt_reg_n_0_[12] ),
        .I2(\clk_cnt_reg_n_0_[15] ),
        .I3(\clk_cnt_reg_n_0_[14] ),
        .O(\FSM_sequential_an[2]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \FSM_sequential_an[2]_i_2 
       (.I0(an_0[1]),
        .I1(an_0[0]),
        .I2(an_0[2]),
        .O(\FSM_sequential_an[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \FSM_sequential_an[2]_i_3 
       (.I0(\clk_cnt_reg_n_0_[18] ),
        .I1(\clk_cnt_reg_n_0_[19] ),
        .I2(\clk_cnt_reg_n_0_[16] ),
        .I3(\clk_cnt_reg_n_0_[17] ),
        .I4(\FSM_sequential_an[2]_i_7_n_0 ),
        .O(\FSM_sequential_an[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_an[2]_i_4 
       (.I0(\clk_cnt_reg_n_0_[26] ),
        .I1(\clk_cnt_reg_n_0_[27] ),
        .I2(\clk_cnt_reg_n_0_[24] ),
        .I3(\clk_cnt_reg_n_0_[25] ),
        .I4(\FSM_sequential_an[2]_i_8_n_0 ),
        .O(\FSM_sequential_an[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \FSM_sequential_an[2]_i_5 
       (.I0(\clk_cnt_reg_n_0_[2] ),
        .I1(\clk_cnt_reg_n_0_[3] ),
        .I2(\clk_cnt_reg_n_0_[0] ),
        .I3(\clk_cnt_reg_n_0_[1] ),
        .I4(\FSM_sequential_an[2]_i_9_n_0 ),
        .O(\FSM_sequential_an[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    \FSM_sequential_an[2]_i_6 
       (.I0(\clk_cnt_reg_n_0_[10] ),
        .I1(\clk_cnt_reg_n_0_[11] ),
        .I2(\clk_cnt_reg_n_0_[9] ),
        .I3(\clk_cnt_reg_n_0_[8] ),
        .I4(\FSM_sequential_an[2]_i_10_n_0 ),
        .O(\FSM_sequential_an[2]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_an[2]_i_7 
       (.I0(\clk_cnt_reg_n_0_[21] ),
        .I1(\clk_cnt_reg_n_0_[20] ),
        .I2(\clk_cnt_reg_n_0_[23] ),
        .I3(\clk_cnt_reg_n_0_[22] ),
        .O(\FSM_sequential_an[2]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_an[2]_i_8 
       (.I0(\clk_cnt_reg_n_0_[29] ),
        .I1(\clk_cnt_reg_n_0_[28] ),
        .I2(\clk_cnt_reg_n_0_[31] ),
        .I3(\clk_cnt_reg_n_0_[30] ),
        .O(\FSM_sequential_an[2]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \FSM_sequential_an[2]_i_9 
       (.I0(\clk_cnt_reg_n_0_[5] ),
        .I1(\clk_cnt_reg_n_0_[4] ),
        .I2(\clk_cnt_reg_n_0_[7] ),
        .I3(\clk_cnt_reg_n_0_[6] ),
        .O(\FSM_sequential_an[2]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "digit1:000,digit2:001,digit3:010,digit4:011,digit5:100,digit6:101,digit7:110,digit8:111" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_an_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_an[0]_i_1_n_0 ),
        .Q(an_0[0]),
        .R(\clk_cnt_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "digit1:000,digit2:001,digit3:010,digit4:011,digit5:100,digit6:101,digit7:110,digit8:111" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_an_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_an[1]_i_1_n_0 ),
        .Q(an_0[1]),
        .R(\clk_cnt_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "digit1:000,digit2:001,digit3:010,digit4:011,digit5:100,digit6:101,digit7:110,digit8:111" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_an_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_an[2]_i_1_n_0 ),
        .Q(an_0[2]),
        .R(\clk_cnt_reg[0]_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \an[0]_INST_0 
       (.I0(an_0[1]),
        .I1(an_0[2]),
        .I2(an_0[0]),
        .O(an[0]));
  LUT3 #(
    .INIT(8'hEF)) 
    \an[1]_INST_0 
       (.I0(an_0[1]),
        .I1(an_0[2]),
        .I2(an_0[0]),
        .O(an[1]));
  LUT3 #(
    .INIT(8'hEF)) 
    \an[2]_INST_0 
       (.I0(an_0[2]),
        .I1(an_0[0]),
        .I2(an_0[1]),
        .O(an[2]));
  LUT3 #(
    .INIT(8'hF7)) 
    \an[3]_INST_0 
       (.I0(an_0[1]),
        .I1(an_0[0]),
        .I2(an_0[2]),
        .O(an[3]));
  LUT3 #(
    .INIT(8'hEF)) 
    \an[4]_INST_0 
       (.I0(an_0[1]),
        .I1(an_0[0]),
        .I2(an_0[2]),
        .O(an[4]));
  LUT3 #(
    .INIT(8'hF7)) 
    \an[5]_INST_0 
       (.I0(an_0[2]),
        .I1(an_0[0]),
        .I2(an_0[1]),
        .O(an[5]));
  LUT3 #(
    .INIT(8'hF7)) 
    \an[6]_INST_0 
       (.I0(an_0[1]),
        .I1(an_0[2]),
        .I2(an_0[0]),
        .O(an[6]));
  LUT3 #(
    .INIT(8'h7F)) 
    \an[7]_INST_0 
       (.I0(an_0[2]),
        .I1(an_0[0]),
        .I2(an_0[1]),
        .O(an[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_cnt[0]_i_1 
       (.I0(\clk_cnt_reg_n_0_[0] ),
        .O(clk_cnt[0]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_cnt[10]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\FSM_sequential_an[2]_i_4_n_0 ),
        .I2(\FSM_sequential_an[2]_i_5_n_0 ),
        .I3(\FSM_sequential_an[2]_i_6_n_0 ),
        .I4(\clk_cnt_reg[12]_i_2_n_6 ),
        .O(clk_cnt[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_cnt[11]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\FSM_sequential_an[2]_i_4_n_0 ),
        .I2(\FSM_sequential_an[2]_i_5_n_0 ),
        .I3(\FSM_sequential_an[2]_i_6_n_0 ),
        .I4(\clk_cnt_reg[12]_i_2_n_5 ),
        .O(clk_cnt[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_cnt[12]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\FSM_sequential_an[2]_i_4_n_0 ),
        .I2(\FSM_sequential_an[2]_i_5_n_0 ),
        .I3(\FSM_sequential_an[2]_i_6_n_0 ),
        .I4(\clk_cnt_reg[12]_i_2_n_4 ),
        .O(clk_cnt[12]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_cnt[13]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\FSM_sequential_an[2]_i_4_n_0 ),
        .I2(\FSM_sequential_an[2]_i_5_n_0 ),
        .I3(\FSM_sequential_an[2]_i_6_n_0 ),
        .I4(\clk_cnt_reg[16]_i_2_n_7 ),
        .O(clk_cnt[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_cnt[14]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\FSM_sequential_an[2]_i_4_n_0 ),
        .I2(\FSM_sequential_an[2]_i_5_n_0 ),
        .I3(\FSM_sequential_an[2]_i_6_n_0 ),
        .I4(\clk_cnt_reg[16]_i_2_n_6 ),
        .O(clk_cnt[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_cnt[15]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\FSM_sequential_an[2]_i_4_n_0 ),
        .I2(\FSM_sequential_an[2]_i_5_n_0 ),
        .I3(\FSM_sequential_an[2]_i_6_n_0 ),
        .I4(\clk_cnt_reg[16]_i_2_n_5 ),
        .O(clk_cnt[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_cnt[16]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\FSM_sequential_an[2]_i_4_n_0 ),
        .I2(\FSM_sequential_an[2]_i_5_n_0 ),
        .I3(\FSM_sequential_an[2]_i_6_n_0 ),
        .I4(\clk_cnt_reg[16]_i_2_n_4 ),
        .O(clk_cnt[16]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_cnt[17]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\FSM_sequential_an[2]_i_4_n_0 ),
        .I2(\FSM_sequential_an[2]_i_5_n_0 ),
        .I3(\FSM_sequential_an[2]_i_6_n_0 ),
        .I4(\clk_cnt_reg[20]_i_2_n_7 ),
        .O(clk_cnt[17]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_cnt[18]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\FSM_sequential_an[2]_i_4_n_0 ),
        .I2(\FSM_sequential_an[2]_i_5_n_0 ),
        .I3(\FSM_sequential_an[2]_i_6_n_0 ),
        .I4(\clk_cnt_reg[20]_i_2_n_6 ),
        .O(clk_cnt[18]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_cnt[19]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\FSM_sequential_an[2]_i_4_n_0 ),
        .I2(\FSM_sequential_an[2]_i_5_n_0 ),
        .I3(\FSM_sequential_an[2]_i_6_n_0 ),
        .I4(\clk_cnt_reg[20]_i_2_n_5 ),
        .O(clk_cnt[19]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_cnt[1]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\FSM_sequential_an[2]_i_4_n_0 ),
        .I2(\FSM_sequential_an[2]_i_5_n_0 ),
        .I3(\FSM_sequential_an[2]_i_6_n_0 ),
        .I4(\clk_cnt_reg[4]_i_2_n_7 ),
        .O(clk_cnt[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_cnt[20]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\FSM_sequential_an[2]_i_4_n_0 ),
        .I2(\FSM_sequential_an[2]_i_5_n_0 ),
        .I3(\FSM_sequential_an[2]_i_6_n_0 ),
        .I4(\clk_cnt_reg[20]_i_2_n_4 ),
        .O(clk_cnt[20]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_cnt[21]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\FSM_sequential_an[2]_i_4_n_0 ),
        .I2(\FSM_sequential_an[2]_i_5_n_0 ),
        .I3(\FSM_sequential_an[2]_i_6_n_0 ),
        .I4(\clk_cnt_reg[24]_i_2_n_7 ),
        .O(clk_cnt[21]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_cnt[22]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\FSM_sequential_an[2]_i_4_n_0 ),
        .I2(\FSM_sequential_an[2]_i_5_n_0 ),
        .I3(\FSM_sequential_an[2]_i_6_n_0 ),
        .I4(\clk_cnt_reg[24]_i_2_n_6 ),
        .O(clk_cnt[22]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_cnt[23]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\FSM_sequential_an[2]_i_4_n_0 ),
        .I2(\FSM_sequential_an[2]_i_5_n_0 ),
        .I3(\FSM_sequential_an[2]_i_6_n_0 ),
        .I4(\clk_cnt_reg[24]_i_2_n_5 ),
        .O(clk_cnt[23]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_cnt[24]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\FSM_sequential_an[2]_i_4_n_0 ),
        .I2(\FSM_sequential_an[2]_i_5_n_0 ),
        .I3(\FSM_sequential_an[2]_i_6_n_0 ),
        .I4(\clk_cnt_reg[24]_i_2_n_4 ),
        .O(clk_cnt[24]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_cnt[25]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\FSM_sequential_an[2]_i_4_n_0 ),
        .I2(\FSM_sequential_an[2]_i_5_n_0 ),
        .I3(\FSM_sequential_an[2]_i_6_n_0 ),
        .I4(\clk_cnt_reg[28]_i_2_n_7 ),
        .O(clk_cnt[25]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_cnt[26]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\FSM_sequential_an[2]_i_4_n_0 ),
        .I2(\FSM_sequential_an[2]_i_5_n_0 ),
        .I3(\FSM_sequential_an[2]_i_6_n_0 ),
        .I4(\clk_cnt_reg[28]_i_2_n_6 ),
        .O(clk_cnt[26]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_cnt[27]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\FSM_sequential_an[2]_i_4_n_0 ),
        .I2(\FSM_sequential_an[2]_i_5_n_0 ),
        .I3(\FSM_sequential_an[2]_i_6_n_0 ),
        .I4(\clk_cnt_reg[28]_i_2_n_5 ),
        .O(clk_cnt[27]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_cnt[28]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\FSM_sequential_an[2]_i_4_n_0 ),
        .I2(\FSM_sequential_an[2]_i_5_n_0 ),
        .I3(\FSM_sequential_an[2]_i_6_n_0 ),
        .I4(\clk_cnt_reg[28]_i_2_n_4 ),
        .O(clk_cnt[28]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_cnt[29]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\FSM_sequential_an[2]_i_4_n_0 ),
        .I2(\FSM_sequential_an[2]_i_5_n_0 ),
        .I3(\FSM_sequential_an[2]_i_6_n_0 ),
        .I4(\clk_cnt_reg[31]_i_2_n_7 ),
        .O(clk_cnt[29]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_cnt[2]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\FSM_sequential_an[2]_i_4_n_0 ),
        .I2(\FSM_sequential_an[2]_i_5_n_0 ),
        .I3(\FSM_sequential_an[2]_i_6_n_0 ),
        .I4(\clk_cnt_reg[4]_i_2_n_6 ),
        .O(clk_cnt[2]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_cnt[30]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\FSM_sequential_an[2]_i_4_n_0 ),
        .I2(\FSM_sequential_an[2]_i_5_n_0 ),
        .I3(\FSM_sequential_an[2]_i_6_n_0 ),
        .I4(\clk_cnt_reg[31]_i_2_n_6 ),
        .O(clk_cnt[30]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_cnt[31]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\FSM_sequential_an[2]_i_4_n_0 ),
        .I2(\FSM_sequential_an[2]_i_5_n_0 ),
        .I3(\FSM_sequential_an[2]_i_6_n_0 ),
        .I4(\clk_cnt_reg[31]_i_2_n_5 ),
        .O(clk_cnt[31]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_cnt[3]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\FSM_sequential_an[2]_i_4_n_0 ),
        .I2(\FSM_sequential_an[2]_i_5_n_0 ),
        .I3(\FSM_sequential_an[2]_i_6_n_0 ),
        .I4(\clk_cnt_reg[4]_i_2_n_5 ),
        .O(clk_cnt[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_cnt[4]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\FSM_sequential_an[2]_i_4_n_0 ),
        .I2(\FSM_sequential_an[2]_i_5_n_0 ),
        .I3(\FSM_sequential_an[2]_i_6_n_0 ),
        .I4(\clk_cnt_reg[4]_i_2_n_4 ),
        .O(clk_cnt[4]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_cnt[5]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\FSM_sequential_an[2]_i_4_n_0 ),
        .I2(\FSM_sequential_an[2]_i_5_n_0 ),
        .I3(\FSM_sequential_an[2]_i_6_n_0 ),
        .I4(\clk_cnt_reg[8]_i_2_n_7 ),
        .O(clk_cnt[5]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_cnt[6]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\FSM_sequential_an[2]_i_4_n_0 ),
        .I2(\FSM_sequential_an[2]_i_5_n_0 ),
        .I3(\FSM_sequential_an[2]_i_6_n_0 ),
        .I4(\clk_cnt_reg[8]_i_2_n_6 ),
        .O(clk_cnt[6]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_cnt[7]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\FSM_sequential_an[2]_i_4_n_0 ),
        .I2(\FSM_sequential_an[2]_i_5_n_0 ),
        .I3(\FSM_sequential_an[2]_i_6_n_0 ),
        .I4(\clk_cnt_reg[8]_i_2_n_5 ),
        .O(clk_cnt[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_cnt[8]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\FSM_sequential_an[2]_i_4_n_0 ),
        .I2(\FSM_sequential_an[2]_i_5_n_0 ),
        .I3(\FSM_sequential_an[2]_i_6_n_0 ),
        .I4(\clk_cnt_reg[8]_i_2_n_4 ),
        .O(clk_cnt[8]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_cnt[9]_i_1 
       (.I0(\FSM_sequential_an[2]_i_3_n_0 ),
        .I1(\FSM_sequential_an[2]_i_4_n_0 ),
        .I2(\FSM_sequential_an[2]_i_5_n_0 ),
        .I3(\FSM_sequential_an[2]_i_6_n_0 ),
        .I4(\clk_cnt_reg[12]_i_2_n_7 ),
        .O(clk_cnt[9]));
  FDRE \clk_cnt_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cnt[0]),
        .Q(\clk_cnt_reg_n_0_[0] ),
        .R(\clk_cnt_reg[0]_0 ));
  FDRE \clk_cnt_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cnt[10]),
        .Q(\clk_cnt_reg_n_0_[10] ),
        .R(\clk_cnt_reg[0]_0 ));
  FDRE \clk_cnt_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cnt[11]),
        .Q(\clk_cnt_reg_n_0_[11] ),
        .R(\clk_cnt_reg[0]_0 ));
  FDRE \clk_cnt_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cnt[12]),
        .Q(\clk_cnt_reg_n_0_[12] ),
        .R(\clk_cnt_reg[0]_0 ));
  CARRY4 \clk_cnt_reg[12]_i_2 
       (.CI(\clk_cnt_reg[8]_i_2_n_0 ),
        .CO({\clk_cnt_reg[12]_i_2_n_0 ,\clk_cnt_reg[12]_i_2_n_1 ,\clk_cnt_reg[12]_i_2_n_2 ,\clk_cnt_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_cnt_reg[12]_i_2_n_4 ,\clk_cnt_reg[12]_i_2_n_5 ,\clk_cnt_reg[12]_i_2_n_6 ,\clk_cnt_reg[12]_i_2_n_7 }),
        .S({\clk_cnt_reg_n_0_[12] ,\clk_cnt_reg_n_0_[11] ,\clk_cnt_reg_n_0_[10] ,\clk_cnt_reg_n_0_[9] }));
  FDRE \clk_cnt_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cnt[13]),
        .Q(\clk_cnt_reg_n_0_[13] ),
        .R(\clk_cnt_reg[0]_0 ));
  FDRE \clk_cnt_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cnt[14]),
        .Q(\clk_cnt_reg_n_0_[14] ),
        .R(\clk_cnt_reg[0]_0 ));
  FDRE \clk_cnt_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cnt[15]),
        .Q(\clk_cnt_reg_n_0_[15] ),
        .R(\clk_cnt_reg[0]_0 ));
  FDRE \clk_cnt_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cnt[16]),
        .Q(\clk_cnt_reg_n_0_[16] ),
        .R(\clk_cnt_reg[0]_0 ));
  CARRY4 \clk_cnt_reg[16]_i_2 
       (.CI(\clk_cnt_reg[12]_i_2_n_0 ),
        .CO({\clk_cnt_reg[16]_i_2_n_0 ,\clk_cnt_reg[16]_i_2_n_1 ,\clk_cnt_reg[16]_i_2_n_2 ,\clk_cnt_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_cnt_reg[16]_i_2_n_4 ,\clk_cnt_reg[16]_i_2_n_5 ,\clk_cnt_reg[16]_i_2_n_6 ,\clk_cnt_reg[16]_i_2_n_7 }),
        .S({\clk_cnt_reg_n_0_[16] ,\clk_cnt_reg_n_0_[15] ,\clk_cnt_reg_n_0_[14] ,\clk_cnt_reg_n_0_[13] }));
  FDRE \clk_cnt_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cnt[17]),
        .Q(\clk_cnt_reg_n_0_[17] ),
        .R(\clk_cnt_reg[0]_0 ));
  FDRE \clk_cnt_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cnt[18]),
        .Q(\clk_cnt_reg_n_0_[18] ),
        .R(\clk_cnt_reg[0]_0 ));
  FDRE \clk_cnt_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cnt[19]),
        .Q(\clk_cnt_reg_n_0_[19] ),
        .R(\clk_cnt_reg[0]_0 ));
  FDRE \clk_cnt_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cnt[1]),
        .Q(\clk_cnt_reg_n_0_[1] ),
        .R(\clk_cnt_reg[0]_0 ));
  FDRE \clk_cnt_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cnt[20]),
        .Q(\clk_cnt_reg_n_0_[20] ),
        .R(\clk_cnt_reg[0]_0 ));
  CARRY4 \clk_cnt_reg[20]_i_2 
       (.CI(\clk_cnt_reg[16]_i_2_n_0 ),
        .CO({\clk_cnt_reg[20]_i_2_n_0 ,\clk_cnt_reg[20]_i_2_n_1 ,\clk_cnt_reg[20]_i_2_n_2 ,\clk_cnt_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_cnt_reg[20]_i_2_n_4 ,\clk_cnt_reg[20]_i_2_n_5 ,\clk_cnt_reg[20]_i_2_n_6 ,\clk_cnt_reg[20]_i_2_n_7 }),
        .S({\clk_cnt_reg_n_0_[20] ,\clk_cnt_reg_n_0_[19] ,\clk_cnt_reg_n_0_[18] ,\clk_cnt_reg_n_0_[17] }));
  FDRE \clk_cnt_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cnt[21]),
        .Q(\clk_cnt_reg_n_0_[21] ),
        .R(\clk_cnt_reg[0]_0 ));
  FDRE \clk_cnt_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cnt[22]),
        .Q(\clk_cnt_reg_n_0_[22] ),
        .R(\clk_cnt_reg[0]_0 ));
  FDRE \clk_cnt_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cnt[23]),
        .Q(\clk_cnt_reg_n_0_[23] ),
        .R(\clk_cnt_reg[0]_0 ));
  FDRE \clk_cnt_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cnt[24]),
        .Q(\clk_cnt_reg_n_0_[24] ),
        .R(\clk_cnt_reg[0]_0 ));
  CARRY4 \clk_cnt_reg[24]_i_2 
       (.CI(\clk_cnt_reg[20]_i_2_n_0 ),
        .CO({\clk_cnt_reg[24]_i_2_n_0 ,\clk_cnt_reg[24]_i_2_n_1 ,\clk_cnt_reg[24]_i_2_n_2 ,\clk_cnt_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_cnt_reg[24]_i_2_n_4 ,\clk_cnt_reg[24]_i_2_n_5 ,\clk_cnt_reg[24]_i_2_n_6 ,\clk_cnt_reg[24]_i_2_n_7 }),
        .S({\clk_cnt_reg_n_0_[24] ,\clk_cnt_reg_n_0_[23] ,\clk_cnt_reg_n_0_[22] ,\clk_cnt_reg_n_0_[21] }));
  FDRE \clk_cnt_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cnt[25]),
        .Q(\clk_cnt_reg_n_0_[25] ),
        .R(\clk_cnt_reg[0]_0 ));
  FDRE \clk_cnt_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cnt[26]),
        .Q(\clk_cnt_reg_n_0_[26] ),
        .R(\clk_cnt_reg[0]_0 ));
  FDRE \clk_cnt_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cnt[27]),
        .Q(\clk_cnt_reg_n_0_[27] ),
        .R(\clk_cnt_reg[0]_0 ));
  FDRE \clk_cnt_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cnt[28]),
        .Q(\clk_cnt_reg_n_0_[28] ),
        .R(\clk_cnt_reg[0]_0 ));
  CARRY4 \clk_cnt_reg[28]_i_2 
       (.CI(\clk_cnt_reg[24]_i_2_n_0 ),
        .CO({\clk_cnt_reg[28]_i_2_n_0 ,\clk_cnt_reg[28]_i_2_n_1 ,\clk_cnt_reg[28]_i_2_n_2 ,\clk_cnt_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_cnt_reg[28]_i_2_n_4 ,\clk_cnt_reg[28]_i_2_n_5 ,\clk_cnt_reg[28]_i_2_n_6 ,\clk_cnt_reg[28]_i_2_n_7 }),
        .S({\clk_cnt_reg_n_0_[28] ,\clk_cnt_reg_n_0_[27] ,\clk_cnt_reg_n_0_[26] ,\clk_cnt_reg_n_0_[25] }));
  FDRE \clk_cnt_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cnt[29]),
        .Q(\clk_cnt_reg_n_0_[29] ),
        .R(\clk_cnt_reg[0]_0 ));
  FDRE \clk_cnt_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cnt[2]),
        .Q(\clk_cnt_reg_n_0_[2] ),
        .R(\clk_cnt_reg[0]_0 ));
  FDRE \clk_cnt_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cnt[30]),
        .Q(\clk_cnt_reg_n_0_[30] ),
        .R(\clk_cnt_reg[0]_0 ));
  FDRE \clk_cnt_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cnt[31]),
        .Q(\clk_cnt_reg_n_0_[31] ),
        .R(\clk_cnt_reg[0]_0 ));
  CARRY4 \clk_cnt_reg[31]_i_2 
       (.CI(\clk_cnt_reg[28]_i_2_n_0 ),
        .CO({\NLW_clk_cnt_reg[31]_i_2_CO_UNCONNECTED [3:2],\clk_cnt_reg[31]_i_2_n_2 ,\clk_cnt_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_clk_cnt_reg[31]_i_2_O_UNCONNECTED [3],\clk_cnt_reg[31]_i_2_n_5 ,\clk_cnt_reg[31]_i_2_n_6 ,\clk_cnt_reg[31]_i_2_n_7 }),
        .S({1'b0,\clk_cnt_reg_n_0_[31] ,\clk_cnt_reg_n_0_[30] ,\clk_cnt_reg_n_0_[29] }));
  FDRE \clk_cnt_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cnt[3]),
        .Q(\clk_cnt_reg_n_0_[3] ),
        .R(\clk_cnt_reg[0]_0 ));
  FDRE \clk_cnt_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cnt[4]),
        .Q(\clk_cnt_reg_n_0_[4] ),
        .R(\clk_cnt_reg[0]_0 ));
  CARRY4 \clk_cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\clk_cnt_reg[4]_i_2_n_0 ,\clk_cnt_reg[4]_i_2_n_1 ,\clk_cnt_reg[4]_i_2_n_2 ,\clk_cnt_reg[4]_i_2_n_3 }),
        .CYINIT(\clk_cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_cnt_reg[4]_i_2_n_4 ,\clk_cnt_reg[4]_i_2_n_5 ,\clk_cnt_reg[4]_i_2_n_6 ,\clk_cnt_reg[4]_i_2_n_7 }),
        .S({\clk_cnt_reg_n_0_[4] ,\clk_cnt_reg_n_0_[3] ,\clk_cnt_reg_n_0_[2] ,\clk_cnt_reg_n_0_[1] }));
  FDRE \clk_cnt_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cnt[5]),
        .Q(\clk_cnt_reg_n_0_[5] ),
        .R(\clk_cnt_reg[0]_0 ));
  FDRE \clk_cnt_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cnt[6]),
        .Q(\clk_cnt_reg_n_0_[6] ),
        .R(\clk_cnt_reg[0]_0 ));
  FDRE \clk_cnt_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cnt[7]),
        .Q(\clk_cnt_reg_n_0_[7] ),
        .R(\clk_cnt_reg[0]_0 ));
  FDRE \clk_cnt_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cnt[8]),
        .Q(\clk_cnt_reg_n_0_[8] ),
        .R(\clk_cnt_reg[0]_0 ));
  CARRY4 \clk_cnt_reg[8]_i_2 
       (.CI(\clk_cnt_reg[4]_i_2_n_0 ),
        .CO({\clk_cnt_reg[8]_i_2_n_0 ,\clk_cnt_reg[8]_i_2_n_1 ,\clk_cnt_reg[8]_i_2_n_2 ,\clk_cnt_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_cnt_reg[8]_i_2_n_4 ,\clk_cnt_reg[8]_i_2_n_5 ,\clk_cnt_reg[8]_i_2_n_6 ,\clk_cnt_reg[8]_i_2_n_7 }),
        .S({\clk_cnt_reg_n_0_[8] ,\clk_cnt_reg_n_0_[7] ,\clk_cnt_reg_n_0_[6] ,\clk_cnt_reg_n_0_[5] }));
  FDRE \clk_cnt_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(clk_cnt[9]),
        .Q(\clk_cnt_reg_n_0_[9] ),
        .R(\clk_cnt_reg[0]_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \seg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Digit3_n_7),
        .Q(dp[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \seg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Digit3_n_6),
        .Q(dp[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \seg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Digit3_n_5),
        .Q(dp[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \seg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Digit3_n_4),
        .Q(dp[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \seg_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Digit3_n_3),
        .Q(dp[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \seg_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Digit3_n_2),
        .Q(dp[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \seg_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Digit3_n_1),
        .Q(dp[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \seg_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Digit3_n_0),
        .Q(dp[7]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \slv_reg1[15]_i_1 
       (.I0(s00_axi_aresetn),
        .O(\clk_cnt_reg[0]_0 ));
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
