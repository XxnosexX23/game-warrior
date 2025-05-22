extends Node

class_name State

# INFO: EXPORTACIONES
@export var can_move = true

const SPEED = 300.0
const JUMP_VELOCITY = -400
const GRAVITY = 980
var character:CharacterBody2D
var animation:AnimatedSprite2D
var move_allowed = true
var next_state:State = null

func on_enter():
	pass

func on_exit():
	pass

func get_SPEED():
	return SPEED

func get_JUMP_VELOCITY():
	return JUMP_VELOCITY

func get_GRAVITY():
	return GRAVITY

func get_delta_move_toward():
	return SPEED

func on_animatedSprite2D_anim_finish(anim_name):
	pass

func state_input(event):
	pass

func state_process(delta):
	pass
