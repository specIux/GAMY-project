extends CharacterBody2D
@export var speed: float = 200.0
var screen_size: Vector2
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	screen_size = get_viewport_rect().size
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float):
	var direction = Vector2.ZERO
	
	# LOGICA DE INPUT
	if Input.is_action_pressed("up"):
		direction.y -= 1
	if Input.is_action_pressed("down"):
		direction.y += 1
	if Input.is_action_pressed("left"):
		direction.x -= 1
	if Input.is_action_pressed("right"):
		direction.x += 1
	# ---------------------------------------------------------------------
	# AJUSTES DE FISICA
	if direction.length() > 0:
		direction = direction.normalized() #EVITAR LA SUMA DE 2 MOVIMIENTOS AL MISMO TIEMPO (EVITA EL MOVIMIENTO RAPIDO EN DIAGONAL)
	velocity = direction * speed
	move_and_slide() # FUNCION INTERNA QUE AJUSTA COLISIONES 
	# ---------------------------------------------------------------------
	var half_w = $CollisionShape2D.shape.size.x / 2
	var half_h = $CollisionShape2D.shape.size.y / 2
	position.x = clamp(position.x, half_w, screen_size.x - half_w)
	position.y = clamp(position.y, half_h, screen_size.y - half_h)
	
	_update_animation(direction) 
func _update_animation(dir: Vector2):
	var sprite = $AnimatedSprite2D
	# SI NO SE MUEVE, NO PARA / NO INICIA LA ANIMACION
	if dir == Vector2.ZERO:
		sprite.stop()
		return
	# SI SE MUEVE, INICIA LA ANIMACION Y EJECUTA LOGICA DE MOVIMIENTO
	sprite.play()
	
	# LOGICA DE ANIMACION 
	if dir.x > 0:
		sprite.animation = "walk-sides"
		sprite.flip_h = false
	elif dir.x < 0:
		sprite.animation = "walk-sides"
		sprite.flip_h = true        # re-usa el sprite pero dado vuelta
	elif dir.y < 0:
		sprite.animation = "walk-up"
		sprite.flip_h = false
	elif dir.y > 0:
		sprite.animation = "walk-down"
		sprite.flip_h = false
