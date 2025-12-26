extends Control



func _on_exit_pressed() -> void:
	await get_tree().create_timer(0.6).timeout
	get_tree().quit()


func _on_restart_pressed() -> void:
	Global.coins = 0
	Global.health = 3
	Global.sword = 0
	Global.sword_usage = 0
	get_tree().call_deferred("change_scene_to_file", "res://game.tscn")
