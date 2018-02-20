extends Control

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	var ev = InputEventScreenTouch.new()
	ev.set_as_action("ui_up",true)
	pass

func _process(delta):
	#if ev.is_pressed():
	#	global.jump = true
	#	$AnimatedSprite.play("pressed")
	pass
func _gui_input(event):
	#if ev.is_pressed():
	#	global.jump = true
	#	$AnimatedSprite.play("pressed")
	#if event.is_action_released(InputEventScreenTouch):
		#$AnimatedSprite.play("normal")
	pass