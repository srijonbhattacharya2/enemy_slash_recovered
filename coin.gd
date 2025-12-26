extends Sprite2D

@onready var collect_sound = $AudioStreamPlayer2D
@onready var timer = $Timer
@onready var label = get_node("../../Game/Label")
@onready var label_2: Label = $"../../Game/Label2"
@onready var label_3: Label = $"../../Game/Label3"

func _on_timer_timeout() -> void :
	queue_free()

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == ("Player"):
		Global.coins += 1
		$"../../Coin Labels/Label".text = str(Global.coins)
		$"../../Coin Labels/Label2".text = str(Global.coins)
		$"../../Coin Labels/Label3".text = str(Global.coins)
		$"../../Coin Labels/Label4".text = str(Global.coins)
		$"../../Coin Labels/Label5".text = str(Global.coins)
		$"../../Coin Labels/Label6".text = str(Global.coins)
		visible = false
		$Timer.start()
		visible = false
		$AudioStreamPlayer2D.play()
