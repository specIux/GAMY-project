extends Area2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

var isOpen = false

func interact():
	if isOpen == false:
		print ("+1 item")
		animated_sprite_2d.play("open")
		isOpen = true
	else: if isOpen == true:
		pass
	  
