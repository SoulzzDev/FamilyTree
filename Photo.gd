extends Control

onready var fileDialog = $FileDialog
onready var Textures = $TextureRect

func _on_Button_pressed():
	fileDialog.popup()




func _on_FileDialog_file_selected(path):
	var image = Image.new()
	var image_texture = ImageTexture.new()
	image.load(path)
	image_texture.create_from_image(image)
	Textures.texture = image_texture
