extends Control

func _ready():
	pass # Replace with function body.


func _on_button_credit_pressed():
	get_tree().change_scene_to_file("res://Juego/2.tscn")
	queue_free()
	pass # Replace with function body.
