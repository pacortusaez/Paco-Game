extends Area2D

signal coincollected

func _on_body_entered(body):
	emit_signal("coincollected")
	queue_free()
	Globas.coins2+=1
	
	pass # Replace with function body.
  
