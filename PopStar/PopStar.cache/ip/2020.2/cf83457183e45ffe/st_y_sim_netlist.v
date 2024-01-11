// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Jan  7 14:56:30 2024
// Host        : MaverickidPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ st_y_sim_netlist.v
// Design      : st_y
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "st_y,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
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
tyxCRviJsyZcYJ3mhw==
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
