extends RigidBody2D

@export var speed : float = 50

# Called when the node enters the scene tree for the first time.
func _ready():
	start()

func start():
	linear_velocity = Vector2(1, -1) * speed
