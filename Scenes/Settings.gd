extends MarginContainer

func _ready():
	pass

func _on_ExitButton_pressed():
	get_tree().change_scene("res://Scenes/LevelSelect.tscn")
