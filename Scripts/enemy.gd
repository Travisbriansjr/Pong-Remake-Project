extends CharacterBody2D
@export var ball: Node2D
@export var Speed = 120.0
var FrameSkip = 0
var FramesToSkip = 8

func _physics_process(delta: float) -> void:
	if ball:
		FrameSkip += 1
		
		if FrameSkip >= FramesToSkip:
			FramesToSkip = 0
			
			global_position.y = move_toward(global_position.y, ball.global_position.y, Speed * delta)
	if position.x != 200:
		position.x = 200
	
	move_and_slide()
