extends Node2D

func _ready() -> void:
	# Crea una capa encima de todo
	var canvas = CanvasLayer.new()
	canvas.layer = 10
	add_child(canvas)

	# Rectángulo negro encima
	var fade = ColorRect.new()
	fade.color = Color(0, 0, 0, 1)
	fade.set_anchors_preset(Control.PRESET_FULL_RECT)
	canvas.add_child(fade)

	# Animación de fade
	var tween = create_tween()
	tween.tween_property(fade, "modulate:a", 0.0, 3.0)
	tween.tween_callback(canvas.queue_free)
