extends MarginContainer


func _ready():
	for nodes in $Layout/MidLayout/MarginContainer/Buttons.get_children():
		nodes.connect("pressed",self,"de_focus")
	

func _process(delta):
	rect_size = get_viewport_rect().end
	if Input.is_action_just_pressed("ui_accept") and get_focus_owner() == null:
		$Layout/MidLayout/MarginContainer/Buttons/Play.grab_focus()
	

func de_focus():
	get_focus_owner().release_focus()
	

# Menu Buttons
# ============
func _on_Play_pressed():
	Overlay.get_node("SceneChanger").change_scene("res://Scenes/LevelSelect.tscn")

func _on_Settings_pressed():
	pass

func _on_Exit_pressed():
	get_tree().quit()



