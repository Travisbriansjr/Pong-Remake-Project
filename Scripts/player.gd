extends CharacterBody2D


@export var Speed = 1000.0


func _physics_process(delta: float) -> void:
	velocity = Vector2.ZERO
	# Handle jump.
	if Input.is_action_pressed("MoveUp"):
		velocity.y = -Speed * delta * 2
	else: if Input.is_action_pressed("MoveDown"):
		velocity.y = Speed * delta * 2
	
	if position.x != -200:
		position.x = -200

	move_and_slide()
		

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
