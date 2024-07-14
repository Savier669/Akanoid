extends RigidBody2D

var hp = 5

func _ready():
	$DeathAnimation.hide()
	$DeathAnimation.stop()
	var mob_types = $AnimatedSprite2D.sprite_frames.get_animation_names()
	$AnimatedSprite2D.play(mob_types[randi() % mob_types.size()])


func _process(delta):
	if Input.is_action_pressed("space"):
		mob_death()


func on_hit():
	hp -= 1
	if hp <= 0:
		mob_death()


func mob_death():
	$AnimatedSprite2D.hide()
	$DeathAnimation.show()
	$DeathAnimation.play()
	await $DeathAnimation.animation_finished
	queue_free()

