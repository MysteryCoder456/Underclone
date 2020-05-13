extends KinematicBody2D

export var speed: Vector2
var velocity: Vector2

func _physics_process(delta: float) -> void:
	velocity = get_move_velocity(speed)
	velocity = move_and_slide(velocity * delta, Vector2(0, 0))
	
func get_move_velocity(speed: Vector2) -> Vector2:
	var move_vector = Vector2(
		Input.get_action_strength("right") - Input.get_action_strength("left"),
		Input.get_action_strength("down") - Input.get_action_strength("up")
	)
	return move_vector * speed