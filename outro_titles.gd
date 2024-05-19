extends Control


@onready var silent_hill_music: AudioStreamPlayer2D = $SILENT_HILL
# Called when the node enters the scene tree for the first time.
func _ready():
	await get_tree().create_timer(1.5).timeout
	silent_hill_music.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
