extends Node2D

@export var size: int = 50

func _draw():
	draw_rect(Rect2(Vector2(-size, -size), Vector2(size, size)), Color.BLACK)
