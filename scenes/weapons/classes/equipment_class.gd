extends Node3D
class_name Equipment

@export var NAME := "Equipment"
@export var RARITY: Enums.RARITIES = Enums.RARITIES.COMMON;
@export_file("*.png") var ICON;
@export_range(0, 250) var MAX_UPGRADE := 10;
@export_range(0, 250) var CURRENT_UPGRADE := 0;

@export_category("Requirements")
@export_range(0, 200) var LVL_REQ := 0;
@export_range(0, 1000) var STR_REQ := 0;
@export_range(0, 1000) var DEX_REQ := 0;
@export_range(0, 1000) var MND_REQ := 0;

@export_category("Stat Bonuses")
@export_range(0, 100) var HP_BONUS := 0;
@export_range(0, 100) var MP_BONUS := 0;
@export_range(0, 50) var STR_BONUS := 0;
@export_range(0, 50) var DEX_BONUS := 0;
@export_range(0, 50) var MND_BONUS := 0;
@export_range(0, 50) var DEF_BONUS := 0;
@export_range(0, 40) var LCK_BONUS := 0;

@export_category("Resistance Bonuses")
@export_range(0.0, .25, .05) var FIR_BONUS := 0.0;
@export_range(0.0, .25, .05) var LGT_BONUS := 0.0;
@export_range(0.0, .25, .05) var ICE_BONUS := 0.0;
@export_range(0.0, .25, .05) var GND_BONUS := 0.0;
@export_range(0.0, .25, .05) var HLY_BONUS := 0.0;
@export_range(0.0, .25, .05) var DRK_BONUS := 0.0;
@export_range(0.0, .25, .05) var STA_BONUS := 0.0;
