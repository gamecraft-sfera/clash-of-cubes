extends CharacterBody3D

@export var player: CharacterBody3D


func _on_timer_timeout() -> void:
	var sip = load("res://sip.tscn").instantiate()
	sip.target_position = player.global_position
	add_child(sip)
