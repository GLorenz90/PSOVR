extends Equipment

const MAX_SLOTS := 3;

@export var ARMOR_TYPE: Enums.ARMOR_TYPES = Enums.ARMOR_TYPES.LIGHT_ARMOR;
@export_range(0, MAX_SLOTS) var SLOTS := 0;
