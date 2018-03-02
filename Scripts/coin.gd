extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"


func _ready():
	$coin_area.connect("body_entered",self,"picked")
	pass
	
func picked(body):
	queue_free()
	global.coins_picked += 1
	
	
	pass