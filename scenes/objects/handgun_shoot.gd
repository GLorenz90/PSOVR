extends Marker3D

var canShoot := true;
const bulletScene = preload("res://scenes/objects/bullet.tscn");

func _on_handgun_action_pressed(pickable: Variant) -> void:
  if canShoot:
    shootBullet();
# end _on_handgun_action_pressed

func shootBullet():
  $"../ShootTimer".start();
  canShoot = false;
  var newBullet = bulletScene.instantiate();
  newBullet.top_level = true;
  newBullet.transform = global_transform;
  add_child(newBullet);
# end shootBullet

func _on_shoot_timer_timeout() -> void:
  canShoot = true;
# end _on_shoot_timer_timeout
