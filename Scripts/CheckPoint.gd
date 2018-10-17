extends Area2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	self.connect("body_entered",self,"player_touched")
	pass

func player_touched(body):
	var bodyName = body.get_class()
	if bodyName == "KinematicBody2D":
		if global.check_point.x < self.position.x:
			global.check_point = self.position
			$Sprite.play("green")
	
	
	pass
