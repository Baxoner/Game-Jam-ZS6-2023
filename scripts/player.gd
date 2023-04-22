extends CharacterBody2D

const SPEED = 300.0


func _input(event):
	if event.is_action_pressed("Shoot") and not $AnimationPlayer.is_playing():
		$AnimationPlayer.play("gunShot")


func _process(delta):
	$Gun.look_at(get_global_mouse_position())


func _physics_process(delta):
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var directionX = Input.get_axis("WalkLeft", "WalkRight")
	if directionX:
		velocity.x = directionX * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	var directionY = Input.get_axis("WalkUp", "WalkDown")
	if directionY:
		velocity.y = directionY * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
		
	if directionX > 0:
		$PlayerSprite.flip_h = true
	else:
		$PlayerSprite.flip_h = false

	move_and_slide()
	
	
