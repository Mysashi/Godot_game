extends CharacterBody2D

var speed = 200
var dir: Vector2
@onready var heart_beat: AudioStreamPlayer2D = $AudioStreamPlayer2D
# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):

	velocity = dir * speed
	
	move_and_slide()
	
	
func _unhandled_input(_event: InputEvent):
	dir.x = Input.get_axis("ui_left", "ui_right")
	dir.y = Input.get_axis("ui_up", "ui_down")
	dir = dir.normalized()

	
func player():
	pass
		
		
	


func _on_agroactivator_body_entered(body):
	get_tree().change_scene_to_file("res://end_screen.tscn")
	
