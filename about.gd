extends Control



func _on_back_pressed() -> void:
	get_tree().call_deferred("change_scene_to_file", "res://menu.tscn")
