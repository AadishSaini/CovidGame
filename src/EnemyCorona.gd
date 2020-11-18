extends KinematicBody2D

var vel: = Vector2(0, 300)

func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	if is_on_wall():
		vel.y *= -1
	move_and_slide(vel)
