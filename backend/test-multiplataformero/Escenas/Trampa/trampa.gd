extends RigidBody2D

@export var raycast: RayCast2D

func _physics_process(_delta: float) -> void:
	if raycast.get_collider() != null:
		freeze = false
