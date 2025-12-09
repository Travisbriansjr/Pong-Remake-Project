extends Node2D


# Called every frame. 'delta' is the elapsed time since the previous frame.


func _on_ball_score(Value: Variant) -> void:
	$ScoreText.text = Value
	pass # Replace with function body.
