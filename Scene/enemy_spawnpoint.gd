extends Node2D


var enemy_scene : PackedScene = preload("res://enemy.tscn")


func _ready() -> void:
	spawn()


func spawn() -> void:
	get_node('AnimatedSprite2D').play()
	await get_node('AnimatedSprite2D').animation_finished
	var enemy : RigidBody2D = enemy_scene.instantiate()

	add_child(enemy)
	$AnimatedSprite2D.play_backwards()
	await $AnimatedSprite2D.animation_finished


