extends KinematicBody2D

var motion = Vector2.ZERO;

func _process(_delta):
	motion.x = 0
	motion.y = 0
	if Input.is_action_pressed("ui_up"):
		motion.y = -300
	if Input.is_action_pressed('ui_down'):
		motion.y = 300
	
	motion = move_and_slide(motion,Vector2.UP)
