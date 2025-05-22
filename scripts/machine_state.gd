extends Node

class_name MachineState

@export var character:CharacterBody2D
@export var animation:AnimatedSprite2D
@export var current_state:State

var arrayStates:Array[State]

func _ready():
	animation.play("idle")
	for child in get_children():
		if child is State:
			child.character = character
			child.animation = animation
			arrayStates.append(child) 

func _physics_process(delta):
	if current_state.next_state != null:
		change_state(current_state.next_state)
		
	current_state.state_process(delta)

func _on_animated_sprite_2d_animation_finished():
	current_state.on_animatedSprite2D_anim_finish(animation.animation)

func _input(event):
	current_state.state_input(event)

func change_state(new_state:State):
	current_state.on_exit()
	current_state.next_state = null
	current_state = new_state
	current_state.on_enter()
