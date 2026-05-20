extends Control

@export var act1_scene: String = "res://Escenas/Acto1/act_1.tscn"

@onready var label: Label = $Label
@onready var fade: ColorRect = $ColorRect  # Ajustá el nombre si lo renombraste

var transitioning: bool = false


func _ready() -> void:
	# Asegura que el fade empiece transparente
	fade.modulate.a = 0.0

	# Efecto de parpadeo en el texto
	var tween = create_tween().set_loops()
	tween.tween_property(label, "modulate:a", 0.1, 0.8)
	tween.tween_property(label, "modulate:a", 1.0, 0.8)


func _input(event: InputEvent) -> void:
	if transitioning:
		return  # Evita que se llame dos veces

	if event is InputEventMouseButton and event.pressed:
		_start_transition()
	if event is InputEventKey and event.pressed:
		_start_transition()


func _start_transition() -> void:
	transitioning = true

	# Oscurece la pantalla y luego cambia de escena
	var tween = create_tween()
	tween.tween_property(fade, "modulate:a", 1.0, 3.0)  # 1 segundo para oscurecer
	tween.tween_callback(_load_scene)


func _load_scene() -> void:
	get_tree().change_scene_to_file(act1_scene)
