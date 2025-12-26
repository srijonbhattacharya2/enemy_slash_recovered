extends Sprite2D


func _process(delta: float) -> void:
	if Global.sword == 0:
		visible = false

	if Global.sword == 1:
		visible = true
