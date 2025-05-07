module logic_function (
    input wire P,
    input wire Q,
    input wire R,
    output wire F
);

assign F = (P & Q) | (Q & ~R) | (P & ~R);

endmodule
