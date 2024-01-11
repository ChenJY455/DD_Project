// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Jan  7 15:14:18 2024
// Host        : MaverickidPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/86198/Desktop/vivadoProject/DD_Project/PopStar/PopStar.gen/sources_1/ip/st_p/st_p_sim_netlist.v
// Design      : st_p
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "st_p,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module st_p
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
  (* C_INIT_FILE = "st_p.mem" *) 
  (* C_INIT_FILE_NAME = "st_p.mif" *) 
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
  st_p_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 35024)
`pragma protect data_block
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
FCBTbkBdSyQyPbdbGLqFdLwZMJNpnM5VVT0=
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
