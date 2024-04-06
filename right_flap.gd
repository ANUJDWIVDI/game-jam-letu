extends Node2D

# Define the rotation angles
var start_angle = deg_to_rad(270)
var end_angle = deg_to_rad(35)

# Define the rotation speed
var rotation_speed = 2.0

# Called when the node enters the scene tree for the first time.
func _ready():
	# Set the initial rotation
	rotation = start_angle

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_left"):
		# Rotate the flap towards the end angle
		if rotation > end_angle:
			rotation -= rotation_speed * delta
	else:
		# Rotate the flap back to the start angle
		if rotation < start_angle:
			rotation += rotation_speed * delta
