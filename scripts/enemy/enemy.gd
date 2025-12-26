#enemy.gd
#========
extends Sprite2D

@export var target: CharacterBody2D
@export var speed: = 100.0
@onready var Error: AudioStreamPlayer2D = $"../AudioStreamPlayer2D"


func _physics_process(delta):
	if target == null:
		return

	self.global_position = self.global_position.move_toward(
		target.global_position, 
		speed * delta
	)

	if Global.health < 1:
		await get_tree().create_timer(1.0).timeout
		print("Self valid:", is_instance_valid(self))
		print("Inside tree:", is_inside_tree())
		print("Tree:", get_tree())
		#get_tree().change_scene_to_file("res://game_over.tscn")
		get_tree().call_deferred("change_scene_to_file", "res://game_over.tscn")


func _on_area_2d_body_entered(body: Node2D) -> void :
	if body.name == "Player":
		if Global.sword == 1:
			if Global.sword_usage == 1:
				visible = false
				move_to_random_position()
				visible = true
			else:
				Global.health -= 1
				print("Health:", Global.health)
		else:
			Global.health -= 1
			print("Health:", Global.health)

func move_to_random_position():
	var viewport_size = get_viewport_rect().size


	var random_x = randf_range(0, viewport_size.x)
	var random_y = randf_range(0, viewport_size.y)
	position = Vector2(random_x, random_y)
