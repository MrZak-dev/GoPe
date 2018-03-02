extends Area2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass


func player_touched(body):
	var bodyName = body.get_class()
	if bodyName == "KinematicBody2D":
		if global.default_check_point.x < self.position.x:
			global.default_check_point = self.position
			$Sprite.play("green")
	
	
	pass
