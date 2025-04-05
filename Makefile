PDK ?= ihp-sg13g2
PDK_ROOT ?= ~/.volare

TILES = S_term_single N_term_single S_term_single2 N_term_single2 S_term_DSP N_term_DSP S_term_IHP_SRAM N_term_IHP_SRAM LUT4AB W_IO N_IO S_WARMBOOT S_CPU_IRQ S_CPU_IF RegFile DSP IHP_SRAM
TILE_DIR = tiles

TILE_PATHS := $(addprefix $(TILE_DIR)/,$(TILES))
TILE_PATHS_VIEWS := $(addsuffix -view,$(TILE_PATHS))

$(info $(TILE_PATHS))
$(info $(TILE_PATHS_VIEWS))

# A rule for all tiles
$(TILE_PATHS):
	openlane --manual-pdk --pdk ${PDK} --pdk-root ${PDK_ROOT} common.yaml $@/config.yaml
.PHONY: $(TILE_PATHS)

$(TILE_PATHS_VIEWS):
	openlane --manual-pdk --pdk ${PDK} --pdk-root ${PDK_ROOT} common.yaml $(subst -view,,$@)/config.yaml --last-run --flow OpenInOpenROAD
.PHONY: $(TILE_PATHS_VIEWS)

boundary-tiles: $(TILE_DIR)/W_IO $(TILE_DIR)/N_IO $(TILE_DIR)/S_CPU_IF $(TILE_DIR)/S_CPU_IRQ $(TILE_DIR)/S_WARMBOOT
.PHONY: termination-tiles

termination-tiles: $(TILE_DIR)/S_term_single $(TILE_DIR)/N_term_single $(TILE_DIR)/S_term_single2 $(TILE_DIR)/N_term_single2 $(TILE_DIR)/S_term_DSP $(TILE_DIR)/N_term_DSP
.PHONY: termination-tiles

all-tiles: $(TILE_PATHS)
.PHONY: all-tiles
