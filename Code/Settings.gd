extends MarginContainer

onready var check_buttons = get_node("VBoxContainer/MarginContainer/TabContainer/Graphics/ScrollContainer/VBoxContainer")

func _ready():
	check_buttons.get_node("FullScreen").pressed = Global.settings.FullScreen

func _on_ExitButton_pressed():
	get_tree().change_scene("res://Scenes/LevelSelect.tscn")

func _process(delta):
	Global.settings.FullScreen = $VBoxContainer/MarginContainer/TabContainer/Graphics/ScrollContainer/VBoxContainer/FullScreen.pressed
	
