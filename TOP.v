module InstDeco(
  input  [31:0] io_instruc,
  output [4:0]  io_rd,
  output [4:0]  io_rs1,
  output [4:0]  io_rs2,
  output [31:0] io_imm,
  output [5:0]  io_state
);
  wire [6:0] opcode = io_instruc[6:0]; // @[InstDeco.scala 56:27]
  wire [2:0] funct3 = io_instruc[14:12]; // @[InstDeco.scala 58:27]
  wire [6:0] funct7 = io_instruc[31:25]; // @[InstDeco.scala 61:27]
  wire  _T_7 = 7'h37 == opcode; // @[Conditional.scala 37:30]
  wire [31:0] _T_10 = {io_instruc[31:12],12'h0}; // @[InstDeco.scala 80:76]
  wire  _T_11 = 7'h17 == opcode; // @[Conditional.scala 37:30]
  wire  _T_15 = 7'h6f == opcode; // @[Conditional.scala 37:30]
  wire [20:0] _T_24 = {io_instruc[31],io_instruc[19:12],io_instruc[20],io_instruc[30:21],1'h0}; // @[InstDeco.scala 89:123]
  wire  _T_25 = 7'h67 == opcode; // @[Conditional.scala 37:30]
  wire [11:0] _T_27 = io_instruc[31:20]; // @[InstDeco.scala 94:61]
  wire  _T_28 = 7'h63 == opcode; // @[Conditional.scala 37:30]
  wire [12:0] _T_37 = {io_instruc[31],io_instruc[7],io_instruc[30:25],io_instruc[11:8],1'h0}; // @[InstDeco.scala 99:121]
  wire  _T_38 = 3'h0 == funct3; // @[Conditional.scala 37:30]
  wire  _T_39 = 3'h1 == funct3; // @[Conditional.scala 37:30]
  wire  _T_40 = 3'h4 == funct3; // @[Conditional.scala 37:30]
  wire  _T_41 = 3'h5 == funct3; // @[Conditional.scala 37:30]
  wire  _T_42 = 3'h6 == funct3; // @[Conditional.scala 37:30]
  wire  _T_43 = 3'h7 == funct3; // @[Conditional.scala 37:30]
  wire [5:0] _GEN_0 = _T_43 ? 6'h9 : 6'h0; // @[Conditional.scala 39:67]
  wire [5:0] _GEN_1 = _T_42 ? 6'h8 : _GEN_0; // @[Conditional.scala 39:67]
  wire [5:0] _GEN_2 = _T_41 ? 6'h7 : _GEN_1; // @[Conditional.scala 39:67]
  wire [5:0] _GEN_3 = _T_40 ? 6'h6 : _GEN_2; // @[Conditional.scala 39:67]
  wire [5:0] _GEN_4 = _T_39 ? 6'h5 : _GEN_3; // @[Conditional.scala 39:67]
  wire [5:0] _GEN_5 = _T_38 ? 6'h4 : _GEN_4; // @[Conditional.scala 40:58]
  wire  _T_44 = 7'h3 == opcode; // @[Conditional.scala 37:30]
  wire  _T_49 = 3'h2 == funct3; // @[Conditional.scala 37:30]
  wire [5:0] _GEN_6 = _T_41 ? 6'h12 : 6'h0; // @[Conditional.scala 39:67]
  wire [5:0] _GEN_7 = _T_40 ? 6'h11 : _GEN_6; // @[Conditional.scala 39:67]
  wire [5:0] _GEN_8 = _T_49 ? 6'h10 : _GEN_7; // @[Conditional.scala 39:67]
  wire [5:0] _GEN_9 = _T_39 ? 6'hf : _GEN_8; // @[Conditional.scala 39:67]
  wire [5:0] _GEN_10 = _T_38 ? 6'he : _GEN_9; // @[Conditional.scala 40:58]
  wire  _T_52 = 7'h23 == opcode; // @[Conditional.scala 37:30]
  wire [11:0] _T_56 = {funct7,io_instruc[11:7]}; // @[InstDeco.scala 146:83]
  wire [5:0] _GEN_11 = _T_49 ? 6'hc : 6'h0; // @[Conditional.scala 39:67]
  wire [5:0] _GEN_12 = _T_39 ? 6'hb : _GEN_11; // @[Conditional.scala 39:67]
  wire [5:0] _GEN_13 = _T_38 ? 6'ha : _GEN_12; // @[Conditional.scala 40:58]
  wire  _T_60 = 7'h13 == opcode; // @[Conditional.scala 37:30]
  wire  _T_65 = 3'h3 == funct3; // @[Conditional.scala 37:30]
  wire [4:0] _T_71 = io_instruc[24:20]; // @[InstDeco.scala 187:77]
  wire  _T_75 = 7'h0 == funct7; // @[Conditional.scala 37:30]
  wire  _T_76 = 7'h20 == funct7; // @[Conditional.scala 37:30]
  wire [5:0] _GEN_14 = _T_76 ? 6'h1b : 6'h0; // @[Conditional.scala 39:67]
  wire [5:0] _GEN_15 = _T_75 ? 6'h1a : _GEN_14; // @[Conditional.scala 40:58]
  wire [11:0] _GEN_16 = _T_41 ? $signed({{7{_T_71[4]}},_T_71}) : $signed(_T_27); // @[Conditional.scala 39:67]
  wire [5:0] _GEN_17 = _T_41 ? _GEN_15 : 6'h0; // @[Conditional.scala 39:67]
  wire [11:0] _GEN_18 = _T_39 ? $signed({{7{_T_71[4]}},_T_71}) : $signed(_GEN_16); // @[Conditional.scala 39:67]
  wire [5:0] _GEN_19 = _T_39 ? 6'h19 : _GEN_17; // @[Conditional.scala 39:67]
  wire [5:0] _GEN_20 = _T_43 ? 6'h18 : _GEN_19; // @[Conditional.scala 39:67]
  wire [11:0] _GEN_21 = _T_43 ? $signed(_T_27) : $signed(_GEN_18); // @[Conditional.scala 39:67]
  wire [5:0] _GEN_22 = _T_42 ? 6'h17 : _GEN_20; // @[Conditional.scala 39:67]
  wire [11:0] _GEN_23 = _T_42 ? $signed(_T_27) : $signed(_GEN_21); // @[Conditional.scala 39:67]
  wire [5:0] _GEN_24 = _T_40 ? 6'h16 : _GEN_22; // @[Conditional.scala 39:67]
  wire [11:0] _GEN_25 = _T_40 ? $signed(_T_27) : $signed(_GEN_23); // @[Conditional.scala 39:67]
  wire [5:0] _GEN_26 = _T_65 ? 6'h15 : _GEN_24; // @[Conditional.scala 39:67]
  wire [11:0] _GEN_27 = _T_65 ? $signed(_T_27) : $signed(_GEN_25); // @[Conditional.scala 39:67]
  wire [5:0] _GEN_28 = _T_49 ? 6'h14 : _GEN_26; // @[Conditional.scala 39:67]
  wire [11:0] _GEN_29 = _T_49 ? $signed(_T_27) : $signed(_GEN_27); // @[Conditional.scala 39:67]
  wire [5:0] _GEN_30 = _T_38 ? 6'h13 : _GEN_28; // @[Conditional.scala 40:58]
  wire [11:0] _GEN_31 = _T_38 ? $signed(_T_27) : $signed(_GEN_29); // @[Conditional.scala 40:58]
  wire  _T_77 = 7'h33 == opcode; // @[Conditional.scala 37:30]
  wire  _T_80 = 7'h1 == funct7; // @[Conditional.scala 37:30]
  wire [5:0] _GEN_32 = _T_76 ? 6'h25 : 6'h0; // @[Conditional.scala 39:67]
  wire [5:0] _GEN_33 = _T_80 ? 6'h24 : _GEN_32; // @[Conditional.scala 39:67]
  wire [5:0] _GEN_34 = _T_75 ? 6'h23 : _GEN_33; // @[Conditional.scala 40:58]
  wire [5:0] _GEN_35 = _T_80 ? 6'h27 : 6'h0; // @[Conditional.scala 39:67]
  wire [5:0] _GEN_36 = _T_75 ? 6'h26 : _GEN_35; // @[Conditional.scala 40:58]
  wire [5:0] _GEN_37 = _T_80 ? 6'h29 : 6'h0; // @[Conditional.scala 39:67]
  wire [5:0] _GEN_38 = _T_75 ? 6'h28 : _GEN_37; // @[Conditional.scala 40:58]
  wire [5:0] _GEN_39 = _T_80 ? 6'h2b : 6'h0; // @[Conditional.scala 39:67]
  wire [5:0] _GEN_40 = _T_75 ? 6'h2a : _GEN_39; // @[Conditional.scala 40:58]
  wire [5:0] _GEN_41 = _T_80 ? 6'h2d : 6'h0; // @[Conditional.scala 39:67]
  wire [5:0] _GEN_42 = _T_75 ? 6'h2c : _GEN_41; // @[Conditional.scala 40:58]
  wire [5:0] _GEN_43 = _T_76 ? 6'h30 : 6'h0; // @[Conditional.scala 39:67]
  wire [5:0] _GEN_44 = _T_80 ? 6'h2f : _GEN_43; // @[Conditional.scala 39:67]
  wire [5:0] _GEN_45 = _T_75 ? 6'h2e : _GEN_44; // @[Conditional.scala 40:58]
  wire [5:0] _GEN_46 = _T_80 ? 6'h32 : 6'h0; // @[Conditional.scala 39:67]
  wire [5:0] _GEN_47 = _T_75 ? 6'h31 : _GEN_46; // @[Conditional.scala 40:58]
  wire [5:0] _GEN_48 = _T_80 ? 6'h34 : 6'h0; // @[Conditional.scala 39:67]
  wire [5:0] _GEN_49 = _T_75 ? 6'h33 : _GEN_48; // @[Conditional.scala 40:58]
  wire [5:0] _GEN_50 = _T_43 ? _GEN_49 : 6'h0; // @[Conditional.scala 39:67]
  wire [5:0] _GEN_51 = _T_42 ? _GEN_47 : _GEN_50; // @[Conditional.scala 39:67]
  wire [5:0] _GEN_52 = _T_41 ? _GEN_45 : _GEN_51; // @[Conditional.scala 39:67]
  wire [5:0] _GEN_53 = _T_40 ? _GEN_42 : _GEN_52; // @[Conditional.scala 39:67]
  wire [5:0] _GEN_54 = _T_65 ? _GEN_40 : _GEN_53; // @[Conditional.scala 39:67]
  wire [5:0] _GEN_55 = _T_49 ? _GEN_38 : _GEN_54; // @[Conditional.scala 39:67]
  wire [5:0] _GEN_56 = _T_39 ? _GEN_36 : _GEN_55; // @[Conditional.scala 39:67]
  wire [5:0] _GEN_57 = _T_38 ? _GEN_34 : _GEN_56; // @[Conditional.scala 40:58]
  wire  _T_104 = 7'h73 == opcode; // @[Conditional.scala 37:30]
  wire [31:0] _T_107 = {20'h0,io_instruc[31:20]}; // @[InstDeco.scala 320:68]
  wire [5:0] _GEN_58 = _T_43 ? 6'h22 : 6'h0; // @[Conditional.scala 39:67]
  wire [5:0] _GEN_59 = _T_42 ? 6'h21 : _GEN_58; // @[Conditional.scala 39:67]
  wire [5:0] _GEN_60 = _T_41 ? 6'h20 : _GEN_59; // @[Conditional.scala 39:67]
  wire [5:0] _GEN_61 = _T_65 ? 6'h1f : _GEN_60; // @[Conditional.scala 39:67]
  wire [5:0] _GEN_62 = _T_49 ? 6'h1e : _GEN_61; // @[Conditional.scala 39:67]
  wire [5:0] _GEN_63 = _T_39 ? 6'h1d : _GEN_62; // @[Conditional.scala 39:67]
  wire [5:0] _GEN_64 = _T_38 ? 6'h1c : _GEN_63; // @[Conditional.scala 40:58]
  wire [31:0] _GEN_65 = _T_104 ? $signed(_T_107) : $signed(32'sh0); // @[Conditional.scala 39:67]
  wire [5:0] _GEN_66 = _T_104 ? _GEN_64 : 6'h0; // @[Conditional.scala 39:67]
  wire [5:0] _GEN_67 = _T_77 ? _GEN_57 : _GEN_66; // @[Conditional.scala 39:67]
  wire [31:0] _GEN_68 = _T_77 ? $signed(32'sh0) : $signed(_GEN_65); // @[Conditional.scala 39:67]
  wire [31:0] _GEN_69 = _T_60 ? $signed({{20{_GEN_31[11]}},_GEN_31}) : $signed(_GEN_68); // @[Conditional.scala 39:67]
  wire [5:0] _GEN_70 = _T_60 ? _GEN_30 : _GEN_67; // @[Conditional.scala 39:67]
  wire [31:0] _GEN_71 = _T_52 ? $signed({{20{_T_56[11]}},_T_56}) : $signed(_GEN_69); // @[Conditional.scala 39:67]
  wire [5:0] _GEN_72 = _T_52 ? _GEN_13 : _GEN_70; // @[Conditional.scala 39:67]
  wire [31:0] _GEN_73 = _T_44 ? $signed({{20{_T_27[11]}},_T_27}) : $signed(_GEN_71); // @[Conditional.scala 39:67]
  wire [5:0] _GEN_74 = _T_44 ? _GEN_10 : _GEN_72; // @[Conditional.scala 39:67]
  wire [31:0] _GEN_75 = _T_28 ? $signed({{19{_T_37[12]}},_T_37}) : $signed(_GEN_73); // @[Conditional.scala 39:67]
  wire [5:0] _GEN_76 = _T_28 ? _GEN_5 : _GEN_74; // @[Conditional.scala 39:67]
  wire [5:0] _GEN_77 = _T_25 ? 6'hd : _GEN_76; // @[Conditional.scala 39:67]
  wire [31:0] _GEN_78 = _T_25 ? $signed({{20{_T_27[11]}},_T_27}) : $signed(_GEN_75); // @[Conditional.scala 39:67]
  wire [5:0] _GEN_79 = _T_15 ? 6'h3 : _GEN_77; // @[Conditional.scala 39:67]
  wire [31:0] _GEN_80 = _T_15 ? $signed({{11{_T_24[20]}},_T_24}) : $signed(_GEN_78); // @[Conditional.scala 39:67]
  wire [5:0] _GEN_81 = _T_11 ? 6'h2 : _GEN_79; // @[Conditional.scala 39:67]
  wire [31:0] _GEN_82 = _T_11 ? $signed(_T_10) : $signed(_GEN_80); // @[Conditional.scala 39:67]
  assign io_rd = io_instruc[11:7]; // @[InstDeco.scala 65:14]
  assign io_rs1 = io_instruc[19:15]; // @[InstDeco.scala 68:15]
  assign io_rs2 = io_instruc[24:20]; // @[InstDeco.scala 70:15]
  assign io_imm = _T_7 ? $signed(_T_10) : $signed(_GEN_82); // @[InstDeco.scala 72:15 InstDeco.scala 80:39 InstDeco.scala 84:39 InstDeco.scala 89:39 InstDeco.scala 94:39 InstDeco.scala 99:39 InstDeco.scala 124:39 InstDeco.scala 146:39 InstDeco.scala 162:39 InstDeco.scala 187:55 InstDeco.scala 191:63 InstDeco.scala 320:31]
  assign io_state = _T_7 ? 6'h1 : _GEN_81; // @[InstDeco.scala 63:17 InstDeco.scala 79:41 InstDeco.scala 83:41 InstDeco.scala 88:41 InstDeco.scala 93:41 InstDeco.scala 100:41 InstDeco.scala 104:57 InstDeco.scala 107:57 InstDeco.scala 110:57 InstDeco.scala 113:57 InstDeco.scala 116:57 InstDeco.scala 119:58 InstDeco.scala 125:41 InstDeco.scala 129:57 InstDeco.scala 132:57 InstDeco.scala 135:57 InstDeco.scala 138:57 InstDeco.scala 141:57 InstDeco.scala 147:41 InstDeco.scala 151:57 InstDeco.scala 154:57 InstDeco.scala 157:57 InstDeco.scala 163:41 InstDeco.scala 169:57 InstDeco.scala 172:57 InstDeco.scala 175:57 InstDeco.scala 178:57 InstDeco.scala 181:57 InstDeco.scala 184:57 InstDeco.scala 188:57 InstDeco.scala 192:65 InstDeco.scala 196:81 InstDeco.scala 199:81 InstDeco.scala 206:41 InstDeco.scala 210:65 InstDeco.scala 214:73 InstDeco.scala 217:73 InstDeco.scala 220:73 InstDeco.scala 225:65 InstDeco.scala 229:73 InstDeco.scala 232:73 InstDeco.scala 237:65 InstDeco.scala 241:73 InstDeco.scala 244:73 InstDeco.scala 249:65 InstDeco.scala 253:73 InstDeco.scala 256:73 InstDeco.scala 262:65 InstDeco.scala 266:73 InstDeco.scala 269:73 InstDeco.scala 274:65 InstDeco.scala 278:73 InstDeco.scala 281:73 InstDeco.scala 284:73 InstDeco.scala 290:65 InstDeco.scala 294:73 InstDeco.scala 297:73 InstDeco.scala 305:65 InstDeco.scala 309:73 InstDeco.scala 312:73 InstDeco.scala 321:33 InstDeco.scala 325:57 InstDeco.scala 328:57 InstDeco.scala 331:57 InstDeco.scala 334:57 InstDeco.scala 337:57 InstDeco.scala 340:57 InstDeco.scala 343:57]
endmodule
module ALU(
  input  [5:0]  io_state,
  input  [31:0] io_in1,
  input  [31:0] io_in2,
  output [31:0] io_out
);
  wire [31:0] shifted = io_in1 >> io_in2[4:0]; // @[ALU.scala 19:19]
  wire [31:0] _T_3 = io_in1 + io_in2; // @[ALU.scala 24:20]
  wire [31:0] _T_5 = io_in1 - io_in2; // @[ALU.scala 29:20]
  wire  _T_6 = 6'h26 == io_state; // @[Conditional.scala 37:30]
  wire [62:0] _GEN_21 = {{31'd0}, io_in1}; // @[ALU.scala 38:42]
  wire [62:0] _T_8 = _GEN_21 << io_in2[4:0]; // @[ALU.scala 38:42]
  wire  _T_9 = 6'h19 == io_state; // @[Conditional.scala 37:30]
  wire  _T_12 = 6'h2e == io_state; // @[Conditional.scala 37:30]
  wire  _T_15 = 6'h1a == io_state; // @[Conditional.scala 37:30]
  wire  _T_18 = 6'h30 == io_state; // @[Conditional.scala 37:30]
  wire  _T_20 = ~io_in1[31]; // @[ALU.scala 54:46]
  wire [5:0] _GEN_23 = {{1'd0}, io_in2[4:0]}; // @[ALU.scala 55:82]
  wire [5:0] _T_23 = 6'h20 - _GEN_23; // @[ALU.scala 55:82]
  wire [94:0] _T_24 = 95'hffffffff << _T_23; // @[ALU.scala 55:73]
  wire [94:0] _GEN_24 = {{63'd0}, shifted}; // @[ALU.scala 55:55]
  wire [94:0] _T_25 = _GEN_24 | _T_24; // @[ALU.scala 55:55]
  wire [94:0] _GEN_0 = _T_20 ? {{63'd0}, shifted} : _T_25; // @[ALU.scala 54:54]
  wire  _T_26 = 6'h1b == io_state; // @[Conditional.scala 37:30]
  wire  _T_34 = 6'h23 == io_state; // @[Conditional.scala 37:30]
  wire [32:0] totalsum = {{1'd0}, _T_3}; // @[ALU.scala 23:20 ALU.scala 24:10]
  wire  _T_36 = 6'h13 == io_state; // @[Conditional.scala 37:30]
  wire  _T_38 = 6'h25 == io_state; // @[Conditional.scala 37:30]
  wire [32:0] totalsub = {{1'd0}, _T_5}; // @[ALU.scala 28:20 ALU.scala 29:10]
  wire  _T_40 = 6'h2c == io_state; // @[Conditional.scala 37:30]
  wire [31:0] _T_41 = io_in1 ^ io_in2; // @[ALU.scala 76:42]
  wire  _T_42 = 6'h16 == io_state; // @[Conditional.scala 37:30]
  wire  _T_44 = 6'h31 == io_state; // @[Conditional.scala 37:30]
  wire [31:0] _T_45 = io_in1 | io_in2; // @[ALU.scala 84:42]
  wire  _T_46 = 6'h17 == io_state; // @[Conditional.scala 37:30]
  wire  _T_48 = 6'h33 == io_state; // @[Conditional.scala 37:30]
  wire [31:0] _T_49 = io_in1 & io_in2; // @[ALU.scala 92:42]
  wire  _T_50 = 6'h18 == io_state; // @[Conditional.scala 37:30]
  wire  _T_52 = 6'h28 == io_state; // @[Conditional.scala 37:30]
  wire  _T_55 = $signed(io_in1) < $signed(io_in2); // @[ALU.scala 100:50]
  wire  _T_56 = 6'h14 == io_state; // @[Conditional.scala 37:30]
  wire  _T_60 = 6'h2a == io_state; // @[Conditional.scala 37:30]
  wire  _T_61 = io_in1 < io_in2; // @[ALU.scala 108:46]
  wire  _T_63 = 6'h15 == io_state; // @[Conditional.scala 37:30]
  wire  _GEN_2 = _T_63 & _T_61; // @[Conditional.scala 39:67]
  wire  _GEN_3 = _T_60 ? _T_61 : _GEN_2; // @[Conditional.scala 39:67]
  wire  _GEN_4 = _T_56 ? _T_55 : _GEN_3; // @[Conditional.scala 39:67]
  wire  _GEN_5 = _T_52 ? _T_55 : _GEN_4; // @[Conditional.scala 39:67]
  wire [31:0] _GEN_6 = _T_50 ? _T_49 : {{31'd0}, _GEN_5}; // @[Conditional.scala 39:67]
  wire [31:0] _GEN_7 = _T_48 ? _T_49 : _GEN_6; // @[Conditional.scala 39:67]
  wire [31:0] _GEN_8 = _T_46 ? _T_45 : _GEN_7; // @[Conditional.scala 39:67]
  wire [31:0] _GEN_9 = _T_44 ? _T_45 : _GEN_8; // @[Conditional.scala 39:67]
  wire [31:0] _GEN_10 = _T_42 ? _T_41 : _GEN_9; // @[Conditional.scala 39:67]
  wire [31:0] _GEN_11 = _T_40 ? _T_41 : _GEN_10; // @[Conditional.scala 39:67]
  wire [31:0] _GEN_12 = _T_38 ? totalsub[31:0] : _GEN_11; // @[Conditional.scala 39:67]
  wire [31:0] _GEN_13 = _T_36 ? totalsum[31:0] : _GEN_12; // @[Conditional.scala 39:67]
  wire [31:0] _GEN_14 = _T_34 ? totalsum[31:0] : _GEN_13; // @[Conditional.scala 39:67]
  wire [94:0] _GEN_15 = _T_26 ? _GEN_0 : {{63'd0}, _GEN_14}; // @[Conditional.scala 39:67]
  wire [94:0] _GEN_16 = _T_18 ? _GEN_0 : _GEN_15; // @[Conditional.scala 39:67]
  wire [94:0] _GEN_17 = _T_15 ? {{63'd0}, shifted} : _GEN_16; // @[Conditional.scala 39:67]
  wire [94:0] _GEN_18 = _T_12 ? {{63'd0}, shifted} : _GEN_17; // @[Conditional.scala 39:67]
  wire [94:0] _GEN_19 = _T_9 ? {{32'd0}, _T_8} : _GEN_18; // @[Conditional.scala 39:67]
  wire [94:0] _GEN_20 = _T_6 ? {{32'd0}, _T_8} : _GEN_19; // @[Conditional.scala 40:58]
  assign io_out = _GEN_20[31:0]; // @[ALU.scala 31:8 ALU.scala 38:32 ALU.scala 42:32 ALU.scala 46:32 ALU.scala 50:32 ALU.scala 54:63 ALU.scala 55:44 ALU.scala 59:63 ALU.scala 60:44 ALU.scala 64:32 ALU.scala 68:32 ALU.scala 72:32 ALU.scala 76:32 ALU.scala 80:32 ALU.scala 84:32 ALU.scala 88:32 ALU.scala 92:32 ALU.scala 96:32 ALU.scala 100:32 ALU.scala 104:32 ALU.scala 108:32 ALU.scala 112:32]
endmodule
module InstMem(
  input  [31:0] io_addrI,
  output [31:0] io_instruc
);
  wire  _T = io_addrI == 32'h0; // @[InstMem.scala 14:16]
  wire  _T_1 = io_addrI == 32'h1; // @[InstMem.scala 17:29]
  wire  _T_2 = io_addrI == 32'h2; // @[InstMem.scala 20:29]
  wire  _T_3 = io_addrI == 32'h3; // @[InstMem.scala 23:29]
  wire  _T_4 = io_addrI == 32'h4; // @[InstMem.scala 26:29]
  wire  _T_5 = io_addrI == 32'h5; // @[InstMem.scala 29:29]
  wire  _T_6 = io_addrI == 32'h6; // @[InstMem.scala 32:29]
  wire  _T_7 = io_addrI == 32'h7; // @[InstMem.scala 35:29]
  wire  _T_8 = io_addrI == 32'h8; // @[InstMem.scala 38:29]
  wire  _T_9 = io_addrI == 32'h9; // @[InstMem.scala 41:29]
  wire  _T_10 = io_addrI == 32'ha; // @[InstMem.scala 44:29]
  wire  _T_11 = io_addrI == 32'hb; // @[InstMem.scala 47:29]
  wire  _T_12 = io_addrI == 32'hc; // @[InstMem.scala 50:29]
  wire  _T_13 = io_addrI == 32'hd; // @[InstMem.scala 53:29]
  wire  _T_14 = io_addrI == 32'he; // @[InstMem.scala 56:29]
  wire  _T_15 = io_addrI == 32'hf; // @[InstMem.scala 59:29]
  wire  _T_16 = io_addrI == 32'h10; // @[InstMem.scala 62:29]
  wire  _T_17 = io_addrI == 32'h11; // @[InstMem.scala 65:29]
  wire  _T_18 = io_addrI == 32'h12; // @[InstMem.scala 68:29]
  wire  _T_19 = io_addrI == 32'h13; // @[InstMem.scala 71:29]
  wire  _T_20 = io_addrI == 32'h14; // @[InstMem.scala 74:29]
  wire  _T_21 = io_addrI == 32'h15; // @[InstMem.scala 77:29]
  wire  _T_22 = io_addrI == 32'h16; // @[InstMem.scala 80:29]
  wire  _T_23 = io_addrI == 32'h17; // @[InstMem.scala 83:29]
  wire  _T_24 = io_addrI == 32'h18; // @[InstMem.scala 86:29]
  wire  _T_25 = io_addrI == 32'h19; // @[InstMem.scala 89:29]
  wire  _T_26 = io_addrI == 32'h1a; // @[InstMem.scala 92:29]
  wire  _T_27 = io_addrI == 32'h1b; // @[InstMem.scala 95:29]
  wire  _T_28 = io_addrI == 32'h1c; // @[InstMem.scala 98:29]
  wire  _T_29 = io_addrI == 32'h1d; // @[InstMem.scala 101:29]
  wire  _T_30 = io_addrI == 32'h1e; // @[InstMem.scala 104:29]
  wire  _T_31 = io_addrI == 32'h1f; // @[InstMem.scala 107:29]
  wire [4:0] _GEN_0 = _T_31 ? 5'h13 : 5'h0; // @[InstMem.scala 107:39]
  wire [4:0] _GEN_1 = _T_30 ? 5'h13 : _GEN_0; // @[InstMem.scala 104:39]
  wire [4:0] _GEN_2 = _T_29 ? 5'h13 : _GEN_1; // @[InstMem.scala 101:39]
  wire [4:0] _GEN_3 = _T_28 ? 5'h13 : _GEN_2; // @[InstMem.scala 98:39]
  wire [4:0] _GEN_4 = _T_27 ? 5'h13 : _GEN_3; // @[InstMem.scala 95:39]
  wire [4:0] _GEN_5 = _T_26 ? 5'h13 : _GEN_4; // @[InstMem.scala 92:39]
  wire [4:0] _GEN_6 = _T_25 ? 5'h13 : _GEN_5; // @[InstMem.scala 89:39]
  wire [4:0] _GEN_7 = _T_24 ? 5'h13 : _GEN_6; // @[InstMem.scala 86:39]
  wire [4:0] _GEN_8 = _T_23 ? 5'h13 : _GEN_7; // @[InstMem.scala 83:39]
  wire [4:0] _GEN_9 = _T_22 ? 5'h13 : _GEN_8; // @[InstMem.scala 80:39]
  wire [4:0] _GEN_10 = _T_21 ? 5'h13 : _GEN_9; // @[InstMem.scala 77:39]
  wire [4:0] _GEN_11 = _T_20 ? 5'h13 : _GEN_10; // @[InstMem.scala 74:39]
  wire [4:0] _GEN_12 = _T_19 ? 5'h13 : _GEN_11; // @[InstMem.scala 71:39]
  wire [4:0] _GEN_13 = _T_18 ? 5'h13 : _GEN_12; // @[InstMem.scala 68:39]
  wire [4:0] _GEN_14 = _T_17 ? 5'h13 : _GEN_13; // @[InstMem.scala 65:39]
  wire [4:0] _GEN_15 = _T_16 ? 5'h13 : _GEN_14; // @[InstMem.scala 62:39]
  wire [4:0] _GEN_16 = _T_15 ? 5'h13 : _GEN_15; // @[InstMem.scala 59:39]
  wire [4:0] _GEN_17 = _T_14 ? 5'h13 : _GEN_16; // @[InstMem.scala 56:39]
  wire [4:0] _GEN_18 = _T_13 ? 5'h13 : _GEN_17; // @[InstMem.scala 53:39]
  wire [4:0] _GEN_19 = _T_12 ? 5'h13 : _GEN_18; // @[InstMem.scala 50:39]
  wire [4:0] _GEN_20 = _T_11 ? 5'h13 : _GEN_19; // @[InstMem.scala 47:39]
  wire [4:0] _GEN_21 = _T_10 ? 5'h13 : _GEN_20; // @[InstMem.scala 44:39]
  wire [4:0] _GEN_22 = _T_9 ? 5'h13 : _GEN_21; // @[InstMem.scala 41:38]
  wire [4:0] _GEN_23 = _T_8 ? 5'h13 : _GEN_22; // @[InstMem.scala 38:38]
  wire [20:0] _GEN_24 = _T_7 ? 21'h115313 : {{16'd0}, _GEN_23}; // @[InstMem.scala 35:38]
  wire [20:0] _GEN_25 = _T_6 ? 21'h111293 : _GEN_24; // @[InstMem.scala 32:38]
  wire [20:0] _GEN_26 = _T_5 ? 21'h120233 : _GEN_25; // @[InstMem.scala 29:38]
  wire [20:0] _GEN_27 = _T_4 ? 21'h120233 : _GEN_26; // @[InstMem.scala 26:38]
  wire [21:0] _GEN_28 = _T_3 ? 22'h310233 : {{1'd0}, _GEN_27}; // @[InstMem.scala 23:38]
  wire [21:0] _GEN_29 = _T_2 ? 22'h300193 : _GEN_28; // @[InstMem.scala 20:38]
  wire [21:0] _GEN_30 = _T_1 ? 22'h200113 : _GEN_29; // @[InstMem.scala 17:38]
  wire [21:0] _GEN_31 = _T ? 22'h100093 : _GEN_30; // @[InstMem.scala 14:24]
  assign io_instruc = {{10'd0}, _GEN_31}; // @[InstMem.scala 12:11 InstMem.scala 15:20 InstMem.scala 18:20 InstMem.scala 21:20 InstMem.scala 24:20 InstMem.scala 27:20 InstMem.scala 30:20 InstMem.scala 33:20 InstMem.scala 36:20 InstMem.scala 39:20 InstMem.scala 42:20 InstMem.scala 45:20 InstMem.scala 48:20 InstMem.scala 51:20 InstMem.scala 54:20 InstMem.scala 57:20 InstMem.scala 60:20 InstMem.scala 63:20 InstMem.scala 66:20 InstMem.scala 69:20 InstMem.scala 72:20 InstMem.scala 75:20 InstMem.scala 78:20 InstMem.scala 81:20 InstMem.scala 84:20 InstMem.scala 87:20 InstMem.scala 90:20 InstMem.scala 93:20 InstMem.scala 96:20 InstMem.scala 99:20 InstMem.scala 102:20 InstMem.scala 105:20 InstMem.scala 108:20]
endmodule
module TOP(
  input         clock,
  input         reset,
  input         io_reset,
  output [31:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
`endif // RANDOMIZE_REG_INIT
  wire [31:0] InstDeco_io_instruc; // @[TOP.scala 15:30]
  wire [4:0] InstDeco_io_rd; // @[TOP.scala 15:30]
  wire [4:0] InstDeco_io_rs1; // @[TOP.scala 15:30]
  wire [4:0] InstDeco_io_rs2; // @[TOP.scala 15:30]
  wire [31:0] InstDeco_io_imm; // @[TOP.scala 15:30]
  wire [5:0] InstDeco_io_state; // @[TOP.scala 15:30]
  wire [5:0] ALU_io_state; // @[TOP.scala 16:25]
  wire [31:0] ALU_io_in1; // @[TOP.scala 16:25]
  wire [31:0] ALU_io_in2; // @[TOP.scala 16:25]
  wire [31:0] ALU_io_out; // @[TOP.scala 16:25]
  wire [31:0] InstMem_io_addrI; // @[TOP.scala 17:29]
  wire [31:0] InstMem_io_instruc; // @[TOP.scala 17:29]
  reg [31:0] addrI; // @[TOP.scala 20:28]
  reg [31:0] RegOfVec_0; // @[TOP.scala 23:31]
  reg [31:0] RegOfVec_1; // @[TOP.scala 23:31]
  reg [31:0] RegOfVec_2; // @[TOP.scala 23:31]
  reg [31:0] RegOfVec_3; // @[TOP.scala 23:31]
  reg [31:0] RegOfVec_4; // @[TOP.scala 23:31]
  reg [31:0] RegOfVec_5; // @[TOP.scala 23:31]
  reg [31:0] RegOfVec_6; // @[TOP.scala 23:31]
  reg [31:0] RegOfVec_7; // @[TOP.scala 23:31]
  reg [31:0] RegOfVec_8; // @[TOP.scala 23:31]
  reg [31:0] RegOfVec_9; // @[TOP.scala 23:31]
  reg [31:0] RegOfVec_10; // @[TOP.scala 23:31]
  reg [31:0] RegOfVec_11; // @[TOP.scala 23:31]
  reg [31:0] RegOfVec_12; // @[TOP.scala 23:31]
  reg [31:0] RegOfVec_13; // @[TOP.scala 23:31]
  reg [31:0] RegOfVec_14; // @[TOP.scala 23:31]
  reg [31:0] RegOfVec_15; // @[TOP.scala 23:31]
  reg [31:0] RegOfVec_16; // @[TOP.scala 23:31]
  reg [31:0] RegOfVec_17; // @[TOP.scala 23:31]
  reg [31:0] RegOfVec_18; // @[TOP.scala 23:31]
  reg [31:0] RegOfVec_19; // @[TOP.scala 23:31]
  reg [31:0] RegOfVec_20; // @[TOP.scala 23:31]
  reg [31:0] RegOfVec_21; // @[TOP.scala 23:31]
  reg [31:0] RegOfVec_22; // @[TOP.scala 23:31]
  reg [31:0] RegOfVec_23; // @[TOP.scala 23:31]
  reg [31:0] RegOfVec_24; // @[TOP.scala 23:31]
  reg [31:0] RegOfVec_25; // @[TOP.scala 23:31]
  reg [31:0] RegOfVec_26; // @[TOP.scala 23:31]
  reg [31:0] RegOfVec_27; // @[TOP.scala 23:31]
  reg [31:0] RegOfVec_28; // @[TOP.scala 23:31]
  reg [31:0] RegOfVec_29; // @[TOP.scala 23:31]
  reg [31:0] RegOfVec_30; // @[TOP.scala 23:31]
  reg [31:0] RegOfVec_31; // @[TOP.scala 23:31]
  wire [31:0] _T_2 = addrI + 32'h1; // @[TOP.scala 35:24]
  wire [31:0] _GEN_1 = 5'h1 == InstDeco_io_rs1 ? RegOfVec_1 : RegOfVec_0; // @[TOP.scala 39:22]
  wire [31:0] _GEN_2 = 5'h2 == InstDeco_io_rs1 ? RegOfVec_2 : _GEN_1; // @[TOP.scala 39:22]
  wire [31:0] _GEN_3 = 5'h3 == InstDeco_io_rs1 ? RegOfVec_3 : _GEN_2; // @[TOP.scala 39:22]
  wire [31:0] _GEN_4 = 5'h4 == InstDeco_io_rs1 ? RegOfVec_4 : _GEN_3; // @[TOP.scala 39:22]
  wire [31:0] _GEN_5 = 5'h5 == InstDeco_io_rs1 ? RegOfVec_5 : _GEN_4; // @[TOP.scala 39:22]
  wire [31:0] _GEN_6 = 5'h6 == InstDeco_io_rs1 ? RegOfVec_6 : _GEN_5; // @[TOP.scala 39:22]
  wire [31:0] _GEN_7 = 5'h7 == InstDeco_io_rs1 ? RegOfVec_7 : _GEN_6; // @[TOP.scala 39:22]
  wire [31:0] _GEN_8 = 5'h8 == InstDeco_io_rs1 ? RegOfVec_8 : _GEN_7; // @[TOP.scala 39:22]
  wire [31:0] _GEN_9 = 5'h9 == InstDeco_io_rs1 ? RegOfVec_9 : _GEN_8; // @[TOP.scala 39:22]
  wire [31:0] _GEN_10 = 5'ha == InstDeco_io_rs1 ? RegOfVec_10 : _GEN_9; // @[TOP.scala 39:22]
  wire [31:0] _GEN_11 = 5'hb == InstDeco_io_rs1 ? RegOfVec_11 : _GEN_10; // @[TOP.scala 39:22]
  wire [31:0] _GEN_12 = 5'hc == InstDeco_io_rs1 ? RegOfVec_12 : _GEN_11; // @[TOP.scala 39:22]
  wire [31:0] _GEN_13 = 5'hd == InstDeco_io_rs1 ? RegOfVec_13 : _GEN_12; // @[TOP.scala 39:22]
  wire [31:0] _GEN_14 = 5'he == InstDeco_io_rs1 ? RegOfVec_14 : _GEN_13; // @[TOP.scala 39:22]
  wire [31:0] _GEN_15 = 5'hf == InstDeco_io_rs1 ? RegOfVec_15 : _GEN_14; // @[TOP.scala 39:22]
  wire [31:0] _GEN_16 = 5'h10 == InstDeco_io_rs1 ? RegOfVec_16 : _GEN_15; // @[TOP.scala 39:22]
  wire [31:0] _GEN_17 = 5'h11 == InstDeco_io_rs1 ? RegOfVec_17 : _GEN_16; // @[TOP.scala 39:22]
  wire [31:0] _GEN_18 = 5'h12 == InstDeco_io_rs1 ? RegOfVec_18 : _GEN_17; // @[TOP.scala 39:22]
  wire [31:0] _GEN_19 = 5'h13 == InstDeco_io_rs1 ? RegOfVec_19 : _GEN_18; // @[TOP.scala 39:22]
  wire [31:0] _GEN_20 = 5'h14 == InstDeco_io_rs1 ? RegOfVec_20 : _GEN_19; // @[TOP.scala 39:22]
  wire [31:0] _GEN_21 = 5'h15 == InstDeco_io_rs1 ? RegOfVec_21 : _GEN_20; // @[TOP.scala 39:22]
  wire [31:0] _GEN_22 = 5'h16 == InstDeco_io_rs1 ? RegOfVec_22 : _GEN_21; // @[TOP.scala 39:22]
  wire [31:0] _GEN_23 = 5'h17 == InstDeco_io_rs1 ? RegOfVec_23 : _GEN_22; // @[TOP.scala 39:22]
  wire [31:0] _GEN_24 = 5'h18 == InstDeco_io_rs1 ? RegOfVec_24 : _GEN_23; // @[TOP.scala 39:22]
  wire [31:0] _GEN_25 = 5'h19 == InstDeco_io_rs1 ? RegOfVec_25 : _GEN_24; // @[TOP.scala 39:22]
  wire [31:0] _GEN_26 = 5'h1a == InstDeco_io_rs1 ? RegOfVec_26 : _GEN_25; // @[TOP.scala 39:22]
  wire [31:0] _GEN_27 = 5'h1b == InstDeco_io_rs1 ? RegOfVec_27 : _GEN_26; // @[TOP.scala 39:22]
  wire [31:0] _GEN_28 = 5'h1c == InstDeco_io_rs1 ? RegOfVec_28 : _GEN_27; // @[TOP.scala 39:22]
  wire [31:0] _GEN_29 = 5'h1d == InstDeco_io_rs1 ? RegOfVec_29 : _GEN_28; // @[TOP.scala 39:22]
  wire [31:0] _GEN_30 = 5'h1e == InstDeco_io_rs1 ? RegOfVec_30 : _GEN_29; // @[TOP.scala 39:22]
  wire  _T_3 = InstDeco_io_state == 6'h26; // @[TOP.scala 40:46]
  wire  _T_4 = InstDeco_io_state == 6'h2e; // @[TOP.scala 40:77]
  wire  _T_5 = _T_3 | _T_4; // @[TOP.scala 40:57]
  wire  _T_6 = InstDeco_io_state == 6'h30; // @[TOP.scala 40:108]
  wire  _T_7 = _T_5 | _T_6; // @[TOP.scala 40:88]
  wire  _T_8 = InstDeco_io_state == 6'h23; // @[TOP.scala 40:139]
  wire  _T_9 = _T_7 | _T_8; // @[TOP.scala 40:119]
  wire  _T_10 = InstDeco_io_state == 6'h25; // @[TOP.scala 40:170]
  wire  _T_11 = _T_9 | _T_10; // @[TOP.scala 40:150]
  wire  _T_12 = InstDeco_io_state == 6'h2c; // @[TOP.scala 40:201]
  wire  _T_13 = _T_11 | _T_12; // @[TOP.scala 40:181]
  wire  _T_14 = InstDeco_io_state == 6'h31; // @[TOP.scala 40:232]
  wire  _T_15 = _T_13 | _T_14; // @[TOP.scala 40:212]
  wire  _T_16 = InstDeco_io_state == 6'h33; // @[TOP.scala 40:262]
  wire  _T_17 = _T_15 | _T_16; // @[TOP.scala 40:242]
  wire  _T_18 = InstDeco_io_state == 6'h28; // @[TOP.scala 40:293]
  wire  _T_19 = _T_17 | _T_18; // @[TOP.scala 40:273]
  wire  _T_20 = InstDeco_io_state == 6'h2a; // @[TOP.scala 40:324]
  wire  _T_21 = _T_19 | _T_20; // @[TOP.scala 40:304]
  wire [31:0] _GEN_33 = 5'h1 == InstDeco_io_rs2 ? RegOfVec_1 : RegOfVec_0; // @[TOP.scala 40:28]
  wire [31:0] _GEN_34 = 5'h2 == InstDeco_io_rs2 ? RegOfVec_2 : _GEN_33; // @[TOP.scala 40:28]
  wire [31:0] _GEN_35 = 5'h3 == InstDeco_io_rs2 ? RegOfVec_3 : _GEN_34; // @[TOP.scala 40:28]
  wire [31:0] _GEN_36 = 5'h4 == InstDeco_io_rs2 ? RegOfVec_4 : _GEN_35; // @[TOP.scala 40:28]
  wire [31:0] _GEN_37 = 5'h5 == InstDeco_io_rs2 ? RegOfVec_5 : _GEN_36; // @[TOP.scala 40:28]
  wire [31:0] _GEN_38 = 5'h6 == InstDeco_io_rs2 ? RegOfVec_6 : _GEN_37; // @[TOP.scala 40:28]
  wire [31:0] _GEN_39 = 5'h7 == InstDeco_io_rs2 ? RegOfVec_7 : _GEN_38; // @[TOP.scala 40:28]
  wire [31:0] _GEN_40 = 5'h8 == InstDeco_io_rs2 ? RegOfVec_8 : _GEN_39; // @[TOP.scala 40:28]
  wire [31:0] _GEN_41 = 5'h9 == InstDeco_io_rs2 ? RegOfVec_9 : _GEN_40; // @[TOP.scala 40:28]
  wire [31:0] _GEN_42 = 5'ha == InstDeco_io_rs2 ? RegOfVec_10 : _GEN_41; // @[TOP.scala 40:28]
  wire [31:0] _GEN_43 = 5'hb == InstDeco_io_rs2 ? RegOfVec_11 : _GEN_42; // @[TOP.scala 40:28]
  wire [31:0] _GEN_44 = 5'hc == InstDeco_io_rs2 ? RegOfVec_12 : _GEN_43; // @[TOP.scala 40:28]
  wire [31:0] _GEN_45 = 5'hd == InstDeco_io_rs2 ? RegOfVec_13 : _GEN_44; // @[TOP.scala 40:28]
  wire [31:0] _GEN_46 = 5'he == InstDeco_io_rs2 ? RegOfVec_14 : _GEN_45; // @[TOP.scala 40:28]
  wire [31:0] _GEN_47 = 5'hf == InstDeco_io_rs2 ? RegOfVec_15 : _GEN_46; // @[TOP.scala 40:28]
  wire [31:0] _GEN_48 = 5'h10 == InstDeco_io_rs2 ? RegOfVec_16 : _GEN_47; // @[TOP.scala 40:28]
  wire [31:0] _GEN_49 = 5'h11 == InstDeco_io_rs2 ? RegOfVec_17 : _GEN_48; // @[TOP.scala 40:28]
  wire [31:0] _GEN_50 = 5'h12 == InstDeco_io_rs2 ? RegOfVec_18 : _GEN_49; // @[TOP.scala 40:28]
  wire [31:0] _GEN_51 = 5'h13 == InstDeco_io_rs2 ? RegOfVec_19 : _GEN_50; // @[TOP.scala 40:28]
  wire [31:0] _GEN_52 = 5'h14 == InstDeco_io_rs2 ? RegOfVec_20 : _GEN_51; // @[TOP.scala 40:28]
  wire [31:0] _GEN_53 = 5'h15 == InstDeco_io_rs2 ? RegOfVec_21 : _GEN_52; // @[TOP.scala 40:28]
  wire [31:0] _GEN_54 = 5'h16 == InstDeco_io_rs2 ? RegOfVec_22 : _GEN_53; // @[TOP.scala 40:28]
  wire [31:0] _GEN_55 = 5'h17 == InstDeco_io_rs2 ? RegOfVec_23 : _GEN_54; // @[TOP.scala 40:28]
  wire [31:0] _GEN_56 = 5'h18 == InstDeco_io_rs2 ? RegOfVec_24 : _GEN_55; // @[TOP.scala 40:28]
  wire [31:0] _GEN_57 = 5'h19 == InstDeco_io_rs2 ? RegOfVec_25 : _GEN_56; // @[TOP.scala 40:28]
  wire [31:0] _GEN_58 = 5'h1a == InstDeco_io_rs2 ? RegOfVec_26 : _GEN_57; // @[TOP.scala 40:28]
  wire [31:0] _GEN_59 = 5'h1b == InstDeco_io_rs2 ? RegOfVec_27 : _GEN_58; // @[TOP.scala 40:28]
  wire [31:0] _GEN_60 = 5'h1c == InstDeco_io_rs2 ? RegOfVec_28 : _GEN_59; // @[TOP.scala 40:28]
  wire [31:0] _GEN_61 = 5'h1d == InstDeco_io_rs2 ? RegOfVec_29 : _GEN_60; // @[TOP.scala 40:28]
  wire [31:0] _GEN_62 = 5'h1e == InstDeco_io_rs2 ? RegOfVec_30 : _GEN_61; // @[TOP.scala 40:28]
  wire [31:0] _GEN_63 = 5'h1f == InstDeco_io_rs2 ? RegOfVec_31 : _GEN_62; // @[TOP.scala 40:28]
  wire [31:0] _RegOfVec_InstDeco_io_rd = ALU_io_out; // @[TOP.scala 44:34 TOP.scala 44:34]
  InstDeco InstDeco ( // @[TOP.scala 15:30]
    .io_instruc(InstDeco_io_instruc),
    .io_rd(InstDeco_io_rd),
    .io_rs1(InstDeco_io_rs1),
    .io_rs2(InstDeco_io_rs2),
    .io_imm(InstDeco_io_imm),
    .io_state(InstDeco_io_state)
  );
  ALU ALU ( // @[TOP.scala 16:25]
    .io_state(ALU_io_state),
    .io_in1(ALU_io_in1),
    .io_in2(ALU_io_in2),
    .io_out(ALU_io_out)
  );
  InstMem InstMem ( // @[TOP.scala 17:29]
    .io_addrI(InstMem_io_addrI),
    .io_instruc(InstMem_io_instruc)
  );
  assign io_out = ALU_io_out; // @[TOP.scala 41:22]
  assign InstDeco_io_instruc = InstMem_io_instruc; // @[TOP.scala 32:29]
  assign ALU_io_state = InstDeco_io_state; // @[TOP.scala 38:22]
  assign ALU_io_in1 = 5'h1f == InstDeco_io_rs1 ? RegOfVec_31 : _GEN_30; // @[TOP.scala 39:22]
  assign ALU_io_in2 = _T_21 ? _GEN_63 : InstDeco_io_imm; // @[TOP.scala 40:22]
  assign InstMem_io_addrI = addrI; // @[TOP.scala 29:26]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  addrI = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  RegOfVec_0 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  RegOfVec_1 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  RegOfVec_2 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  RegOfVec_3 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  RegOfVec_4 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  RegOfVec_5 = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  RegOfVec_6 = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  RegOfVec_7 = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  RegOfVec_8 = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  RegOfVec_9 = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  RegOfVec_10 = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  RegOfVec_11 = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  RegOfVec_12 = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  RegOfVec_13 = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  RegOfVec_14 = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  RegOfVec_15 = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  RegOfVec_16 = _RAND_17[31:0];
  _RAND_18 = {1{`RANDOM}};
  RegOfVec_17 = _RAND_18[31:0];
  _RAND_19 = {1{`RANDOM}};
  RegOfVec_18 = _RAND_19[31:0];
  _RAND_20 = {1{`RANDOM}};
  RegOfVec_19 = _RAND_20[31:0];
  _RAND_21 = {1{`RANDOM}};
  RegOfVec_20 = _RAND_21[31:0];
  _RAND_22 = {1{`RANDOM}};
  RegOfVec_21 = _RAND_22[31:0];
  _RAND_23 = {1{`RANDOM}};
  RegOfVec_22 = _RAND_23[31:0];
  _RAND_24 = {1{`RANDOM}};
  RegOfVec_23 = _RAND_24[31:0];
  _RAND_25 = {1{`RANDOM}};
  RegOfVec_24 = _RAND_25[31:0];
  _RAND_26 = {1{`RANDOM}};
  RegOfVec_25 = _RAND_26[31:0];
  _RAND_27 = {1{`RANDOM}};
  RegOfVec_26 = _RAND_27[31:0];
  _RAND_28 = {1{`RANDOM}};
  RegOfVec_27 = _RAND_28[31:0];
  _RAND_29 = {1{`RANDOM}};
  RegOfVec_28 = _RAND_29[31:0];
  _RAND_30 = {1{`RANDOM}};
  RegOfVec_29 = _RAND_30[31:0];
  _RAND_31 = {1{`RANDOM}};
  RegOfVec_30 = _RAND_31[31:0];
  _RAND_32 = {1{`RANDOM}};
  RegOfVec_31 = _RAND_32[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      addrI <= 32'h0;
    end else begin
      addrI <= _T_2;
    end
    if (reset) begin
      RegOfVec_0 <= 32'h0;
    end else if (5'h0 == InstDeco_io_rd) begin
      RegOfVec_0 <= _RegOfVec_InstDeco_io_rd;
    end
    if (reset) begin
      RegOfVec_1 <= 32'h0;
    end else if (5'h1 == InstDeco_io_rd) begin
      RegOfVec_1 <= _RegOfVec_InstDeco_io_rd;
    end
    if (reset) begin
      RegOfVec_2 <= 32'h0;
    end else if (5'h2 == InstDeco_io_rd) begin
      RegOfVec_2 <= _RegOfVec_InstDeco_io_rd;
    end
    if (reset) begin
      RegOfVec_3 <= 32'h0;
    end else if (5'h3 == InstDeco_io_rd) begin
      RegOfVec_3 <= _RegOfVec_InstDeco_io_rd;
    end
    if (reset) begin
      RegOfVec_4 <= 32'h0;
    end else if (5'h4 == InstDeco_io_rd) begin
      RegOfVec_4 <= _RegOfVec_InstDeco_io_rd;
    end
    if (reset) begin
      RegOfVec_5 <= 32'h0;
    end else if (5'h5 == InstDeco_io_rd) begin
      RegOfVec_5 <= _RegOfVec_InstDeco_io_rd;
    end
    if (reset) begin
      RegOfVec_6 <= 32'h0;
    end else if (5'h6 == InstDeco_io_rd) begin
      RegOfVec_6 <= _RegOfVec_InstDeco_io_rd;
    end
    if (reset) begin
      RegOfVec_7 <= 32'h0;
    end else if (5'h7 == InstDeco_io_rd) begin
      RegOfVec_7 <= _RegOfVec_InstDeco_io_rd;
    end
    if (reset) begin
      RegOfVec_8 <= 32'h0;
    end else if (5'h8 == InstDeco_io_rd) begin
      RegOfVec_8 <= _RegOfVec_InstDeco_io_rd;
    end
    if (reset) begin
      RegOfVec_9 <= 32'h0;
    end else if (5'h9 == InstDeco_io_rd) begin
      RegOfVec_9 <= _RegOfVec_InstDeco_io_rd;
    end
    if (reset) begin
      RegOfVec_10 <= 32'h0;
    end else if (5'ha == InstDeco_io_rd) begin
      RegOfVec_10 <= _RegOfVec_InstDeco_io_rd;
    end
    if (reset) begin
      RegOfVec_11 <= 32'h0;
    end else if (5'hb == InstDeco_io_rd) begin
      RegOfVec_11 <= _RegOfVec_InstDeco_io_rd;
    end
    if (reset) begin
      RegOfVec_12 <= 32'h0;
    end else if (5'hc == InstDeco_io_rd) begin
      RegOfVec_12 <= _RegOfVec_InstDeco_io_rd;
    end
    if (reset) begin
      RegOfVec_13 <= 32'h0;
    end else if (5'hd == InstDeco_io_rd) begin
      RegOfVec_13 <= _RegOfVec_InstDeco_io_rd;
    end
    if (reset) begin
      RegOfVec_14 <= 32'h0;
    end else if (5'he == InstDeco_io_rd) begin
      RegOfVec_14 <= _RegOfVec_InstDeco_io_rd;
    end
    if (reset) begin
      RegOfVec_15 <= 32'h0;
    end else if (5'hf == InstDeco_io_rd) begin
      RegOfVec_15 <= _RegOfVec_InstDeco_io_rd;
    end
    if (reset) begin
      RegOfVec_16 <= 32'h0;
    end else if (5'h10 == InstDeco_io_rd) begin
      RegOfVec_16 <= _RegOfVec_InstDeco_io_rd;
    end
    if (reset) begin
      RegOfVec_17 <= 32'h0;
    end else if (5'h11 == InstDeco_io_rd) begin
      RegOfVec_17 <= _RegOfVec_InstDeco_io_rd;
    end
    if (reset) begin
      RegOfVec_18 <= 32'h0;
    end else if (5'h12 == InstDeco_io_rd) begin
      RegOfVec_18 <= _RegOfVec_InstDeco_io_rd;
    end
    if (reset) begin
      RegOfVec_19 <= 32'h0;
    end else if (5'h13 == InstDeco_io_rd) begin
      RegOfVec_19 <= _RegOfVec_InstDeco_io_rd;
    end
    if (reset) begin
      RegOfVec_20 <= 32'h0;
    end else if (5'h14 == InstDeco_io_rd) begin
      RegOfVec_20 <= _RegOfVec_InstDeco_io_rd;
    end
    if (reset) begin
      RegOfVec_21 <= 32'h0;
    end else if (5'h15 == InstDeco_io_rd) begin
      RegOfVec_21 <= _RegOfVec_InstDeco_io_rd;
    end
    if (reset) begin
      RegOfVec_22 <= 32'h0;
    end else if (5'h16 == InstDeco_io_rd) begin
      RegOfVec_22 <= _RegOfVec_InstDeco_io_rd;
    end
    if (reset) begin
      RegOfVec_23 <= 32'h0;
    end else if (5'h17 == InstDeco_io_rd) begin
      RegOfVec_23 <= _RegOfVec_InstDeco_io_rd;
    end
    if (reset) begin
      RegOfVec_24 <= 32'h0;
    end else if (5'h18 == InstDeco_io_rd) begin
      RegOfVec_24 <= _RegOfVec_InstDeco_io_rd;
    end
    if (reset) begin
      RegOfVec_25 <= 32'h0;
    end else if (5'h19 == InstDeco_io_rd) begin
      RegOfVec_25 <= _RegOfVec_InstDeco_io_rd;
    end
    if (reset) begin
      RegOfVec_26 <= 32'h0;
    end else if (5'h1a == InstDeco_io_rd) begin
      RegOfVec_26 <= _RegOfVec_InstDeco_io_rd;
    end
    if (reset) begin
      RegOfVec_27 <= 32'h0;
    end else if (5'h1b == InstDeco_io_rd) begin
      RegOfVec_27 <= _RegOfVec_InstDeco_io_rd;
    end
    if (reset) begin
      RegOfVec_28 <= 32'h0;
    end else if (5'h1c == InstDeco_io_rd) begin
      RegOfVec_28 <= _RegOfVec_InstDeco_io_rd;
    end
    if (reset) begin
      RegOfVec_29 <= 32'h0;
    end else if (5'h1d == InstDeco_io_rd) begin
      RegOfVec_29 <= _RegOfVec_InstDeco_io_rd;
    end
    if (reset) begin
      RegOfVec_30 <= 32'h0;
    end else if (5'h1e == InstDeco_io_rd) begin
      RegOfVec_30 <= _RegOfVec_InstDeco_io_rd;
    end
    if (reset) begin
      RegOfVec_31 <= 32'h0;
    end else if (5'h1f == InstDeco_io_rd) begin
      RegOfVec_31 <= _RegOfVec_InstDeco_io_rd;
    end
  end
endmodule
