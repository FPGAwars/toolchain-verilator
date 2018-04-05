(* blackbox *)
module SB_HFOSC(
	input CLKHFPU,
	input CLKHFEN,
	output CLKHF
);
parameter CLKHF_DIV = "0b00";
endmodule
