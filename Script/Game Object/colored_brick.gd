extends StaticBody2D

@export var health : int
@export var unbreakable : bool

func _on_area_2d_body_exited(body):
	health -= 1
	if health <= 0 and !unbreakable:
		queue_free() 
