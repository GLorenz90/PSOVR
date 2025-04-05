extends Equipment
class_name Shield

@export var ARMOR_TYPE: Enums.SHIELD_TYPES = Enums.SHIELD_TYPES.LIGHT_SHIELD;

func _init():
  ITEM_BOX = Enums.ITEM_BOX.ARMOR;
# end _init
