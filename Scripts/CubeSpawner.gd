extends Node3D

@export var action_button_action : String = "trigger_click"
@export var shoot_action_button : String = "trigger_click"
@export var reset_action_button : String = "menu_button"


func _ready() -> void:
	get_parent().connect("button_pressed", _on_button_pressed)


func _on_button_pressed(p_button) -> void:
	if p_button == action_button_action:
		SignalBus.spawn_pickable.emit(1, global_transform)
	elif p_button == shoot_action_button:
		SignalBus.shoot_cube.emit(global_transform)
	elif p_button == reset_action_button:
		SignalBus.reset_boxes.emit()
