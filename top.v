module top(
    input clk_25mhz,
    inout [27:0] gp,
    output[7:0] led
);

// assign gp[0] = 1'bz;
// ERROR: Unknown fixed type wire node value, 'z'
// ERROR: Loading design failed.

supply1 true;
assign gp[0] = true ? 1'bz : 1'bz;

assign led[0] = gp[0];
assign led[7:1] = {0,0,0,0,0,0,0};

endmodule
