extends CharacterBody3D

var gravity = -5.0

func _physics_process(delta):
	if not is_on_floor():
		velocity.y += gravity * delta
	else:
		velocity.y = 0

	move_and_slide()

	
@export var mrtvola_scene: PackedScene
var health = 100

func take_damage(dmg):
	health -= dmg
	if health <= 0:
		zemri()

func zemri():
	spawn_mrtvola()
	queue_free() # smaže válečníka

func spawn_mrtvola():
	var mrtvola = mrtvola_scene.instantiate()
	mrtvola.global_transform = global_transform	
	get_parent().add_child(mrtvola)

func _on_body_entered(body):
	if body is CharacterBody3D:
		queue_free() # smaže mrtvolu
		
