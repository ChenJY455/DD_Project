// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Jan  7 13:56:05 2024
// Host        : MaverickidPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ st_r_sim_netlist.v
// Design      : st_r
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "st_r,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
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
hEF8g1vvSvBKJ43S0A==
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
