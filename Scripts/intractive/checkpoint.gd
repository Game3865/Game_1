extends Node2D
class_name Checkpoint

@export var spwanpoint = false

var activated = false

func _ready():
	if spwanpoint:
		activate()
		
func activate():
	GameManager.current_checkpoint = self
	activated = true
	$AnimationPlayer.play("activated")
	

func _on_area_2d_area_entered(area):
	if area.get_parent() is Player && !activated:
		activate()
