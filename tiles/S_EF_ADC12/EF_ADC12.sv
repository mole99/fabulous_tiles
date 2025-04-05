// Copyright 2025 Leo Moser
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

`default_nettype none

(* FABulous, BelMap,
SAMPLE_0=0,
SAMPLE_1=1,
SAMPLE_2=2,
SAMPLE_3=3
*)
module EF_ADC12 #(
    parameter NoConfigBits = 4,
    parameter NUM_BITS = 12
)(
	// ConfigBits has to be adjusted manually (we don't use an arithmetic parser for the value)

	// User design
    input                       START,
    input                       RESET,
    output                      VALID,
    output [(NUM_BITS - 1) : 0] VALUE,

    // Top
    (* FABulous, EXTERNAL, SHARED_PORT *) input UserCLK, // External and shared clock

    (* FABulous, EXTERNAL *) output [(NUM_BITS - 1) : 0] VALUE_top,
    (* FABulous, EXTERNAL *) input                       CMP_top,
    (* FABulous, EXTERNAL *) output                      HOLD_top,
    (* FABulous, EXTERNAL *) output                      RESET_top,

    	(* FABulous, GLOBAL *) input [NoConfigBits-1:0] ConfigBits
);
    localparam [NUM_BITS-1:0] MSB_SET = 1'b1 << (NUM_BITS-1);

    logic [NUM_BITS-1:0] result;
    logic [NUM_BITS-1:0] shift_value;
    logic [3:0]          sample_counter;

    logic                sample_done;
    logic [NUM_BITS-1:0] bit_mask;
    logic [NUM_BITS-1:0] next_bit;

    // Sample cycles
    logic [3:0] sample_cycles;
    assign sample_cycles = ConfigBits[3:0];
	
	// Bit masks
    logic [NUM_BITS-1:0] clear_bit_mask;
    logic [NUM_BITS-1:0] keep_bits_mask;
    
    assign clear_bit_mask = ~shift_value;
    assign keep_bits_mask = {NUM_BITS{1'b1}};
	
    // States
    typedef enum {
        S_IDLE,
        S_SAMPLE,
        S_RESET,
        S_START,
        S_CONVERSION,
        S_DONE        
    } state_t;
    
    state_t curr_state;
    state_t next_state;

    // Next state logic
    always_comb begin
        next_state = curr_state;

        case (curr_state)
            S_IDLE:
                if (START) next_state = S_SAMPLE;
            S_SAMPLE:
                next_state = S_RESET;
            S_RESET:
                if (sample_done) next_state = S_START;
            S_START:
                next_state = S_CONVERSION;
            S_CONVERSION:
                // Reached the LSB
                if (shift_value == 1'b1) next_state = S_DONE;
            S_DONE:
                next_state = S_IDLE;
        endcase
    end

    // State transition
    always_ff @(posedge UserCLK) begin
        if (RESET) begin
            curr_state <= S_IDLE;
        end else begin
            curr_state <= next_state;
        end
    end

    // Sample counter
    always @(posedge UserCLK) begin
        if (curr_state == S_RESET) begin
            sample_counter <= sample_counter + 'b1;
        end else begin
            sample_counter <= 'b0;
        end
    end
    
    assign sample_done = (sample_cycles == sample_counter);
    
    // Shift register
    always @(posedge UserCLK) begin
        if (curr_state == S_CONVERSION) begin
            shift_value <= shift_value >> 1;
        end else begin
            shift_value <= MSB_SET;
        end
    end
    
    // SAR logic
    assign bit_mask = (CMP_top == 1'b0) ? clear_bit_mask : keep_bits_mask;
    assign next_bit = shift_value >> 1;
    
    always @(posedge UserCLK) begin
        if (curr_state == S_IDLE) begin
            result <= 'b0;
        end else if (curr_state == S_RESET) begin 
            result <= MSB_SET;
        end else if (curr_state == S_CONVERSION) begin
            result <= (result | next_bit) & bit_mask;
        end
    end
    
    // To ADC
    assign HOLD_top = ~(curr_state == S_SAMPLE) || (curr_state == S_RESET);
    assign RESET_top = (curr_state == S_RESET) || (curr_state == S_START);
	assign VALUE_top = result; // DAC value

    // To user
	assign VALUE = result; // user value
    assign VALID = curr_state == S_DONE;

endmodule
