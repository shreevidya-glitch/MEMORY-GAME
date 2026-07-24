module memory_game_tb;

reg [2:0] button;

wire win;

wire lose;

memory_game uut(

.button(button),

.win(win),

.lose(lose)

);

initial

begin

button=3'b101;

#10;

button=3'b111;

#10;

button=3'b101;

#10;

button=3'b001;

#10;

$finish;

end

initial

begin

$monitor("Button=%b Win=%b Lose=%b",

button,win,lose);

end

endmodule
