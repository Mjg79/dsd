`include "jh-round-a.v"
`include "jh-round-b.v"
`include "jh-init.v"
`include "jh-final.v"

module F8 (
	input clk,
	input [1023:0] state_in,
	output reg [1023:0] state_out
);

	reg [255:0] R;
	reg [1023:0] i;
	wire [1023:0] i0,f0;

	wire [1023:0] a00,a01,a02,a03,a04,a05,a06,a07,a08,a09;
	wire [1023:0] a10,a11,a12,a13,a14,a15,a16,a17,a18,a19;
	wire [1023:0] a20,a21,a22,a23,a24,a25,a26,a27,a28,a29;
	wire [1023:0] a30,a31,a32,a33,a34,a35,a36,a37,a38,a39,a40,a41;
	
	wire [255:0] r00,r01,r02,r03,r04,r05,r06,r07,r08,r09;
	wire [255:0] r10,r11,r12,r13,r14,r15,r16,r17,r18,r19;
	wire [255:0] r20,r21,r22,r23,r24,r25,r26,r27,r28,r29;
	wire [255:0] r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41;

	reg [1023:0] a00x,a01x,a02x,a03x,a04x,a05x,a06x,a07x,a08x,a09x;
	reg [1023:0] a10x,a11x,a12x,a13x,a14x,a15x,a16x,a17x,a18x,a19x;
	reg [1023:0] a20x,a21x,a22x,a23x,a24x,a25x,a26x,a27x,a28x,a29x;
	reg [1023:0] a30x,a31x,a32x,a33x,a34x,a35x,a36x,a37x,a38x,a39x,a40x,a41x;
	
	reg [255:0] r00x,r01x,r02x,r03x,r04x,r05x,r06x,r07x,r08x,r09x;
	reg [255:0] r10x,r11x,r12x,r13x,r14x,r15x,r16x,r17x,r18x,r19x;
	reg [255:0] r20x,r21x,r22x,r23x,r24x,r25x,r26x,r27x,r28x,r29x;
	reg [255:0] r30x,r31x,r32x,r33x,r34x,r35x,r36x,r37x,r38x,r39x,r40x,r41x;
	
	jh_init jh_init  (i,i0);
	jh_round_a jh00a (i0, R, a00);
	jh_round_b jh00b (    R, r00);
	jh_round_a jh01a (a00x,r00x,a01);
	jh_round_b jh01b (    r00x,r01);
	jh_round_a jh02a (a01x,r01x,a02);
	jh_round_b jh02b (    r01x,r02);
	jh_round_a jh03a (a02x,r02x,a03);
	jh_round_b jh03b (    r02x,r03);
	jh_round_a jh04a (a03x,r03x,a04);
	jh_round_b jh04b (    r03x,r04);
	jh_round_a jh05a (a04x,r04x,a05);
	jh_round_b jh05b (    r04x,r05);
	jh_round_a jh06a (a05x,r05x,a06);
	jh_round_b jh06b (    r05x,r06);
	jh_round_a jh07a (a06x,r06x,a07);
	jh_round_b jh07b (    r06x,r07);
	jh_round_a jh08a (a07x,r07x,a08);
	jh_round_b jh08b (    r07x,r08);
	jh_round_a jh09a (a08x,r08x,a09);
	jh_round_b jh09b (    r08x,r09);
	jh_round_a jh10a (a09x,r09x,a10);
	jh_round_b jh10b (    r09x,r10);
	jh_round_a jh11a (a10x,r10x,a11);
	jh_round_b jh11b (    r10x,r11);
	jh_round_a jh12a (a11x,r11x,a12);
	jh_round_b jh12b (    r11x,r12);
	jh_round_a jh13a (a12x,r12x,a13);
	jh_round_b jh13b (    r12x,r13);
	jh_round_a jh14a (a13x,r13x,a14);
	jh_round_b jh14b (    r13x,r14);
	jh_round_a jh15a (a14x,r14x,a15);
	jh_round_b jh15b (    r14x,r15);
	jh_round_a jh16a (a15x,r15x,a16);
	jh_round_b jh16b (    r15x,r16);
	jh_round_a jh17a (a16x,r16x,a17);
	jh_round_b jh17b (    r16x,r17);
	jh_round_a jh18a (a17x,r17x,a18);
	jh_round_b jh18b (    r17x,r18);
	jh_round_a jh19a (a18x,r18x,a19);
	jh_round_b jh19b (    r18x,r19);
	jh_round_a jh20a (a19x,r19x,a20);
	jh_round_b jh20b (    r19x,r20);
	jh_round_a jh21a (a20x,r20x,a21);
	jh_round_b jh21b (    r20x,r21);
	jh_round_a jh22a (a21x,r21x,a22);
	jh_round_b jh22b (    r21x,r22);
	jh_round_a jh23a (a22x,r22x,a23);
	jh_round_b jh23b (    r22x,r23);
	jh_round_a jh24a (a23x,r23x,a24);
	jh_round_b jh24b (    r23x,r24);
	jh_round_a jh25a (a24x,r24x,a25);
	jh_round_b jh25b (    r24x,r25);
	jh_round_a jh26a (a25x,r25x,a26);
	jh_round_b jh26b (    r25x,r26);
	jh_round_a jh27a (a26x,r26x,a27);
	jh_round_b jh27b (    r26x,r27);
	jh_round_a jh28a (a27x,r27x,a28);
	jh_round_b jh28b (    r27x,r28);
	jh_round_a jh29a (a28x,r28x,a29);
	jh_round_b jh29b (    r28x,r29);
	jh_round_a jh30a (a29x,r29x,a30);
	jh_round_b jh30b (    r29x,r30);
	jh_round_a jh31a (a30x,r30x,a31);
	jh_round_b jh31b (    r30x,r31);
	jh_round_a jh32a (a31x,r31x,a32);
	jh_round_b jh32b (    r31x,r32);
	jh_round_a jh33a (a32x,r32x,a33);
	jh_round_b jh33b (    r32x,r33);
	jh_round_a jh34a (a33x,r33x,a34);
	jh_round_b jh34b (    r33x,r34);
	jh_round_a jh35a (a34x,r34x,a35);
	jh_round_b jh35b (    r34x,r35);
	jh_round_a jh36a (a35x,r35x,a36);
	jh_round_b jh36b (    r35x,r36);
	jh_round_a jh37a (a36x,r36x,a37);
	jh_round_b jh37b (    r36x,r37);
	jh_round_a jh38a (a37x,r37x,a38);
	jh_round_b jh38b (    r37x,r38);
	jh_round_a jh39a (a38x,r38x,a39);
	jh_round_b jh39b (    r38x,r39);
	jh_round_a jh40a (a39x,r39x,a40);
	jh_round_b jh40b (    r39x,r40);
	jh_round_a jh41a (a40x,r40x,a41);
