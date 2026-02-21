extends Node3D

@export var enemy_scene: PackedScene
@export var player: CharacterBody3D


func _on_timer_timeout() -> void:
	var enemy = enemy_scene.instantiate()
	enemy.player = player
	add_child(enemy)
