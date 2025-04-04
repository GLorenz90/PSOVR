extends Character

@export_category("Maximums")
@export_range(0, 1700) var MAX_STR := 1150;
@export_range(0, 1700) var MAX_DEX := 1150;
@export_range(0, 1700) var MAX_MND := 790;
@export_range(0, 700) var MAX_DEF := 550;

@export_category("Leveling")
const MAX_LEVEL := 200;
var CURRENT_LEVEL := 1;
var CURRENT_EXP := 0;
var EXP_TO_NEXT_LEVEL := 50;

@export var HP_PER_LVL := 7;
@export var MP_PER_LVL := 5;
@export var STR_PER_LVL := 4;
@export var DEX_PER_LVL := 4;
@export var MND_PER_LVL := 3;
@export var DEF_PER_LVL := 2;

@export_category("Upgrading")
@export var MAX_STAT_MATS_TOTAL := 150;
@export var STR_MATS_USED := 0;
@export var DEX_MATS_USED := 0;
@export var MND_MATS_USED := 0;
@export var DEF_MATS_USED := 0;
@export var LCK_MATS_USED := 0;

@export var MAX_HP_MP_MATS_EACH := 125;
@export var HP_MATS_USED := 0;
@export var MP_MATS_USED := 0;
