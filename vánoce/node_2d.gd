extends Node2D


func _on_texture_button_pressed() -> void:
	print("hej")
	$TextureButton.visible = false
	$"PixilFrame0(2)".visible = true
