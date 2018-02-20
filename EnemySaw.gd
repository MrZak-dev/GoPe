extends KinematicBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
const TURNING_SPEED = 20
func _ready():
	$Area2D.connect("body_entered",self,"player_touched")
	pass

func _physics_process(delta):
	self.rotate(PI + TURNING_SPEED)
	pass


func player_touched(body):
	var bodyName = body.get_class()
	if bodyName == "KinematicBody2D":
		body.position = global.check_point
		global.player_lives -= 1
	pass