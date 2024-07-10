extends ColorRect

@onready var label = $Label


func update_round(round_number : int):
	label.text = "round %d" % [round_number]
	show()
	await get_tree().create_timer(1.4).timeout
	hide()
