extends Character
class_name PlayerCharacter

@export var RACE: Enums.RACES = Enums.RACES.HUMAN;
@export var JOB: Enums.JOBS = Enums.JOBS.STRIKER;

@export_group("Leveling")
const MAX_LEVEL := 200;
@export_range(1, MAX_LEVEL) var CURRENT_LEVEL := 1;
var CURRENT_EXP := 0;
var EXP_TO_NEXT_LEVEL := 50;

# TODO: move to the jobs class when it exists
#@export var HP_PER_LVL := 7;
#@export var MP_PER_LVL := 5;
#@export var STR_PER_LVL := 4;
#@export var DEX_PER_LVL := 4;
#@export var MND_PER_LVL := 3;
#@export var DEF_PER_LVL := 2;

#@export_group("Maximums")
# TODO: Move to job class when it exists
#@export_range(0, 1700) var MAX_STR := 1150;
#@export_range(0, 1700) var MAX_DEX := 1150;
#@export_range(0, 1700) var MAX_MND := 790;
#@export_range(0, 700) var MAX_DEF := 550;

@export_group("Upgrading")
# TODO: Move to job class when it exists
#@export var MAX_STAT_MATS_TOTAL := 150;
# TODO: Move to race class when it exists
#@export var MAX_HP_MP_MATS_EACH := 125;

@export var STR_MATS_USED := 0;
@export var DEX_MATS_USED := 0;
@export var MND_MATS_USED := 0;
@export var DEF_MATS_USED := 0;
@export var LCK_MATS_USED := 0;
@export var HP_MATS_USED := 0;
@export var MP_MATS_USED := 0;

@export_group("Inventory")
@export var CURRENT_MONEY := 0;
@export var LEFT_HAND_ITEM: Weapon;
@export var RIGHT_HAND_ITEM: Weapon;
@export var CURRENT_ARMOR: Armor;
@export var CURRENT_SHIELD: Shield;
# TODO: Consider adding medkit to store a few healing items w/o taking up backpack?
@export var MAX_BACKPACK_SIZE := 30;
@export var BACKPACK: Array[InventoryItem];
