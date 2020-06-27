class_name Actor
extends KinematicBody2D

export var speed: Vector2
var velocity: Vector2
var direction: String
var idle: bool

onready var anim = $AnimatedSprite


func _ready() -> void:
	direction = "down"
	idle = true
	anim.playing = true


func play_animation(dir) -> void:
	if idle:
		anim.animation = "idle " + dir
	else:
		anim.animation = "walking " + dir

	
func get_move_velocity(speed: Vector2) -> Vector2:
	var move_vector = Vector2(0, 0)
	
	idle = false
	
	if Input.is_action_pressed("left"):
		move_vector.x = -1
		direction = "left"
	elif Input.is_action_pressed("right"):
		move_vector.x = 1
		direction = "right"
	elif Input.is_action_pressed("up"):
		move_vector.y = -1
		direction = "up"
	elif Input.is_action_pressed("down"):
		move_vector.y = 1
		direction = "down"
	else:
		idle = true
	
	return move_vector * speed
