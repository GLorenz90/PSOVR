extends Resource
class_name Character

@export var NAME := "Name"

@export_group("Base Stats")
@export var MAX_HP := 30;
var CURRENT_HP = MAX_HP_TOTAL();
@export var MAX_MP := 35;
var CURRENT_MP = MAX_MP_TOTAL();
const MAX_LCK := 100;

@export var STR := 30;
@export var DEX := 30;
@export var MND := 30;
@export var DEF := 15;
@export_range(0, MAX_LCK) var LCK := 5;

@export_group("Base Resistances")
@export_range(0.0, .15, .05) var FIR_RES := 0.0;
@export_range(0.0, .15, .05) var LGT_RES := 0.0;
@export_range(0.0, .15, .05) var ICE_RES := 0.0;
@export_range(0.0, .15, .05) var GND_RES := 0.0;
@export_range(0.0, .15, .05) var HLY_RES := 0.0;
@export_range(0.0, .15, .05) var DRK_RES := 0.0;
@export_range(0.0, .15, .05) var STA_RES := 0.0;

# Calculated Bonuses (Flat additive to the stat, comes from equipment and classes)
var MAX_HP_BONUS := 0;
var MAX_MP_BONUS := 0;
var STR_BONUS := 0;
var DEX_BONUS := 0;
var MND_BONUS := 0;
var DEF_BONUS := 0;
var LCK_BONUS := 0;

var FIR_RES_BONUS := 0.0;
var LGT_RES_BONUS := 0.0;
var ICE_RES_BONUS := 0.0;
var GND_RES_BONUS := 0.0;
var HLY_RES_BONUS := 0.0;
var DRK_RES_BONUS := 0.0;
var STA_RES_BONUS := 0.0;

var FIR_DMG_BONUS := 0.0;
var LGT_DMG_BONUS := 0.0;
var ICE_DMG_BONUS := 0.0;
var GND_DMG_BONUS := 0.0;
var HLY_DMG_BONUS := 0.0;
var DRK_DMG_BONUS := 0.0;
var STA_DMG_BONUS := 0.0;

# Boosts and Penalties (Adds or removes a multiplicitive of the base from the total, comes from spells)
var MAX_HP_BOOST := 0.0;
var MAX_MP_BOOST := 0.0;
var STR_BOOST := 0.0;
var DEX_BOOST := 0.0;
var MND_BOOST := 0.0;
var DEF_BOOST := 0.0;

var MAX_HP_PENALTY := 0.0;
var MAX_MP_PENALTY := 0.0;
var STR_PENALTY := 0.0;
var DEX_PENALTY := 0.0;
var MND_PENALTY := 0.0;
var DEF_PENALTY := 0.0;

# Calculated Stats (The functions for the base that will be used in calculations)
func MAX_HP_TOTAL() -> int:
  return MAX_HP + MAX_HP_BONUS + (MAX_HP * (1+MAX_HP_BOOST)) - (MAX_HP * (1-MAX_HP_PENALTY));
func MAX_MP_TOTAL() -> int:
  return MAX_MP + MAX_MP_BONUS + (MAX_MP * (1+MAX_MP_BOOST)) - (MAX_MP * (1-MAX_MP_PENALTY));
func STR_TOTAL() -> int:
  return STR + STR_BONUS + (STR * (1+STR_BOOST)) - (STR * (1-STR_PENALTY));
func DEX_TOTAL() -> int:
  return DEX + DEX_BONUS + (DEX * (1+DEX_BOOST)) - (DEX * (1-DEX_PENALTY));
func MND_TOTAL() -> int:
  return MND + MND_BONUS + (MND * (1+MND_BOOST)) - (MND * (1-MND_PENALTY));
func DEF_TOTAL() -> int:
  return DEF + DEF_BONUS + (DEF * (1+DEF_BOOST)) - (DEF * (1-DEF_PENALTY));
func LCK_TOTAL() -> int:
  return LCK + LCK_BONUS;

func FIR_RES_TOTAL() -> float:
  return LGT_RES + LGT_RES_BONUS;
func LGT_RES_TOTAL() -> float:
  return LGT_RES + LGT_RES_BONUS;
func ICE_RES_TOTAL() -> float:
  return ICE_RES + ICE_RES_BONUS;
func GND_RES_TOTAL() -> float:
  return GND_RES + GND_RES_BONUS;
func HLY_RES_TOTAL() -> float:
  return HLY_RES + HLY_RES_BONUS;
func DRK_RES_TOTAL() -> float:
  return DRK_RES + DRK_RES_BONUS;
func STA_RES_TOTAL() -> float:
  return STA_RES + STA_RES_BONUS;
