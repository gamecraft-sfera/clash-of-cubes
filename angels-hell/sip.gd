extends Area3D

@export var target_position: Vector3
@export var speed: float = 0.5

func _physics_process(delta: float) -> void:
	var direction =global_position - target_position
	direction.normalized()
	global_position = global_position + (direction * speed * delta)
	
	if global_position.distance_to(target_position) <= 0.1:
		queue_free()


	queue_free()
