extends Sprite2D

@export var enemy:= CharacterBody2D
@onready var timer = $Area2D/Timer
@onready var beep = $beep
var enemy_model = null
var rotation_speed_radians = 3.14 # Adjust this value to change the rotation speed
var rotation_degrees_prev = 0.0  # Предыдущий угол поворота
var num_rotations = 0  # Количество полных оборотов


func _process(delta):
	rotation_degrees += rotation_speed_radians * delta * 180 / PI
	if rotation_degrees - rotation_degrees_prev >= 360:
		beep.play()
		rotation_degrees = 0;  # Обновляем предыдущий угол поворота  # Обновляем угол поворота

	




func _on_area_2d_body_entered(body):
	print(body.name)
	if body.is_in_group("Guards"):
		print("S")
		enemy_model = body
		enemy_model.visible = true
		
		await get_tree().create_timer(0.5).timeout
		enemy_model.visible = false

		
		


