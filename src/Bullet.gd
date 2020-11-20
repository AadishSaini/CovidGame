extends KinematicBody2D

var speed = 700
var hit = false

func _physics_process(delta):
	position += transform.x * speed * delta
