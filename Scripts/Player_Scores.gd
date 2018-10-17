extends CanvasLayer




func _physics_process(delta):
	$"Coins Score/Label".text = str(global.coins_picked)
	$"Player lives/Label".text = str(global.player_lives)
	$"HealthBar/ProgressBar".value = global.player_health
	pass

