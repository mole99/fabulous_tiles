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

module OPENRAM_256x32_1RW1R #(parameter NoConfigBits = 0)(
	// ConfigBits has to be adjusted manually (we don't use an arithmetic parser for the value)
	
	// User design
    input                 CSB_A,
    input                 WEB_A,
    input  [(4 - 1)  : 0] WMASK_A,
    input  [(8 - 1)  : 0] ADDR_A,
    input  [(32 - 1) : 0] DIN_A,
    	output [(32 - 1) : 0] DOUT_A,
    	
    input                 CSB_B,
    input  [(8 - 1)  : 0] ADDR_B,
    output [(32 - 1) : 0] DOUT_B,

	// SRAM
    (* FABulous, EXTERNAL *) output                CLK_A_SRAM,
    (* FABulous, EXTERNAL *) output                CSB_A_SRAM,
    (* FABulous, EXTERNAL *) output                WEB_A_SRAM,
    (* FABulous, EXTERNAL *) output [(4 - 1)  : 0] WMASK_A_SRAM,
    (* FABulous, EXTERNAL *) output [(8 - 1)  : 0] ADDR_A_SRAM,
    (* FABulous, EXTERNAL *) output [(32 - 1) : 0] DIN_A_SRAM,
    	(* FABulous, EXTERNAL *) input  [(32 - 1) : 0] DOUT_A_SRAM,
    	
    (* FABulous, EXTERNAL *) output                CLK_B_SRAM,
    (* FABulous, EXTERNAL *) output                CSB_B_SRAM,
    (* FABulous, EXTERNAL *) output [(8 - 1)  : 0] ADDR_B_SRAM,
    (* FABulous, EXTERNAL *) input  [(32 - 1) : 0] DOUT_B_SRAM,
    
    (* FABulous, EXTERNAL *) input                 CONFIGURED_top,
    
    // External and shared clock
    (* FABulous, EXTERNAL, SHARED_PORT *) input UserCLK,
    
    	(* FABulous, GLOBAL *) input [NoConfigBits-1:0] ConfigBits
);
    
    // Invert CLK_A
    assign CLK_A_SRAM    = UserCLK; // ConfigBits[0] ? !UserCLK : UserCLK;
    	// Only enable the SRAM if the fabric is configured
    assign CSB_A_SRAM    = CSB_A || !CONFIGURED_top;
    assign WEB_A_SRAM    = WEB_A;
    assign WMASK_A_SRAM  = WMASK_A;
    assign ADDR_A_SRAM   = ADDR_A;
    assign DIN_A_SRAM    = DIN_A;
    assign DOUT_A        = DOUT_A_SRAM;

    // Invert CLK_B
    assign CLK_B_SRAM    = UserCLK; // ConfigBits[1] ? !UserCLK : UserCLK;
    	// Only enable the SRAM if the fabric is configured
    assign CSB_B_SRAM    = CSB_B || !CONFIGURED_top;
    assign ADDR_B_SRAM   = ADDR_B;
    assign DOUT_B        = DOUT_B_SRAM;

endmodule
