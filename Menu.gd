extends Control

@onready var start_button = $TextureRect/VBoxContainer/Button as Button
# Called when the node enters the scene tree for the first time.
func _ready():
	#start_button.pressed.connect(_on_button_)
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass




func _on_button_pressed():
	get_tree().change_scene_to_file("res://custscene_01.tscn")
