extends Node3D

var vertical_sensitivity : float = 2500.0 # increase for more sensitivity
var pivot : Node3D
var rotation_speed : float = 2500.0

func _ready():
	pivot = $".."

func _process(delta):
	pass

func _on_right_lever_hinge_moved(angle):
	position.y += angle / vertical_sensitivity


func _on_left_lever_hinge_moved(angle):
	pivot.rotation.y += angle / rotation_speed

