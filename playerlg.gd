extends Sprite2D

func _process(delta: float) -> void :
	if Global.skin == ("light green"):
		visible = true

	if Global.skin == ("deep green"):
		visible = false
