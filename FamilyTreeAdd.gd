extends Control

onready var button = $ButtonControl/Button
onready var buttonControl = $ButtonControl
onready var spawner = $Position2D
var minus_pressed = false

func _on_Button_pressed():
	var photo = preload("res://Scenes/Photo.tscn").instance()
	add_child(photo)
#	add_child_below_node(get_tree().get_root().get_node("FamilyTreeAdd"), photo)
	photo.set_position(spawner.get_global_position())
	photo.rect_scale.x = 0.4
	photo.rect_scale.y = 0.4
	spawner.position.x += 256
	buttonControl.position.x += 256

func _on_Button2_pressed():
	minus_pressed = true
