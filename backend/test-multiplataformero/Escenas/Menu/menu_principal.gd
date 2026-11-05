extends Control

const EscenaPrincipal := preload("res://Escenas/Principal/escena_principal.gd")

@onready var _menu_botones: VBoxContainer = $MenuBotones
@onready var _selector_niveles: VBoxContainer = $SelectorNiveles
@onready var _botones_niveles: GridContainer = $SelectorNiveles/BotonesNiveles

func _ready() -> void:
	_selector_niveles.visible = false
	for i in _botones_niveles.get_child_count():
		var boton := _botones_niveles.get_child(i) as Button
		boton.pressed.connect(_abrir_nivel.bind(i + 1))
	$MenuBotones/BotonJugar.pressed.connect(_mostrar_selector.bind(true))
	$MenuBotones/BotonSalir.pressed.connect(get_tree().quit)
	$SelectorNiveles/BotonVolver.pressed.connect(_mostrar_selector.bind(false))

func _mostrar_selector(mostrar: bool) -> void:
	_menu_botones.visible = not mostrar
	_selector_niveles.visible = mostrar

func _abrir_nivel(numero_nivel: int) -> void:
	EscenaPrincipal.nivel_seleccionado = numero_nivel
	get_tree().change_scene_to_file("res://Escenas/Principal/escena_principal.tscn")
