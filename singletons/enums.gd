extends Node

enum RARITIES {
  COMMON,
  RARE,
  LEGENDARY
}

enum WEAPON_USAGE_STATS{
  STR,
  DEX,
  MND
}

enum ITEM_BOX {
  WEAPON,
  ARMOR,
  CONSUMABLE,
  RARE,
  MONEY
}

enum WEAPON_TYPES {
  # Striker weapons
  SWORD,
  GREATSWORD,
  DAGGER,
  POLEARM,
  SLICER,
  KATANA,
  CLAW,
  DUAL_SWORD,
  FIST,
  # Ranger weapons
  HANDGUN,
  RIFLE,
  MACHINEGUN,
  SHOTGUN,
  LAUNCHER,
  GRENADE, # NEW
  BOW, # NEW
  GUNBLADE, # NEW
  # Invoker weapons
  CANE, # 1h, damage & casting
  ROD, # 2h, damage & casting
  WAND, # 1h, casting
  SCEPTER, # NEW - 2h, casting
  CARD
}

enum ARMOR_TYPES {
  LIGHT_ARMOR,
  HEAVY_ARMOR,
}

enum SHIELD_TYPES {
  LIGHT_SHIELD,
  MEDIUM_SHIELD,
  GREAT_SHIELD # NEW
}

enum RACES {
  HUMAN,
  FORGED,
  LUMERA,
  CORESIAN
}

enum JOBS {
  STRIKER,
  RANGER,
  INVOKER
}
