extends KinematicBody2D

const GRAVITY = 10 
const JUMP_SPEED = -500
var velocity = Vector2.ZERO

onready var animplayer = $AnimationPlayer


func _process(delta):
	velocity.y += GRAVITY
	animplayer.play("run")
		
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_SPEED
		
	else:
		animplayer.play("stop")

	move_and_slide(velocity,Vector2.UP)

func end_game():
	get_tree().quit()
