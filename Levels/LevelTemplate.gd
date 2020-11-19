extends Node2D

var sanitizer_points = 100

func _ready():
	pass

func _physics_process(delta):
	var collision = get_node("Player").move_and_collide(get_node("Player").velocity * delta)
	if collision:
		if collision.collider.name == "EnemyCorona" or collision.collider.name == "EnemyCorona2" or collision.collider.name == "EnemyCorona3" or collision.collider.name == "EnemyCorona4" or collision.collider.name == "EnemyCorona5" or collision.collider.name == "EnemyCorona6" or collision.collider.name == "EnemyCorona7":
			sanitizer_points -= 10
			get_node("CanvasLayer/Label").text = str(sanitizer_points)
