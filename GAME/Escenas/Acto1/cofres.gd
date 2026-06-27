extends Area2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

var isOpen = false

func interact():
	if isOpen == false:
		animated_sprite_2d.play("open")
		await animated_sprite_2d.animation_finished
		isOpen == true
