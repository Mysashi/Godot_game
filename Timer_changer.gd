extends Sprite2D

@onready var time = $timingh
# Called when the node enters the scene tree for the first time.
func _ready():
	time.texture = preload("res://5min.png")
	await get_tree().create_timer(45).timeout
	time.texture = preload("res://4min.png")
	await get_tree().create_timer(45).timeout
	time.texture = preload("res://3min.png")
	await get_tree().create_timer(45).timeout
	time.texture = preload("res://2min.png")
	await get_tree().create_timer(45).timeout
	time.texture = preload("res://1min.png")
	await get_tree().create_timer(45).timeout
	time.texture = preload("res://0min.png")
	await get_tree().create_timer(45).timeout
	get_tree().change_scene_to_file("res://outro.tscn")
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
