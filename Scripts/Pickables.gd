extends Node3D

@export var box_scene : PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	SignalBus.spawn_pickable.connect(spawn_box)
	SignalBus.shoot_cube.connect(shoot_box)
	SignalBus.reset_boxes.connect(reset_boxes)
	
	
func spawn_box(which:int, t : Transform3D) -> void:
	var new : RigidBody3D = Data.get_random_book().instantiate()
	add_child(new)
	new.global_transform = t
	new.scale = Vector3.ONE


func shoot_box(t : Transform3D) -> void:
	var new : RigidBody3D = Data.get_random_book().instantiate()
	add_child(new)
	new.global_transform = t
	new.scale = Vector3.ONE
	var fire_power : float = 4.0
	new.apply_central_impulse(- t.basis.z * fire_power)
	
	
func reset_boxes() -> void:
	for box in get_children():
		box.queue_free()
