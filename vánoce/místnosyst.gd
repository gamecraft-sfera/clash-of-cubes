extends Sprite2D


func _on_texture_button_pressed() -> void:
	print ("I have legs pal")
	$TextureButton.visible = false
	$Nozickyadarek3.visible = true
	$Nozickyadarek3/AnimationPlay.play("DarekRun")
	
func _on_happy_button_pressed() -> void:
	$HappyButton.visible = false
	%UnHappy.visible = true
