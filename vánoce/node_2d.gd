extends Node2D


func _on_texture_button_pressed() -> void:
	print("hej")
	$TextureButton.visible = false
	$"PixilFrame0(2)".visible = true




func _on_texture_button_2_pressed() -> void:
	print("a gun!")
	$TextureButton2.visible = false
	$"PixilFrame0(5)".visible = true
   