//	jh_round_b jh41b (    r40,r41);
	jh_final jh_final(a41x,f0);

	always @ ( posedge clk ) begin
	
		i <= state_in;
		R <= 256'h544ce660d09af45b990aee48ae837b5c7cbea95766c8df4d10933dcfe6679056;
		state_out <= f0;
		
		a00x <= a00;
		r00x <= r00;
		a01x <= a01;
		r01x <= r01;
		a02x <= a02;
		r02x <= r02;
		a03x <= a03;
		r03x <= r03;
		a04x <= a04;
		r04x <= r04;
		a05x <= a05;
		r05x <= r05;
		a06x <= a06;
		r06x <= r06;
		a07x <= a07;
		r07x <= r07;
		a08x <= a08;
		r08x <= r08;
		a09x <= a09;
		r09x <= r09;
		a10x <= a10;
		r10x <= r10;
		a11x <= a11;
		r11x <= r11;
		a12x <= a12;
		r12x <= r12;
		a13x <= a13;
		r13x <= r13;
		a14x <= a14;
		r14x <= r14;
		a15x <= a15;
		r15x <= r15;
		a16x <= a16;
		r16x <= r16;
		a17x <= a17;
		r17x <= r17;
		a18x <= a18;
		r18x <= r18;
		a19x <= a19;
		r19x <= r19;
		a20x <= a20;
		r20x <= r20;
		a21x <= a21;
		r21x <= r21;
		a22x <= a22;
		r22x <= r22;
		a23x <= a23;
		r23x <= r23;
		a24x <= a24;
		r24x <= r24;
		a25x <= a25;
		r25x <= r25;
		a26x <= a26;
		r26x <= r26;
		a27x <= a27;
		r27x <= r27;
		a28x <= a28;
		r28x <= r28;
		a29x <= a29;
		r29x <= r29;
		a30x <= a30;
		r30x <= r30;
		a31x <= a31;
		r31x <= r31;
		a32x <= a32;
		r32x <= r32;
		a33x <= a33;
		r33x <= r33;
		a34x <= a34;
		r34x <= r34;
		a35x <= a35;
		r35x <= r35;
		a36x <= a36;
		r36x <= r36;
		a37x <= a37;
		r37x <= r37;
		a38x <= a38;
		r38x <= r38;
		a39x <= a39;
		r39x <= r39;
		a40x <= a40;
		r40x <= r40;
		a41x <= a41;
		r41x <= r41;

	end
	
endmodule

