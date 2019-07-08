`include "../../src/verilog/jh512.v"
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:35:11 05/11/2019
// Design Name:   JH512
// Module Name:   H:/jh/jh_tb.v
// Project Name:  jh
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: JH512
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tester_v_jh512;

	// Inputs
	reg clk;
	reg [1023:0] state;
	reg [127:0] data;

	// Outputs
	wire [511:0] hash;
	
	// Instantiate the Unit Under Test (UUT)
	JH512 uut (
		.clk(clk), 
		.state(state), 
		.data(data), 
		.hash(hash)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		/*state = 0;
		data = 0;
        	#100 data = 128'd12345609823;
		state = 0;*/
		
		// data = 128'd7659432094555543122297600000000654;
		data = 128'd0;
		state = 1024'd94c68f5349f649bfd04bdef377c63ad4d8d083e22edbd4dd5937a9f422120706898f6c69ced6057609646aab813995fbd112c5eadada92c6d5d85b2444c2c48a257c5fbb3dd276bae597eb22b322a9230fd374ca250accc005d87af95064a820e518ac3dceee1b062d61872856f0c37f86e25778f42e07519fb829ed8737411;
	end
   	always begin
		#1 clk = ~clk;
		$display("%h", hash);
   	end
endmodule

