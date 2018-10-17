extends KinematicBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	
	pass

func _process(delta):
	if $RayCast2D.is_colliding():
		print($RayCast2D.get_collider())
	else:
		print("nop")
	pass
