extends Control

func _physics_process(delta):
	var global = get_node("/root/Global")
	var fs = global.final_score
	get_node("Label3").text = str(fs)
