extends Node

var muertes: int = 0

func sumar_muerte() -> void:
	muertes += 1

func get_muertes() -> int:
	return muertes
