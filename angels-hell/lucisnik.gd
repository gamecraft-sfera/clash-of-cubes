extends CharacterBody3D

@export var player: CharacterBody3D
@export var strela_scn: PackedScene = load("res://strela2.tscn")

func _ready() -> void:
	Global.enemies.append(self)
	await get_tree().create_timer(randf_range(0.1, 1.2)).timeout
	$Timer.wait_time = randf_range(0.8, 1.2)

func _on_timer_timeout() -> void:
	var strela = strela_scn.instantiate()
	strela.target_position = player.global_position
	add_child(strela)

func _physics_process(_delta: float) -> void:
	
	look_at(player.global_position)
	rotation = Vector3(0.0, rotation.y + PI, rotation.z)
