extends Node2D
var _player_script: Node2D # Referencia al script del jugador, para poder bajar vida

func _on_area_2d_body_entered(body):
	if body.is_in_group("player"):
		_player_script = body.get_node("MainCharacterMovement")
		# "Golpeamos" al personaje
		_player_script.hit(10)
