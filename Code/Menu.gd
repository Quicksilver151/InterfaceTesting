extends MarginContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rect_size = get_viewport_rect().end
	if Input.is_action_just_pressed("ui_accept") and get_focus_owner() == null:
		$Layout/MidLayout/MarginContainer/Buttons/Play.grab_focus()
	
	for nodes in $Layout/MidLayout/MarginContainer/Buttons.get_children():
		nodes.connect("pressed",self,"de_focus")
		
	

func de_focus():
	get_focus_owner().release_focus()

