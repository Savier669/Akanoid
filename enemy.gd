extends RigidBody2D

var hp : int = 5

func _ready() -> void:
	$DeathAnimation.hide()
	$DeathAnimation.stop()
	var mob_types : Array = $AnimatedSprite2D.sprite_frames.get_animation_names()
	$AnimatedSprite2D.play(mob_types[randi() % mob_types.size()])


func _process(delta : float) -> void:
	if Input.is_action_pressed("space"):
		mob_death()


func on_hit() -> void:
	hp -= 1
	if hp <= 0:
		mob_death()


func mob_death() -> void:
	$AnimatedSprite2D.hide()
	$DeathAnimation.show()
	$DeathAnimation.play()
	await $DeathAnimation.animation_finished
	queue_free()

