extends KinematicBody2D

const GRAVITY = 10 
var velocity = Vector2.ZERO
var slide = Vector2.ZERO

onready var animplayer = $AnimationPlayer 

func _process(delta):
	animplayer.play("tentacle")
	
	velocity.y += GRAVITY
	slide.x += -3
		
	move_and_slide(slide,Vector2.UP)
