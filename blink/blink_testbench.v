`timescale 1ns/1ns
module testbench;

    wire led;

    // Instantiate the blink module
    blink uut (.led(led));

    initial begin
        $monitor("Time: %0t ns | LED: %b", $time, led);
    end

endmodule
