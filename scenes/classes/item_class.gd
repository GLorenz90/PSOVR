extends Resource
class_name InventoryItem

@export var NAME := "Equipment"
@export var DESCRIPTION := "An item that can be picked up and dropped."
@export var RARITY: Enums.RARITIES = Enums.RARITIES.COMMON;
@export var COST := 100;
@export_file("*.png") var ICON;

var ITEM_BOX: Enums.ITEM_BOX = Enums.ITEM_BOX.WEAPON;
