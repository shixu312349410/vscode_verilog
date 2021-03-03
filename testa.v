// -----------------------------------------------------------------------------
// Copyright (c) 2014-2020 All rights reserved
// -----------------------------------------------------------------------------
// Author : youkaiyuan v3eduyky@126.com
// wechat : 1592199923
// File   : testa.v
// Create : 2020-10-10 09:26:21
// Revise : 2020-10-10 16:58:36
// Editor : sublime text3, tab size (4)
// -----------------------------------------------------------------------------
module testa(
input	   wire	            sclk,
input	   wire 		    rst,
output	   reg              odata
);
always @(posedge sclk) begin
	if(rst == 1'b1) begin
		odata <= 1'b0;
	end
	else begin
		odata <= 1'b1;
	end
end

endmodule




