extends Node2D

static var nivel_seleccionado: int = 1

@export var niveles: Array[PackedScene]
@export var ui_muertes: PackedScene

var _nivel_actual: int = 1
var _nivel_instanciado: Node
var _ui_instanciada: Node

func _ready() -> void:
	_ui_instanciada = ui_muertes.instantiate()
	add_child(_ui_instanciada)
	_nivel_actual = nivel_seleccionado
	nivel_seleccionado = 1
	_crear_nivel(_nivel_actual)

func _crear_nivel(numero_nivel: int):
	_nivel_instanciado = niveles[numero_nivel - 1].instantiate()
	add_child(_nivel_instanciado)
	
	var hijos = _nivel_instanciado.get_children()
	for i in hijos.size():
		if hijos[i].is_in_group("personajes"):
			hijos[i].personaje_muerto.connect(_reiniciar_nivel)
			break
	
func _eliminar_nivel():
	_nivel_instanciado.queue_free()
	
func _reiniciar_nivel():
	ContadorMuertes.sumar_muerte()
	_ui_instanciada._actualizar_label()
	_eliminar_nivel()
	_crear_nivel.call_deferred(_nivel_actual)
	
func siguiente_nivel():
	_nivel_actual += 1
	_eliminar_nivel()
	_crear_nivel.call_deferred(_nivel_actual)
