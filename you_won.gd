extends Control



func _on_exit_pressed() -> void:
	await get_tree().create_timer(0.6).timeout
	get_tree().quit()
