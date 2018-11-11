extends Node
#Ads variables
var admob = null
var isReal = true
var isTop = false
var adBannerId = "ca-app-pub-3940256099942544/6300978111" # [Replace with your Ad Unit ID and delete this message.]
var adInterstitialId = "ca-app-pub-3940256099942544/1033173712" # [Replace with your Ad Unit ID and delete this message.]
var adRewardedId = "ca-app-pub-3940256099942544/5224354917" # [There is no testing option for rewarded videos, so you can use this id for testing]


func _ready():

	#var deviceSize = OS.get_screen_size()
	#print(deviceSize)
	#var appSize = Vector2(deviceSize.x , deviceSize.y)
	#OS.window_size.x = deviceSize.x
	#OS.window_size.y = deviceSize.y
	print(OS.get_screen_size())
	#OS.window_size = OS.get_screen_size()
	
	#OS.screen_orientation = 0
	
	#Ads
	if(Engine.has_singleton("AdMob")):
		admob = Engine.get_singleton("AdMob")
		admob.init(isReal, get_instance_id())
		loadBanner()
		loadInterstitial()
		loadRewardedVideo()
	get_tree().connect("screen_resized", self, "onResize")
	#Ads
	
	#$buttons/play_btn.connect("released",self,"on_play_btn_released")
	$buttons/s_btn/sound_btn.connect("released",self,"on_sound_btn_released")
	$buttons/m_btn/music_btn.connect("released",self,"on_music_btn_released")
	pass
	
func loadBanner():
	if admob != null:
		admob.loadBanner(adBannerId, isTop)
		
	pass


func _on_play_btn_released():
	get_tree().change_scene("Levels/World1.tscn")
	pass # replace with function body
	
#func on_play_btn_released():
	
#	pass
	
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


#Admob functions
func _on_admob_network_error():
	print("Network Error")
	
	
func _on_admob_ad_loaded():
	print("Ad loaded success")
	
	
func _on_settings_btn_pressed():
	if admob != null:
		admob.showBanner()
	pass # replace with function body

func onResize():
	if admob != null:
		admob.resize()

#func _on_settings_btn_released():
#	if admob != null:
#		admob.hideBanner()
#	pass # replace with function body



