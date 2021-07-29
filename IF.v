module IF(clk,reset,pc_next,pc,instruction);
	input clk,reset;
	output [63:0] pc_next;
	input [63:0] pc;
	output [31:0] instruction;
        wire [63:0] mid;
        Memory m11(instruction,pc);
        PC p1(clk,reset,pc,mid);
	assign pc_next = mid+4;                   
endmodule