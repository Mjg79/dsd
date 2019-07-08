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
		state = 1024'h4bdd8ccc78465a54fb1785e6dffcc2e356b116577c8806a756f8b19decf657cf99c15a2db1716e3b243c84c1d0a747105ae66f2e8e8ab546694ae34105e66901f73bf8ba763a0fa9a6ba7520dbcc8e58806d2bea6b05a92a1e806f53c1a01d8961c3b3f2591234e90bef970c8d5e228a43d5157a052e6a6317aa003e964bd16f;
	end
   	always begin
		#1 clk = ~clk;
		$display("%h", hash);
   	end
endmodule

