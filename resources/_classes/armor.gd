extends Equipment
class_name Armor

const MAX_SLOTS := 4;

@export var ARMOR_TYPE: Enums.ARMOR_TYPES = Enums.ARMOR_TYPES.LIGHT_ARMOR;
@export_range(0, MAX_SLOTS) var SLOTS := 0;

func _init():
  ITEM_BOX = Enums.ITEM_BOX.ARMOR;
# end _init
