extends Node2D

func set_initial_state():
	pass


func _on_button_pressed() -> void:
	$AudioStreamPlayer.play()
