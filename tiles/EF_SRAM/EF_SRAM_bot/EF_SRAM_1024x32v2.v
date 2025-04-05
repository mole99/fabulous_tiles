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

module EF_SRAM_1024x32v2 #(parameter NoConfigBits = 0)(
	// ConfigBits has to be adjusted manually (we don't use an arithmetic parser for the value)
	
	// User design
    input  [(32 - 1) : 0] DI,
    input  [(32 - 1) : 0] BEN,
    input  [(10 - 1) : 0] AD,
    input                 EN,
    input                 R_WB,
    	output [(32 - 1) : 0] DO,

	// SRAM
    (* FABulous, EXTERNAL *) output [(32 - 1) : 0] DI_SRAM,
    (* FABulous, EXTERNAL *) output [(32 - 1) : 0] BEN_SRAM,
    (* FABulous, EXTERNAL *) output [(10 - 1) : 0] AD_SRAM,
    (* FABulous, EXTERNAL *) output                EN_SRAM,
    (* FABulous, EXTERNAL *) output                R_WB_SRAM,
    (* FABulous, EXTERNAL *) input  [(32 - 1) : 0] DO_SRAM,
    (* FABulous, EXTERNAL *) output                CLOCK_SRAM,
    
    // External and shared clock
    (* FABulous, EXTERNAL, SHARED_PORT *) input UserCLK,
    
    	(* FABulous, GLOBAL *) input [NoConfigBits-1:0] ConfigBits
);
    
	assign DI_SRAM      = DI;
	assign BEN_SRAM     = BEN;
	assign AD_SRAM      = AD;
	assign EN_SRAM      = EN;
	assign R_WB_SRAM    = R_WB;
	assign DO           = DO_SRAM;
	assign CLOCK_SRAM   = UserCLK;

endmodule
