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
	if Input.is_action_just_pressed("fire"):
		shoot()

func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)

func shoot():	
	var b = preload("res://src/Bullet.tscn").instance()
	owner.add_child(b)
	b.transform = $Muzzle.global_transform
