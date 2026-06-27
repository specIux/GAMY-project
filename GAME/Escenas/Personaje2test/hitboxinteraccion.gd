extends Area2D

var InteractablesInRange = []
var canInteract = true

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("Interactuar"):
		if InteractablesInRange.is_empty() == false && canInteract:
			canInteract = false
			InteractablesInRange.back().interact()
			canInteract = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
@warning_ignore("unused_parameter")
func _process(delta: float) -> void:
	pass


func _on_area_entered(area: Area2D) -> void:
	InteractablesInRange.push_back(area)
	

func _on_area_exited(area: Area2D) -> void:
	InteractablesInRange.erase(area)
	pass # Replace with function body.
