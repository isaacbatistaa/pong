extends KinematicBody2D

var motion = Vector2.ZERO;

var randmove = [130, -130]
var move = randmove[randi() % randmove.size()];

var altura = 0;

func _process(_delta):
	motion.x = move
	motion.y = altura
	
	motion = move_and_slide(motion,Vector2.UP)

func _on_Area2D_body_entered(body):
	altura = randi() % -350 + -250;
	if body.name == 'player1':
		move = 500
	else:
		move = -500
	pass

func _on_Area2D_area_entered(area):
	if area.name == 'arearight' or area.name == 'arealeft':
		if area.name == 'arearight':
			Globalvar.ptsp1 += 1;
		else:
			Globalvar.ptsp2 += 1;
		get_tree().reload_current_scene();
	else:
		if move > 0:
			move = 550
		else:
			move = -550
		altura = -altura
	pass
