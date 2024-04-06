extends StaticBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	pass

# Called when the bumper collides with another body
func _on_Bumpers_body_entered(body):
	pass


func _on_body_entered(body):
	print("areuok?")
	if body.name == "Ball":
		print("bustawolf")
		# Calculate the direction of the collision
		var collision_direction = (body.global_position - global_position).normalized()

		# Calculate the force of the collision
		var collision_force = body.linear_velocity.length()

		# Apply an impulse to the bumper in the direction of the collision
		# The magnitude of the impulse is twice the force of the collision
		#apply_impulse(Vector2.ZERO, collision_direction * collision_force * 2)


func _on_area_2d_body_entered(body):
	if body.name == "Ball":
		print(global_position)
		print(body.global_position)
		# Calculate the direction of the collision
		var collision_direction = (global_position - body.global_position).normalized()
		print(collision_direction)

		# Calculate the force of the collision
		var collision_force = body.linear_velocity.length()
		print(collision_force)
		
		body.apply_impulse(Vector2.ZERO, collision_direction * collision_force * 1.1)
