extends KinematicBody2D

var speed = 800
var player_position 
var target_position 
onready var player = get_node("/root/Node2D/Enemy")

func _physics_process(delta):
	
	player_position = player.position
	target_position = (player.global_position -global_position).normalized()
	
	
	if position.distance_to(player_position) > 3:
		
		move_and_slide(target_position * speed)
		look_at(player_position)
