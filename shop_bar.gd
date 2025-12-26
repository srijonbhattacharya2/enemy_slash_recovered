extends Control


func _on_sword_buy_pressed() -> void :
	if Global.coins > 9:
		if Global.sword == 0:
			Global.coins -= 10
			Global.sword = 1
			print("Sword Earned!!!")
		else:
			print ("Sword already earned.")
