extends KinematicBody2D

export (int) var speed = 400

var velocity = Vector2()

func get_input():
	look_at(get_global_mouse_position())
	velocity = Vector2()
	if Input.is_action_pressed("move_down"):
		velocity = Vector2(-speed, 0).rotated(rotation)
	if Input.is_action_pressed("move_up"):
		velocity = Vector2(speed, 0).rotated(rotation)

func _physics_process(delta):
	get_input()
	var collision = move_and_collide(velocity * delta)
	if collision:
		pass
	velocity = move_and_slide(velocity)

