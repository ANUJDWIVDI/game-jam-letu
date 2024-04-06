extends StaticBody2D

var velocity = Vector2(.01,.01)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	pass

# Called when the bumper collides with another body
func _on_Bumpers_body_entered(body):
	pass


func _on_area_2d_body_entered(body):
	pass


func _on_area_2d_body_exited(body):
	if body.name == "Ball":
		# Calculate the direction of the collision
		var collision_direction = (body.global_position - global_position).normalized()

		# Calculate the force of the collision
		var collision_force = body.linear_velocity.length()
		
		body.apply_impulse(velocity, collision_direction * collision_force * 120)
