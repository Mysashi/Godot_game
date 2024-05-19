extends Sprite2D

var rotation_speed = 180 # Adjust this value to change the rotation speed

func _process(delta):
	rotation_degrees += rotation_speed * delta
