extends CharacterBody2D

const SPEED = 5
const JUMP_VELOCITY = -400.0

func _ready() -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	set_motion_mode(MOTION_MODE_FLOATING)

func _physics_process(delta : float) -> void:
	var mouse_pos : Vector2 = get_global_mouse_position()
	velocity.x = (mouse_pos.x - global_position.x) * SPEED
	move_and_slide()
