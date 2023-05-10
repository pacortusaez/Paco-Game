extends Control




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass


func _on_button_pressed():
	get_tree().change_scene_to_file("res://Juego/1.tscn")
	queue_free()
	pass # Replace with function body.

