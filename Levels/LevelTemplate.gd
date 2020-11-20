extends Node2D

var sanitizer_points = 90
var social_score = 0
export var final_score = 0

func _physics_process(delta):
	var global = get_node("/root/Global")
	var collision = get_node("Player").move_and_collide(get_node("Player").velocity * delta)
	if collision:
		if collision.collider.name == "Portal":
			get_tree().change_scene_to(preload("res://Levels/EndScreen.tscn"))
	get_node("CanvasLayer/Label").text = str(global.sanitizer_points)
	get_node("CanvasLayer/Label2").text = str(global.social_score)
	global.final_score = global.sanitizer_points+global.social_score
