extends MarginContainer

signal scene_changed()
onready var anim = $FadeAnimation

func change_scene(level_path:String, delay = 0.1):
	yield(get_tree().create_timer(delay),"timeout")
	anim.play("fade")
	yield(get_tree().create_timer(0.75),"timeout")
	get_tree().change_scene(level_path)
	emit_signal("scene_changed")
