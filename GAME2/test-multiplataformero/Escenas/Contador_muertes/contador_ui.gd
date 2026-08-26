extends CanvasLayer

@onready var label: Label = $Label

func _ready() -> void:
	_actualizar_label()

func _actualizar_label() -> void:
	label.text = "Muertes: " + str(ContadorMuertes.get_muertes())
