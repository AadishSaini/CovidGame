extends Button

export (PackedScene) var start_scene := preload("res://Levels/StartScreen.tscn")

func _on_Button_button_down():
	get_tree().change_scene_to(start_scene)
