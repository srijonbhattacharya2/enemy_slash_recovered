extends Area2D

@onready var collect_sound = $AudioStreamPlayer2D
@onready var timer = $Timer
@onready var label = get_node("../../Game/Label")
@onready var label_2: Label = $"../../Game/Label2"
@onready var label_3: Label = $"../../Game/Label3"

func _on_body_entered(_body: CharacterBody2D) -> void :
	Global.coins += 1
	$AudioStreamPlayer2D.play()
	timer.start()

func _on_timer_timeout() -> void :
	queue_free()
