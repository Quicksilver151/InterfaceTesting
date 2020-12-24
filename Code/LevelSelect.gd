extends MarginContainer

onready var levels = get_node("Layout/Middle/Levels")

func _ready():
	for node in levels.get_children():
		node.text = node.name
	for button in get_tree().get_nodes_in_group("level_select_ui_buttons"):
		button.connect("pressed",self,button.get_parent().name.to_lower())

func home():
	Overlay.SceneChanger.change_scene("res://Scenes/MainMenu.tscn")

func stats():
	pass

func playerconfig():
	pass

func settings():
	get_tree().change_scene("res://Scenes/Settings.tscn")

