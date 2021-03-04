//~ `New testbench
`timescale  1ns / 1ps

module tb_mux2;

// mux2 Parameters
//parameter PERIOD  = 10;


// mux2 Inputs
reg   a                                    = 0 ;
reg   b                                    = 0 ;
reg   sel                                  = 0 ;

// mux2 Outputs
wire  out                                  ;


// initial
// begin
//     forever #(PERIOD/2)  clk=~clk;
// end

// initial
// begin
//     #(PERIOD*2) rst_n  =  1;
// end

mux2  u_mux2 (
    .a                       ( a     ),
    .b                       ( b     ),
    .sel                     ( sel   ),

    .out                     ( out   )
);

initial
begin
    a = 0;b = 0; sel = 0;
    #200

    a = 0;b = 0; sel = 1;
    #200

    a = 0;b = 1; sel = 0;
    #200

    a = 0;b = 1; sel = 1;
    #200

    a = 1;b = 0; sel = 0;
    #200

    a = 1;b = 0; sel = 1;
    #200

    a = 1;b = 1; sel = 0;
    #200

    a = 1;b = 1; sel = 1;
    #200
    $finish;
end

endmodule