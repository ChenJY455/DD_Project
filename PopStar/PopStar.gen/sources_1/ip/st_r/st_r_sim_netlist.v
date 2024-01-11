// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Jan  7 13:56:06 2024
// Host        : MaverickidPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/86198/Desktop/vivadoProject/DD_Project/PopStar/PopStar.gen/sources_1/ip/st_r/st_r_sim_netlist.v
// Design      : st_r
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "st_r,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module st_r
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
  (* C_INIT_FILE = "st_r.mem" *) 
  (* C_INIT_FILE_NAME = "st_r.mif" *) 
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
  st_r_blk_mem_gen_v8_4_4 U0
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
+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
5j57Pwoxa7u+q4HuMIqlrcf5wbPKYpur6fk=
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
