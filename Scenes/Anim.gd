extends Node2D

onready var Anim = $AnimationPlayer

func _physics_process(delta):
	print(Variables.transition_pressed)
	if Variables.transition_pressed == true:
		Anim.play("transition")


func _on_AnimationPlayer_animation_finished(anim_name):
	Variables.transition_pressed = false
	get_tree().change_scene("res://Scenes/PhotoInfo1.tscn")
