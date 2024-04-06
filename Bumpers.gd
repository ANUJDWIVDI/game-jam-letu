extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	pass

# Called when the bumper collides with another body
func _on_Bumpers_body_entered(body):
	if body.name == "Ball":
		# Calculate the direction of the collision
		var collision_direction = (body.global_position - global_position).normalized()

		# Calculate the force of the collision
		var collision_force = body.linear_velocity.length()

		# Apply an impulse to the bumper in the direction of the collision
		# The magnitude of the impulse is twice the force of the collision
		apply_impulse(Vector2.ZERO, collision_direction * collision_force * 2)
