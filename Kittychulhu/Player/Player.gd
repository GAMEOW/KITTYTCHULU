extends KinematicBody2D

const GRAVITY = 12 
const JUMP_SPEED = -500
var velocity = Vector2.ZERO
var is_jumping = false

onready var animplayer = $AnimationPlayer


func _process(delta):
	
	velocity.y += GRAVITY
	
	if is_on_floor():
		animplayer.play("run")
	
	if Input.is_action_just_pressed("jump") and is_on_floor():
		is_jumping = true
		velocity.y = JUMP_SPEED
		velocity.y = velocity.y
	
	if not is_on_floor():
		if velocity.y < -35: #going up
			$AnimationPlayer.play("jumprising")
		elif velocity.y < -10:
			$AnimationPlayer.play("jumprising")
		else: #falling
			$AnimationPlayer.play("jumpfalling")
			
	move_and_slide(velocity,Vector2.UP)
	
func end_game():
	get_tree().quit()
