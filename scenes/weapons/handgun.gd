extends Weapon

const bulletScene = preload("res://scenes/weapons/bullet.tscn");

func _on_handgun_action_pressed(_pickable: Variant) -> void:
  shootBullet();
# end _on_handgun_action_pressed

func shootBullet():
  var newBullet = bulletScene.instantiate();
  newBullet.top_level = true;
  newBullet.transform = $ShootDir.global_transform;
  add_child(newBullet);
# end shootBullet
