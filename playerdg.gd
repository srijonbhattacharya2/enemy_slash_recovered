extends Sprite2D

func _process(delta: float) -> void :
	if Global.skin == ("light green"):
		visible = false

	if Global.skin == ("deep green"):
		visible = true
