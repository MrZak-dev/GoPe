extends CanvasLayer


func _ready():
	$continue.connect("released",self,"continue_btn_released")
	pass


func continue_btn_released():
	var player_control_tscn = load("res://GUI/player_controls.tscn")
	var player_control_scene = player_control_tscn.instance()
	var world = get_parent()
	world.add_child(player_control_scene)
	self.queue_free()
	global.is_pause = false
	pass