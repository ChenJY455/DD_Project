// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Jan  7 14:55:14 2024
// Host        : MaverickidPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top st_g -prefix
//               st_g_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module st_g
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
  st_g_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 34752)
`pragma protect data_block
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
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
