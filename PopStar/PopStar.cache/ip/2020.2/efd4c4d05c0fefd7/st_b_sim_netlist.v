// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Jan  7 14:54:47 2024
// Host        : MaverickidPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ st_b_sim_netlist.v
// Design      : st_b
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "st_b,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
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
iyQ7yMsMJVU8XZppsQ==
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
