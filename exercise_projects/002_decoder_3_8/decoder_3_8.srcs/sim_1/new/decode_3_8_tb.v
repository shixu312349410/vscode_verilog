//~ `New testbench
`timescale  1ns / 1ps

module tb_decoder_3_8;

// decoder_3_8 Parameters
//parameter PERIOD  = 10;


// decoder_3_8 Inputs
reg   a= 0 ;
reg   b= 0 ;
reg   c= 0 ;

// decoder_3_8 Outputs
wire[7:0] out;


// initial
// begin
//     forever #(PERIOD/2)  clk=~clk;
// end

// initial
// begin
//     #(PERIOD*2) rst_n  =  1;
// end

decoder_3_8  u_decoder_3_8 (
    .a(a),
    .b(b),
    .c(c),
    .out(out)
);

initial
begin
    a = 0; b = 0; c = 0;
    #200

    a = 0; b = 0; c = 1;
    #200

    a = 0; b = 1; c = 0;
    #200

    a = 0; b = 1; c = 1;
    #200

    a = 1; b = 0; c = 0;
    #200

    a = 1; b = 0; c = 1;
    #200

    a = 1; b = 1; c = 0;
    #200

    a = 1; b = 1; c = 1;
    #200
    $finish;
end

endmodule