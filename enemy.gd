extends CharacterBody2D

var speed = 20

var player_chase = true
var player 

	
	
func _physics_process(delta):
	if player_chase:
		position += (player.position - position) / speed

		
		
	


func _on_detection_area_body_entered(body):
	print(body)
	if body.has_method("player"):
		player_chase = false
		player = body
	


func _on_detection_area_body_exited(body):
	print(body) # Replace with function body.
