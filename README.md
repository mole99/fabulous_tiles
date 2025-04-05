# FABulous Tiles

This repository hosts tiles for the [FABulous](https://github.com/FPGA-Research/FABulous) framework and configuration files in order to harden them with the [FABulous OpenLane 2 plugin](https://github.com/mole99/openlane_plugin_fabulous).

Enable the plugin and harden all tiles using `make` or harden individual tiles using e.g. `make tiles/LUT4AB`.

## Custom Tiles

The custom tiles created for special use.

| Name           | Description |
|----------------|-------------|
| S_CPU_IF       | 16 inputs and 16 output to the CPU domain |
| S_CPU_IRQ      | 4 IRQs to the CPU domain |
| S_WARMBOOT     | Trigger fabric reconfiguration from the selected slot, provides a `RESET` signal |
| IHP_SRAM        | Single-ported SRAM 32-bit wide, 4kB deep |
| N_term_IHP_SRAM | Termination tile for IHP_SRAM |
| S_term_IHP_SRAM | Termination tile for IHP_SRAM |
| N_IO           | IO tile for the north side |
| E_IO           | IO tile for the east side |
| S_IO           | IO tile for the south side |

## Default Tiles

Some of the default tiles provided by FABulous.

| Name           | Description |
|----------------|-------------|
| DSP            | DSP tile for MAC |
| LUT4AB         | Tile with two bels of 4 LUT and FF each |
| RegFile        | Register file 1w1r1r  |
| N_term_DSP     | Termination tile for DSP     |
| N_term_single  | Termination tile for LUT4AB  |
| N_term_single2 | Termination tile for RegFile |
| S_term_DSP     | Termination tile for DSP     |
| S_term_single  | Termination tile for LUT4AB  |
| S_term_single2 | Termination tile for RegFile |
| W_IO           | IO tile for the west side |

## Note

There are some remains for a planned design in sky130. The tiles are `EF_SRAM`, `N_EF_ADC12` and `N_EF_DAC8`. Please use with caution, but they might be useful as a reference.