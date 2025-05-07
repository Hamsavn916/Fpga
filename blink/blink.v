module blink(output reg led)
     initial begin
        led = 0;
        #5 led = 1;
        #5 led = 0;
        #5 led = 1;
        #5 led = 0;
        #5 $finish;
    end
endmodule
