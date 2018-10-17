extends CanvasLayer

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	$pause_btn.connect("released",self,"paus_btn_released")
	pass

func paus_btn_released():
	var pause_tscn = load("res://GUI/pause_scene.tscn")
	var pause_scene = pause_tscn.instance()
	var world = get_parent()
	world.add_child(pause_scene)
	self.queue_free()##heeeere
	global.is_pause = true
	pass