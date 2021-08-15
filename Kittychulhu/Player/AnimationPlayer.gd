extends AnimationPlayer


onready var anim = $anim

# Called when the node enters the scene tree for the first time.
var cur_anim = ''
func ready():
	change_anim('Run')

func change_anim(new_anim):
	if cur_anim != new_anim:
		anim.play(new_anim)
		cur_anim = new_anim
