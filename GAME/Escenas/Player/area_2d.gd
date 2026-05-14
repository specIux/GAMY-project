extends CharacterBody2D

@export var inv: Inv
# Velocidad de movimiento del personaje
@export var speed: float = 100.0

# Referencia al nodo AnimatedSprite2D
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

func _physics_process(delta: float) -> void:
	var direction := Vector2.ZERO

	# Captura las entradas del jugador
	if Input.is_action_pressed("right"):
		direction.x += 1
	if Input.is_action_pressed("left"):
		direction.x -= 1
	if Input.is_action_pressed("down"):
		direction.y += 1
	if Input.is_action_pressed("up"):
		direction.y -= 1
 
	# Normaliza para evitar movimiento más rápido en diagonal
	if direction != Vector2.ZERO:
		direction = direction.normalized()

	velocity = direction * speed
	move_and_slide()


	# Actualiza la animación según la dirección
	_update_animation(direction)


func _update_animation(direction: Vector2) -> void:
	if direction == Vector2.ZERO:
		# Detiene la animación si no hay movimiento (queda en el último frame)
		animated_sprite.stop()
		return

	# Prioriza el eje con mayor magnitud para decidir la animación
	if abs(direction.x) >= abs(direction.y):
		# Movimiento horizontal
		if direction.x > 0:
			animated_sprite.play("walk_right")
		else:
			animated_sprite.play("walk_left")
	else:
		# Movimiento vertical
		if direction.y > 0:
			animated_sprite.play("walk_down")
		else:
			animated_sprite.play("walk_up")
