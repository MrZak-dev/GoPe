extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"


func _ready():
	$coin_area.connect("body_entered",self,"picked")
	pass
	
func picked(body):
	if global.sound:
		$coin_pick.play() #Not working -> the queue_free function run before this
	global.coins_picked += 1
	var coin_area = get_child(0) #get the coin area
	#self.remove_child(coin_area) #remove coin_area # ther is an error here fix it later
	pass