`timescale 1ns / 1ps

module new_top_tb();

    // Testbench-Signale
    reg sysclk, rst;
    reg [1:0] btn;
    reg [1:0] sw;
    wire [7:0] guessSequence;
    wire [7:0] secretSequence;

    wire [3:0] led;
    wire led4_b, led4_g, led4_r;
    wire led5_b, led5_g, led5_r;

    // DUT (Device under Test)
    new_top uut (
        .sysclk(sysclk),
        .rst(rst),
        .btn(btn),
        .sw(sw),
        .led(led),
        .led4_b(led4_b), .led4_g(led4_g), .led4_r(led4_r),
        .led5_b(led5_b), .led5_g(led5_g), .led5_r(led5_r)
        // .debug_secret(secretSequence),
        // .debug_guess(guessSequence)
    );

    // Clock-Generator (100 MHz → Periode = 10ns)
    initial sysclk = 0;
    always #5 sysclk = ~sysclk;

    // Hilfstask: Bit eingeben
    task press_bit(input bit_value);
        begin
            sw[0] = bit_value;   // Wert setzen
            sw[1] = 0; #50;      // Trigger low
            sw[1] = 1; #50;      // Trigger high (Flanke)
            sw[1] = 0; #50;      // zurück low
            // $display("secretSequence: %b", secretSequence);
            // $display("guessSequence: %b", guessSequence);
            $display("RGB4: %d%d%d", led4_r, led4_g, led4_b);
        end
    endtask

    initial begin
        // Initialwerte
        sw  = 2'b00;

        // START → SET_SECRET (btn=2'b11)
        btn = 2'b11;
        #10
        $display("entering SECRET sequence");
        // Secret-Sequence = 01100100
        press_bit(0);
        press_bit(1);
        press_bit(1);
        press_bit(0);
        press_bit(0);
        press_bit(1);
        press_bit(0);
        press_bit(0);

        $display("entering GUESS sequence");
        // Jetzt im GUESS_BIT → richtige Eingabe
        press_bit(0);
        press_bit(1);
        press_bit(1);
        press_bit(0);
        press_bit(0);
        press_bit(1);
        press_bit(0);
        press_bit(1);
        press_bit(1);
        press_bit(1);
        press_bit(1);
        press_bit(0);
        press_bit(0);
        press_bit(1);

        // warten und beobachten
        #2000; // genug lange warten
        $finish;
    end

endmodule
