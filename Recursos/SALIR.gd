extends Button
func load_level():
	var newlevel
	var nivel = load("res://Juego/"+str(Globas.escena)+".tscn")
	newlevel = nivel.instance()
	add_child(newlevel)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass 


func _on_pressed():
	get_tree().change_scene()
	queue_free()

