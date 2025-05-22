extends CharacterBody2D

@export var machine_state:MachineState
const SPEED = 300.0
const JUMP_VELOCITY = -400.0

func _physics_process(delta):

	var direction_x = Input.get_axis("left", "right")
	if direction_x:
		velocity.x = direction_x * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	var direction_y = Input.get_axis("up", "down")
	if direction_y:
		velocity.y = direction_y * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)

	move_and_slide()
