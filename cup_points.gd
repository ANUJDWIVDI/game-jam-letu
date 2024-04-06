extends Sprite2D

# Declare a signal
signal ball_in_cup

# Declare a variable to store the points
var points = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

# Function to be called when the ball interacts with the cup
func on_ball_in_cup():
	points += 1
	print("Points: ", points)
	emit_signal("ball_in_cup")


func _on_area_2d_body_entered(body):
	if body.name == "Ball":
		on_ball_in_cup()
		body.reset_ball()
		print(body)
	pass # Replace with function body.
