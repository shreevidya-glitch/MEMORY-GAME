module memory_game(

input [2:0] button,

output reg win,

output reg lose

);

reg [2:0] pattern;

always @(*)

begin

pattern=3'b101;

if(button==pattern)

begin

win=1;

lose=0;

end

else

begin

win=0;

lose=1;

end

end

endmodule
