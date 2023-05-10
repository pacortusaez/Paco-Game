extends Label

var coins2 =0
var tiempo = 150
var turno = true

#func load_level():
	#var newlevel
	#var nivel = load("res://Juego/"+str(escena)+".tscn")
	#newlevel = nivel.instance()
	#add_child(newlevel)
func _ready():
	
	pass
func _process(delta):
	
	if coins2==3 :
		get_tree().change_scene_to_file("res://Juego/4.tscn")
		queue_free()
	if tiempo==0 :
		get_tree().change_scene_to_file("res://Juego/6.tscn")
		queue_free()
	pass
func update_time():
	get_tree().get_nodes_in_group("tiempo")[0].set_text(str(tiempo))
func update_monedas():
	get_tree().get_nodes_in_group("monedas")[0].set_text(str(coins2))

