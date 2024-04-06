extends Sprite2D

# Declare a signal
signal ball_in_cup

# Declare a variable to store the points
var points = StartVars.points

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

# Function to be called when the ball interacts with the cup
func on_ball_in_cup():
	StartVars.points += 1


func _on_area_2d_body_entered(body):
	if body.name == "Ball":
		on_ball_in_cup()
		body.reset_ball()
		print(StartVars.points)
	pass # Replace with function body.
