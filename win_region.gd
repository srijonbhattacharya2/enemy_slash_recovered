extends Area2D


func _on_body_entered(body: CharacterBody2D) -> void:
	get_tree().call_deferred("change_scene_to_file", "res://you_won.tscn")
