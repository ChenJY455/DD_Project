// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Jan  7 14:55:15 2024
// Host        : MaverickidPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/86198/Desktop/vivadoProject/DD_Project/PopStar/PopStar.gen/sources_1/ip/blk_mem_gen_0_3/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [11:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [11:0]douta;

  wire [11:0]addra;
  wire clka;
  wire [11:0]douta;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [11:0]NLW_U0_doutb_UNCONNECTED;
  wire [11:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "12" *) 
  (* C_ADDRB_WIDTH = "12" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.511199 mW" *) 
  (* C_FAMILY = "kintex7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2500" *) 
  (* C_READ_DEPTH_B = "2500" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "12" *) 
  (* C_READ_WIDTH_B = "12" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "2500" *) 
  (* C_WRITE_DEPTH_B = "2500" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "12" *) 
  (* C_WRITE_WIDTH_B = "12" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[11:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[11:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[11:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[11:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 35184)
`pragma protect data_block
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
lHEhy2FyHZTRcJV8weoU
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
