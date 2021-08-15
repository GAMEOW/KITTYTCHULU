extends Node

const OBSTACLE = preload("res://Level/Tentacle.tscn")

func _on_Timer_timeout():
	var obstacle = OBSTACLE.instance()
	obstacle.position = Vector2(rand_range(1400,2400),365)
	add_child(obstacle)

