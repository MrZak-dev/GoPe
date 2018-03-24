extends Node
#configuration variables :
var sound
var music

#player score variables
var coins_picked 
var player_health
var player_lives
var check_point = Vector2(150,150)

func _ready():
	#settings variables initialisation
	sound = true
	music = true
	#player score variables initialisation
	player_health = 100
	coins_picked = 0
	player_lives = 5
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
