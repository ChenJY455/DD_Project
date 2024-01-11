// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Jan  7 15:14:17 2024
// Host        : MaverickidPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ st_p_sim_netlist.v
// Design      : st_p
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "st_p,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 35296)
`pragma protect data_block
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
aHXVBxKjQP2Nbadn1w==
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
