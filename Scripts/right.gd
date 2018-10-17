extends Control

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
func _gui_input(event):
	if event.is_action_pressed(InputEventScreenTouch):
		global.right_button = true
		$AnimatedSprite.play("pressed")
	if event.is_action_released(InputEventScreenTouch):
		global.right_button = false
		$AnimatedSprite.play("normal")
	pass