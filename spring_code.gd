extends Node2D

var spring_strength = 1000.0
var rest_length = 0.0
var press_start_time = 0.0

func _ready():
	self.rest_length = rest_length

func _process(delta):
	if Input.is_action_just_pressed("ui_up"):
		press_start_time = Time.get_ticks_msec()
	elif Input.is_action_just_released("ui_up"):
		var press_duration = (Time.get_ticks_msec() - press_start_time) / 1000.0
		var spring_force = calculate_spring_force(press_duration)
		get_node("../Ball").apply_central_impulse(Vector2(0, -spring_force))

func calculate_spring_force(press_duration):
	if press_duration < 2.0:
		return spring_strength * 0.5
	elif press_duration < 4.0:
		return spring_strength * 1.0
	else:
		return spring_strength * 1.5
