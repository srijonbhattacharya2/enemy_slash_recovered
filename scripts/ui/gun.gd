extends Sprite2D

func _ready() -> void :
	visible = false


func _process(_delta: float) -> void :
	if Global.gun == 1:
		visible = true


	var mouse_position: Vector2 = get_global_mouse_position()


	var direction: Vector2 = mouse_position - global_position


	rotation = direction.angle()
