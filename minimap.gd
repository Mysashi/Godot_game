extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$SubViewportContainer/SubViewport/Player/Sprite2D/Camera2D.zoom=Vector2(8,8)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
