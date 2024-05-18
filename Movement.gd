extends CharacterBody2D

var speed = 100
var dir: Vector2
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


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
		
		
	
