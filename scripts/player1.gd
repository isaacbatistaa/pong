extends KinematicBody2D

var motion = Vector2.ZERO;
func _process(_delta):
	motion.x = 0
	motion.y = 0
	if Input.is_key_pressed(KEY_W):
		motion.y = -300
	if Input.is_key_pressed(KEY_S):
		motion.y = 300
	
	motion = move_and_slide(motion,Vector2.UP)
