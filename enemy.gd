extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta



	var input = randi_range(1,4)
	if input == 1 and is_on_floor():
		velocity.y = JUMP_VELOCITY
	elif input == 2:
		velocity.x = -1 * SPEED
	elif input == 3:
		velocity.x = 1 * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	# Handle jump.
	#if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	#var direction := Input.get_axis("ui_left", "ui_right")
	#if direction:
		#velocity.x = direction * SPEED
	#else:
		#velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
