extends CharacterBody2D

@export var machine_state:MachineState

func _physics_process(delta):

	var direction_x = Input.get_axis("left", "right")
	if direction_x:
		velocity.x = direction_x * machine_state.current_state.get_SPEED()
	else:
		velocity.x = move_toward(velocity.x, 0, machine_state.current_state.get_SPEED())
	
	var direction_y = Input.get_axis("up", "down")
	if direction_y:
		velocity.y = direction_y * machine_state.current_state.get_SPEED()
	else:
		velocity.y = move_toward(velocity.y, 0, machine_state.current_state.get_SPEED())

	move_and_slide()
