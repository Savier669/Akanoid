extends RigidBody2D

@export var max_time_increase_speed : int 
var allowed : bool
var number_of_time = 0 

func _ready():
	linear_velocity = Vector2(100, -100)

func increase_speed(speed : int) -> void:
	linear_velocity *= 1.3

func _on_body_entered(body):
	if allowed and number_of_time < max_time_increase_speed:
		number_of_time += 1
		increase_speed(2)
		allowed = false

func _on_increase_speed_cooldown_timeout():
	allowed = true
