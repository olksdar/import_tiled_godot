
extends Node2D

func _ready():
	var tween = $Tween
	var obj = $Path2D/PathFollow2D
	var curve = $Path2D.curve
	tween.interpolate_property(obj, "offset", 0, curve.get_baked_length(), 20)
	tween.start()
