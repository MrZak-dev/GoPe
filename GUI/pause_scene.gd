extends CanvasLayer


func _ready():
	var sound_btn = $buttons/s_btn
	var music_btn = $buttons/m_btn
	$continue.connect("released",self,"continue_btn_released")
	$"re-play".connect("released",self,"replay_btn_released")
	$home.connect("released",self,"home_btn_released")
	
	$buttons/s_btn/sound_btn.connect("pressed",self,"on_sound_btn_released")
	$buttons/m_btn/music_btn.connect("pressed",self,"on_music_btn_released")
	
	if global.sound:
		sound_btn.set_texture(load("res://Sprites/Gui/Buttons/normal/sound_normal.png"))
	else:
		sound_btn.set_texture(load("res://Sprites/Gui/Buttons/normal/soundoff_normal.png"))
	if global.music:
		music_btn.set_texture(load("res://Sprites/Gui/Buttons/normal/music_normal.png"))
	else:
		music_btn.set_texture(load("res://Sprites/Gui/Buttons/normal/musicoff_normal.png"))

	
	
	pass


func continue_btn_released():
	var player_control_tscn = load("res://GUI/player_controls.tscn")
	var player_control_scene = player_control_tscn.instance()
	var world = get_parent()
	world.add_child(player_control_scene)
	self.queue_free()
	global.is_pause = false
	pass
func replay_btn_released():
	var world = get_parent()
	world.queue_free()
	get_tree().change_scene("res://Levels/World"+str(global.player_level)+".tscn")
	global.is_pause = false
	global.player_health = 100
	global.player_lives = 5
	global.coins_picked = 0
	global.check_point = Vector2(150,150)
	pass
func home_btn_released():
	self.queue_free()
	get_tree().change_scene("res://GUI/start_Gui.tscn")
	global.is_pause = false
	global.check_point = Vector2(150,150)
	pass
	
func on_sound_btn_released():
	if global.sound:
		global.sound = false
		$buttons/s_btn.set_texture(load("res://Sprites/Gui/Buttons/normal/soundoff_normal.png"))
	else:
		global.sound = true
		$buttons/s_btn.set_texture(load("res://Sprites/Gui/Buttons/normal/sound_normal.png"))
	pass
	
func on_music_btn_released():
	if global.music:
		global.music = false
		$buttons/m_btn.set_texture(load("res://Sprites/Gui/Buttons/normal/musicoff_normal.png"))
	else:
		global.music = true
		$buttons/m_btn.set_texture(load("res://Sprites/Gui/Buttons/normal/music_normal.png"))
	pass
