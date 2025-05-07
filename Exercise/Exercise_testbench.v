`timescale 1ns / 1ps
module exercise_tb;

reg P, Q, R;
wire F;

logic_function uut (.P(P), .Q(Q), .R(R), .F(F));

initial begin
    $monitor("P Q R | F");
    $monitor("-------------");

    P = 0; Q = 0; R = 0; #10; $monitor("%b %b %b | %b", P, Q, R, F);
    P = 0; Q = 0; R = 1; #10; $monitor("%b %b %b | %b", P, Q, R, F);
    P = 0; Q = 1; R = 0; #10; $monitor("%b %b %b | %b", P, Q, R, F);
    P = 0; Q = 1; R = 1; #10; $monitor("%b %b %b | %b", P, Q, R, F);
    P = 1; Q = 0; R = 0; #10; $monitor("%b %b %b | %b", P, Q, R, F);
    P = 1; Q = 0; R = 1; #10; $monitor("%b %b %b | %b", P, Q, R, F);
    P = 1; Q = 1; R = 0; #10; $monitor("%b %b %b | %b", P, Q, R, F);
    P = 1; Q = 1; R = 1; #10; $monitor("%b %b %b | %b", P, Q, R, F);

    $finish;
end

endmodule



