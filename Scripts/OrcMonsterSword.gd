extends KinematicBody2D

const WALK_SPEED = 80
var direction = Vector2(1,0)
var mouvements = Vector2()
func _ready():
	$Area2D.connect("body_entered",self,"player_touched")
	pass

func _physics_process(delta):
	if !$Area2D/right_limit.is_colliding():
		direction.x = -1
		$Area2D/AnimatedSprite.set_flip_h(true)
	if !$Area2D/left_limit.is_colliding():
		direction.x = 1
		$Area2D/AnimatedSprite.set_flip_h(false)
	mouvements.x = WALK_SPEED*direction.x
	move_and_slide(mouvements)
	pass

func player_touched(body):
	if body.name == "Player":
		global.player_health -= 14
		if global.player_health <= 0:
			body.position = global.check_point
			global.player_lives -= 1
			global.player_health = 100
	pass