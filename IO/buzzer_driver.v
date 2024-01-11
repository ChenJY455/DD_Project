module buzzer_driver (
    input clk,
    input if_play,
    output beep
);

// Notes frequencies (in Hz) and corresponding clock cycles for a beep duration at 100MHz clock
// Assuming your system clock is 100 MHz, adjust the values according to your clock frequency
parameter C4 = 191500, D4 = 170000, E4 = 151900, F4 = 143200, G4 = 127500, A4 = 113600, B4 = 101400, C5 = 95600, REST = 0;
parameter TEMPO = 30000000;  // Corresponds to the tempo of 300 ms for a quarter note
parameter QUARTER = TEMPO, HALF = 2 * TEMPO, WHOLE = 4 * TEMPO;
parameter SILENT = 0, PLAY_NOTE = 1;
parameter LENGTH = 15;

// Note sequence for "Twinkle, Twinkle, Little Star"
// reg [31:0] notes[0:14] = {C4, C4, G4, G4, A4, A4, G4, F4, F4, E4, E4, D4, D4, C4, REST};
// reg [31:0] beats[0:14] = {QUARTER, QUARTER, QUARTER, QUARTER, QUARTER, QUARTER, HALF, 
//                           QUARTER, QUARTER, QUARTER, QUARTER, QUARTER, QUARTER, HALF, WHOLE};

reg [31:0] notes[0:14];
reg [31:0] beats[0:14];

initial begin
    notes[0] = C4;
    notes[1] = C4;
    notes[2] = G4;
    notes[3] = G4;
    notes[4] = A4;
    notes[5] = A4;
    notes[6] = G4;
    notes[7] = REST;
    notes[8] = F4;
    notes[9] = F4;
    notes[10] = E4;
    notes[11] = E4;
    notes[12] = D4;
    notes[13] = D4;
    notes[14] = C4;
    notes[15] = REST;
    beats[0] = QUARTER;
    beats[1] = QUARTER;
    beats[2] = QUARTER;
    beats[3] = QUARTER;
    beats[4] = QUARTER;
    beats[5] = QUARTER;
    beats[6] = HALF;
    beats[7] = WHOLE;
    beats[8] = QUARTER;
    beats[9] = QUARTER;
    beats[10] = QUARTER;
    beats[11] = QUARTER;
    beats[12] = QUARTER;
    beats[13] = QUARTER;
    beats[14] = HALF;
    beats[15] = WHOLE;
end

// State variables
integer note_index = 0;
reg [31:0] current_note = REST;
reg [31:0] current_beat = 0;
reg [31:0] counter_note = 0;
reg [31:0] counter_beat = 0;
reg current_state = SILENT;
reg beep_reg;
assign beep = beep_reg;

always @(posedge clk) begin
    if(if_play == 1) begin
        case (current_state)
            SILENT: begin
                beep_reg <= 0;
                if (counter_beat < QUARTER) begin
                    counter_beat <= counter_beat + 1;
                end else begin
                    counter_beat <= 0;
                    current_state <= PLAY_NOTE;
                    current_note <= notes[note_index];
                    current_beat <= beats[note_index];
                    note_index <= note_index < LENGTH ? note_index + 1 : 0;
                end
            end
            PLAY_NOTE: begin
                if (current_note == REST) begin
                    beep_reg <= 0;
                    current_state <= SILENT;
                end
                else begin
                    if(counter_beat < current_beat) begin
                        counter_beat <= counter_beat + 1;
                        if (counter_note < current_note) begin
                            counter_note <= counter_note + 1;
                        end
                        else begin
                            beep_reg <= ~beep_reg;
                            counter_note <= 0;
                        end
                    end
                    else begin
                        counter_beat <= 0;
                        current_state <= SILENT;
                    end
                end
            end
        endcase
    end
    else begin
        beep_reg <= 0;
        note_index <= 0;
        current_note <= REST;
        current_beat <= 0;
        counter_note <= 0;
        counter_beat <= 0;
        current_state <= SILENT;
    end
end

endmodule