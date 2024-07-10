extends TextureRect

@onready var animation_player = $AnimationPlayer
@onready var round_screen = $"../round_screen"

func _unhandled_key_input(event):
	if event.is_action_pressed("accept"):
		animation_player.play("blink")
		await get_tree().create_timer(1.4).timeout
		hide()
		round_screen.update_round(1)
		#set_process_unhandled_input(false)
