extends Control

onready var fileDialog = $FileDialog
onready var Textures = $TextureRect
onready var FileButton = $Button
onready var Frame = $Frame

var texture_placed = false

func _on_Button_pressed():
	fileDialog.popup()


func _on_FileDialog_file_selected(path):
	var image = Image.new()
	var image_texture = ImageTexture.new()
	image.load(path)
	image_texture.create_from_image(image)
	Textures.texture = image_texture
	texture_placed = true
	print(image.get_width())
	print(image.get_height())

func _physics_process(delta):
	if texture_placed == true:
		Frame.visible = false


#func _on_Transition_pressed():
#	if get_tree().get_root().get_node("Photo2"):
#		print("hello")
