extends CharacterBody2D

var speed = 185
var acceleration = 7
var home_pos = Vector2.ZERO
var player_chase = false
var target = null
@export var wander_direction: Node2D

@export var player: Node2D
@onready var anim01: AnimatedSprite2D = $Animated
@onready var nav_agent: NavigationAgent2D = $NavigationAgent2D
@onready var groan_near: AudioStreamPlayer2D = $Animated/detection_area/neargroan
@onready var heart_beat: AudioStreamPlayer2D = $Animated/sound_area/heart

func _ready():
	home_pos = self.global_position
	nav_agent.path_desired_distance = 4
	nav_agent.target_desired_distance = 4


func _physics_process(delta):
	if nav_agent.is_navigation_finished():
		return
	var direction = Vector2.ZERO
	#direction = nav_agent.get_next_path_position() - global_position
	#direction = direction.normalized()
	var axis = to_local(nav_agent.get_next_path_position()).normalized()
	#velocity = velocity.lerp(direction * speed, acceleration * delta)
	velocity = axis * speed
		
	move_and_slide()
	
	
func make_path():
	if target:
		print("I'm in zone")
		nav_agent.target_position = player.global_position
		await get_tree().create_timer(5).timeout
		target = null
		
	else:
		print("ZONE LEFT")
		nav_agent.target_position = wander_direction.current_positions.position
		await get_tree().create_timer(10).timeout
		target = player
		


func _on_timer_timeout():
	make_path()


func _on_detection_area_body_entered(body):

	anim01.sprite_frames.set_animation_speed("default", 5)
	groan_near.play()
	await get_tree().create_timer(10).timeout
	target = null
	print(body)


func _on_detection_area_body_exited(body):
	anim01.sprite_frames.set_animation_speed("default", 1)
	groan_near.stop()
	print("Exit")




func _on_sound_area_body_entered(body):
	heart_beat.play()


func _on_sound_area_body_exited(body):
	heart_beat.stop()




func _on_detection_area_area_entered(area):
	target = area.owner
	print("ENTERED")




func _on_detection_area_area_exited(area):
	if area.owner == target:
		target = null
