extends Weapon

var triggerHeld := false;
var canShoot := true;
const bulletScene = preload("res://scenes/weapons/bullet.tscn");

func _process(_delta: float) -> void:
  if canShoot && triggerHeld:
    shootBullet();
# end _process

func shootBullet():
  $ShootTimer.start();
  canShoot = false;
  var newBullet = bulletScene.instantiate();
  newBullet.top_level = true;
  newBullet.transform = $ShootDir.global_transform;
  add_child(newBullet);
# end shootBullet

func _on_shoot_timer_timeout() -> void:
  canShoot = true;
# end _on_shoot_timer_timeout

func _on_mechgun_action_pressed(pickable: Variant) -> void:
  triggerHeld = true;
# end _on_mechgun_action_pressed

func _on_mechgun_action_released(pickable: Variant) -> void:
  triggerHeld = false;
# end _on_mechgun_action_released

func _on_mechgun_dropped(pickable: Variant) -> void:
  triggerHeld = false;
# end _on_mechgun_dropped

func _on_mechgun_released(pickable: Variant, by: Variant) -> void:
  triggerHeld = false;
# end _on_mechgun_released
