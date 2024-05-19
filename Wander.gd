extends Node2D

@export var group_name : String


var positions: Array
var direction: Vector2 = Vector2.ZERO
var temp_positions: Array

var current_positions: Marker2D

# Called when the node enters the scene tree for the first time.
func _ready():
	positions = get_tree().get_nodes_in_group(group_name)
	print(positions)
	_get_positions()
	get_next_position()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if global_position.distance_to(current_positions.position) < 10:
		get_next_position()
	
func _get_positions():
	temp_positions = positions.duplicate()
	temp_positions.shuffle()
	
	
func get_next_position():
	if temp_positions.is_empty():
		_get_positions()
	current_positions = temp_positions.pop_front()
	print(current_positions.position)
	direction = to_local(current_positions.position).normalized()	
	
	
