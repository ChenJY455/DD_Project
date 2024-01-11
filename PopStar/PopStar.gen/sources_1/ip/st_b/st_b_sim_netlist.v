// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Jan  7 14:54:47 2024
// Host        : MaverickidPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/86198/Desktop/vivadoProject/DD_Project/PopStar/PopStar.gen/sources_1/ip/st_b/st_b_sim_netlist.v
// Design      : st_b
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "st_b,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module st_b
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
  (* C_INIT_FILE = "st_b.mem" *) 
  (* C_INIT_FILE_NAME = "st_b.mif" *) 
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
  st_b_blk_mem_gen_v8_4_4 U0
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
1vlGf5VBZwyQaZhwvFpDLin6PS86u1Gn1f4=
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
