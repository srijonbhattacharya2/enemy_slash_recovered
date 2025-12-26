extends Control


func _ready() -> void :
	pass

func _process(_delta: float) -> void :
	if Global.skin == ("light green"):
		$Sprite2D.visible = true
		$Sprite2D2.visible = false
	if Global.skin == ("deep green"):
		$Sprite2D.visible = false
		$Sprite2D2.visible = true

func _on_left_pressed() -> void :
	Global.skin = ("light green")


func _on_right_pressed() -> void :
	Global.skin = ("deep green")
