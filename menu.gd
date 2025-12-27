extends Control


func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://game.tscn")


func _on_lg_pressed() -> void:
	Global.skin = ("light green")


func _on_dg_pressed() -> void:
	Global.skin = ("deep green")


func _on_about_pressed() -> void:
	get_tree().call_deferred("change_scene_to_file", "res://about.tscn")
