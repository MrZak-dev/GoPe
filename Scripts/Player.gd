extends KinematicBody2D

const yDIRECTION = Vector2(0,-1)
const ACCELARATION = 50
const MAX_SPEED = 250
const GRAVITY = 20
const JUMP_SPEED = 600
var motion = Vector2()


func _physics_process(delta):
	#Movements physiques
	var friction = false
	motion.y += GRAVITY
	if Input.is_action_pressed("ui_right"):
		motion.x = min(motion.x+ACCELARATION,MAX_SPEED)
		$Sprite.flip_h = false # no flip 
		$Sprite.play("run") 
	elif Input.is_action_pressed("ui_left"):
		motion.x = max(motion.x-ACCELARATION,-MAX_SPEED)
		$Sprite.flip_h = true #flip when left pressed
		$Sprite.play("run") 
	else:
		$Sprite.play("idle")
		friction = true
	if is_on_floor():
		if Input.is_action_pressed("ui_up"):
			if global.sound:
				$jump_sound.play()
			motion.y = -JUMP_SPEED
		if friction == true:
			motion.x = lerp(motion.x, 0 ,0.2)
	else:
		if motion.y < 0 :
			$Sprite.play("jump")
		else:
			$Sprite.play("fall")
		if friction == true:
			motion.x = lerp(motion.x, 0 ,0.05) #smooth stop
		
	if self.position.y > 390:
		self.position = global.check_point
		global.player_health = 100
		global.player_lives -= 1
	motion = move_and_slide(motion,yDIRECTION)
	
	pass
	


