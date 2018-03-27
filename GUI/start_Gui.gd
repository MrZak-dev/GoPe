extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	$buttons/play_btn.connect("released",self,"on_play_btn_released")
	$buttons/s_btn/sound_btn.connect("released",self,"on_sound_btn_released")
	$buttons/m_btn/music_btn.connect("released",self,"on_music_btn_released")
	pass

func _physics_process(delta):
	
	pass
	
func on_play_btn_released():
	get_tree().change_scene("Levels/World1.tscn")
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
