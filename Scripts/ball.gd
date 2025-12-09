extends CharacterBody2D
signal Score(Value)
signal EnemyScore(Value)

const BounceSpeed= 150.0
var PScore = 0
var EScore =0
func _ready() -> void:
	velocity.y = BounceSpeed
	velocity.x = BounceSpeed 

func _physics_process(delta: float) -> void:
	var collision_info = move_and_collide(velocity * delta)
	
	if collision_info:
		velocity = velocity.bounce(collision_info.get_normal())
		
	
	if position.x > 350:
		position.x = 0
		position.y = 0
		velocity.y = BounceSpeed
		velocity.x = -BounceSpeed 
		PScore += 1
		emit_signal("Score", var_to_str(PScore))
	else: if position.x < -350:
		position.x = 0
		position.y = 0
		velocity.y = BounceSpeed
		velocity.x = BounceSpeed 
		EScore += 1
		emit_signal("EnemyScore", var_to_str(EScore))
	
