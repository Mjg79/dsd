module JH512 (
	input clk,
	input [1023:0] state,
	input [127:0] data,
	output [511:0] hash
);

	reg [127:0] data_le;

	reg [127:0] d00,d01,d02,d03,d04,d05,d06,d07,d08,d09;
	reg [127:0] d10,d11,d12,d13,d14,d15,d16,d17,d18,d19;
	reg [127:0] d20,d21,d22,d23,d24,d25,d26,d27,d28,d29;
	reg [127:0] d30,d31,d32,d33,d34,d35,d36,d37,d38,d39;
	reg [127:0] d40,d41,d42,d43,d44,d45;

	reg [1023:0] H00, H01, H10, H11;
	reg [511:0]  H20, H21;
	assign hash = H21;
	
	wire [1023:0] state0, state1;
	
	F8 F8_0 (clk, H01, state0);
	F8 F8_1 (clk, H11, state1);

	always @ ( posedge clk ) begin

		data_le <= { // 384'h000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000080,
						data[  7:  0],
						data[ 15:  8],
						data[ 23: 16],
						data[ 31: 24],
						data[ 39: 32],
						data[ 47: 40],
						data[ 55: 48],
						data[ 63: 56],
						data[ 71: 64],
						data[ 79: 72],
						data[ 87: 80],
						data[ 95: 88],
						data[103: 96],
						data[111:104],
						data[119:112],
						data[127:120] };

		H00 <= state;

		H01[1023:136] <= H00[1023:136];
		H01[ 135:128] <= H00[ 135:128] ^ 8'h80;
		H01[ 127:  0] <= H00[ 127:  0] ^ data_le[127:0];

		H10 <= state0;

		H11[1023:648] <= H10[1023:648];
		H11[ 647:640] <= H10[ 647:640] ^ 8'h80;
		H11[ 639:512] <= H10[ 639:512] ^ d45;
		H11[ 511:496] <= H10[ 511:496] ^ 16'h8002;
		H11[ 495:  0] <= H10[ 495:  0];

//		data1 <= 512'h80020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;

		H20 <= state1[1023:512];

		H21[  7:  0] <= H20[511:504] ^ 8'h80;
		H21[ 15:  8] <= H20[503:496] ^ 8'h02;
		H21[ 23: 16] <= H20[495:488];
		H21[ 31: 24] <= H20[487:480];
		H21[ 39: 32] <= H20[479:472];
		H21[ 47: 40] <= H20[471:464];
		H21[ 55: 48] <= H20[463:456];
		H21[ 63: 56] <= H20[455:448];
		H21[ 71: 64] <= H20[447:440];
		H21[ 79: 72] <= H20[439:432];
		H21[ 87: 80] <= H20[431:424];
		H21[ 95: 88] <= H20[423:416];
		H21[103: 96] <= H20[415:408];
		H21[111:104] <= H20[407:400];
		H21[119:112] <= H20[399:392];
		H21[127:120] <= H20[391:384];
		H21[135:128] <= H20[383:376];
		H21[143:136] <= H20[375:368];
		H21[151:144] <= H20[367:360];
		H21[159:152] <= H20[359:352];
		H21[167:160] <= H20[351:344];
		H21[175:168] <= H20[343:336];
		H21[183:176] <= H20[335:328];
		H21[191:184] <= H20[327:320];
		H21[199:192] <= H20[319:312];
		H21[207:200] <= H20[311:304];
		H21[215:208] <= H20[303:296];
		H21[223:216] <= H20[295:288];
		H21[231:224] <= H20[287:280];
		H21[239:232] <= H20[279:272];
		H21[247:240] <= H20[271:264];
		H21[255:248] <= H20[263:256];
		H21[263:256] <= H20[255:248];
		H21[271:264] <= H20[247:240];
		H21[279:272] <= H20[239:232];
		H21[287:280] <= H20[231:224];
		H21[295:288] <= H20[223:216];
		H21[303:296] <= H20[215:208];
		H21[311:304] <= H20[207:200];
		H21[319:312] <= H20[199:192];
		H21[327:320] <= H20[191:184];
		H21[335:328] <= H20[183:176];
		H21[343:336] <= H20[175:168];
		H21[351:344] <= H20[167:160];
		H21[359:352] <= H20[159:152];
		H21[367:360] <= H20[151:144];
		H21[375:368] <= H20[143:136];
		H21[383:376] <= H20[135:128];
		H21[391:384] <= H20[127:120];
		H21[399:392] <= H20[119:112];
		H21[407:400] <= H20[111:104];
		H21[415:408] <= H20[103: 96];
		H21[423:416] <= H20[ 95: 88];
		H21[431:424] <= H20[ 87: 80];
		H21[439:432] <= H20[ 79: 72];
		H21[447:440] <= H20[ 71: 64];
		H21[455:448] <= H20[ 63: 56];
		H21[463:456] <= H20[ 55: 48];
		H21[471:464] <= H20[ 47: 40];
		H21[479:472] <= H20[ 39: 32];
		H21[487:480] <= H20[ 31: 24];
		H21[495:488] <= H20[ 23: 16];
		H21[503:496] <= H20[ 15:  8];
		H21[511:504] <= H20[  7:  0];

		d45 <= d44;
		d44 <= d43;
		d43 <= d42;
		d42 <= d41;
		d41 <= d40;
		d40 <= d39;
		d39 <= d38;
		d38 <= d37;
		d37 <= d36;
		d36 <= d35;
		d35 <= d34;
		d34 <= d33;
		d33 <= d32;
		d32 <= d31;
		d31 <= d30;
		d30 <= d29;
		d29 <= d28;
		d28 <= d27;
		d27 <= d26;
		d26 <= d25;
		d25 <= d24;
		d24 <= d23;
		d23 <= d22;
		d22 <= d21;
		d21 <= d20;
		d20 <= d19;
		d19 <= d18;
		d18 <= d17;
		d17 <= d16;
		d16 <= d15;
		d15 <= d14;
		d14 <= d13;
		d13 <= d12;
		d12 <= d11;
		d11 <= d10;
		d10 <= d09;
		d09 <= d08;
		d08 <= d07;
		d07 <= d06;
		d06 <= d05;
		d05 <= d04;
		d04 <= d03;
		d03 <= d02;
		d02 <= d01;
		d01 <= d00;
		d00 <= data_le[127:0];

	end
	
endmodule

