extends CharacterBody3D
@export var player: CharacterBody3D
@export var speed: float = 4
@export var damage: int = 10

@export var positin_offset: float = 2


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.enemies.append(self)


func _physics_process(delta: float) -> void:
	
	look_at(player.global_position)
	rotation = Vector3(0.0, rotation.y + PI, rotation.z)
	
	if not $PauseTimer.is_stopped():
		return
	
	var direction:Vector3= (player.global_position + Vector3(0, positin_offset, 0)) - global_position
	global_position += direction.normalized() * speed * delta


func _on_area_3d_body_entered(body: Node3D) -> void:
	if body is MainCharacter:
		var main_char: MainCharacter = body
		main_char.damage(damage)
		$PauseTimer.start()
