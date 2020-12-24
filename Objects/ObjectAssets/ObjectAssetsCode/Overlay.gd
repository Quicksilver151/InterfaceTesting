extends CanvasLayer

onready var SceneChanger = get_node("/root/Overlay").get_node("SceneChanger")
onready var ConfirmExit = get_node("ConfirmExit")

func _ready():
	pass

func _on_ConfirmExit_confirmed():
	get_tree().quit()
