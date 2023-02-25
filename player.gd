extends Node2D

export (Vector2) var startPosition 
export (Vector2) var stopPosition
export (int, 2, 7) var timeToFinish = 4

var directionStartStop = false

# Called when the node enters the scene tree for the first time.
func _ready():
	var tween = $Tween
	tween.connect("tween_all_completed", self, "changeDirection")
	changeDirection()

func changeDirection():
#	print("changeDirection")
	var tween = $Tween
	directionStartStop = not directionStartStop
	if directionStartStop:
		tween.interpolate_property(self, "position", startPosition, stopPosition, timeToFinish)
	else:
		tween.interpolate_property(self, "position", stopPosition, startPosition, timeToFinish)
	tween.start()
	#print("Tween start ", directionStartStop)
