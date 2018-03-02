extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var coins_picked 
var player_lives
var check_point = Vector2(150,150)

var jump = false
var right_button = false
var left_button = false
func _ready():
	coins_picked = 0
	player_lives = 5
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
