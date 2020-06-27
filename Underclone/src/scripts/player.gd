extends Actor
	

func _physics_process(delta: float) -> void:
	play_animation(direction)
	velocity = get_move_velocity(speed)
	velocity = move_and_slide(velocity * delta, Vector2(0, 0))