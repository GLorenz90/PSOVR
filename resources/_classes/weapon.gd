extends Equipment
class_name Weapon

#@export_group("Description")
@export var WEAPON_TYPE: Enums.WEAPON_TYPES = Enums.WEAPON_TYPES.HANDGUN;
@export var SCENE: PackedScene = load("res://scenes/weapons/handgun.tscn");

@export_subgroup("Damage")
@export var STAT_USED: Enums.WEAPON_USAGE_STATS = Enums.WEAPON_USAGE_STATS.STR;
@export var BASE_DAMAGE := 10;
@export_range(0, 100) var DAMAGE_RANGE := 5;

@export_group("Attributes")
@export_range(0.0, 0.75, 0.05) var BEAST_PERCENT := 0.0;
@export_range(0.0, 0.75, 0.05) var MUTANT_PERCENT := 0.0;
@export_range(0.0, 0.75, 0.05) var MACHINE_PERCENT := 0.0;
@export_range(0.0, 0.75, 0.05) var PLANAR_PERCENT := 0.0;
@export_range(0.0, 0.75, 0.05) var SPECIAL_PERCENT := 0.0;

func _init():
  ITEM_BOX = Enums.ITEM_BOX.WEAPON;
# end _init
