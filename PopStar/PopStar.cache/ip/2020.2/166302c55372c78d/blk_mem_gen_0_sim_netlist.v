// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Jan  7 14:55:14 2024
// Host        : MaverickidPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 35312)
`pragma protect data_block
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
KCuCPlFJNygeQSuTuJx5yu39KxmEJM49DplRfR4=
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
