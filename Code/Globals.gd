extends Node

# SETTINGS VARIABLES
var settings = {"FullScreen":false}



func _ready():
	pass

func _process(delta):
	OS.window_fullscreen = settings.FullScreen
	if Input.is_action_just_pressed("f_fullscreen"):
		settings.FullScreen = !settings.FullScreen
	

