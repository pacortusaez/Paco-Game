extends Label

#var coins = 0

func _ready():
	

	pass
	#$".".set_text(Globas.coins2)
	
func _process(delta):
	
	
	$".".set_text(str(Globas.coins2))
	
