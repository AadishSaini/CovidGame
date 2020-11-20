extends Button
func _ready():
	pass 

func _on_Instructions_button_down():
	get_tree().change_scene("res://Levels/Instructions.tscn")
