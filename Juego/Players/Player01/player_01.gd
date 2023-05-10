extends CharacterBody2D



const SPEED = 200.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle Jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		$AnimationPlayer.play("jump")

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
		$AnimationPlayer.play("run")
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		$AnimationPlayer.play("idle")
		
	$Sprite2D.flip_h = direction < 0 if direction !=0 else $Sprite2D.flip_h
	
	print (direction)	
	
	
	move_and_slide()
	
func _on_timer_timeout():
	if(Globas.turno):
		Globas.tiempo -=1
		Globas.update_time()
	



