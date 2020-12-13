extends Node


func _ready():
	pass

func _process(delta):
	if Input.is_action_just_pressed("f_fullscreen"):
		OS.window_fullscreen = not OS.window_fullscreen
	

