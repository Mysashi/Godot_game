extends AnimatedSprite2D
@onready var animated_node = $"."

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if animated_node.frame == 3:
		await get_tree().create_timer(1).timeout
		get_tree().change_scene_to_file("res://outro_titles.tscn")

