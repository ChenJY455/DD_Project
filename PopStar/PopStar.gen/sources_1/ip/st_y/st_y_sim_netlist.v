// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Jan  7 14:56:31 2024
// Host        : MaverickidPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/86198/Desktop/vivadoProject/DD_Project/PopStar/PopStar.gen/sources_1/ip/st_y/st_y_sim_netlist.v
// Design      : st_y
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "st_y,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module st_y
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
  (* C_INIT_FILE = "st_y.mem" *) 
  (* C_INIT_FILE_NAME = "st_y.mif" *) 
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
  st_y_blk_mem_gen_v8_4_4 U0
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
3MPz3dUIrTyE6OoZCVz44DuzMo02HZnYnD8=
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
