extends Area3D
class_name Bullet

const FORWARD_SPEED := 30.0;
var forward: Vector3;
var prevPos: Vector3;

func _ready():
  forward = -get_global_transform().basis.z.normalized();
  prevPos = global_position;
# end _ready

func _process(delta: float) -> void:
  prevPos = global_position;
  global_position += forward * delta * FORWARD_SPEED;
  var movedVector = prevPos - global_position;

  $Raycast.target_position = movedVector;
  if $Raycast.is_colliding():
    queue_free();
  # end if
# end _process

func _on_body_entered(_body: Node3D) -> void:
  queue_free();
  pass

func _on_timer_timeout() -> void:
  queue_free();
