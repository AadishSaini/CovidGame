extends KinematicBody2D

var vel: = Vector2(0, 500)
var social_score = 0
var scored = false

func _physics_process(delta):
	var global = get_node("/root/Global")
	if is_on_wall():
		vel.y *= -1
	var collision = move_and_collide(Vector2.ZERO * delta)
	if collision:
		if "Bullet" in collision.collider.name:
			global.social_score+=10
			queue_free()
		if "Player" in collision.collider.name:
			global.sanitizer_points-=10
	move_and_slide(vel)
