extends AudioStreamPlayer

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _physics_process(delta):
	if global.sound:
		self.play()
	else:
		self.stop()
	pass