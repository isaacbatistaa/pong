extends Control

func _process(_delta):
	$CanvasLayer/p1.text = str(Globalvar.ptsp1)
	$CanvasLayer/p2.text = str(Globalvar.ptsp2)
