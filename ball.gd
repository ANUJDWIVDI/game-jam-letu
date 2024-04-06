extends RigidBody2D

func _physics_process(delta):
	var collisions = get_overlapping_bodies()
	for collision in collisions:
		if collision is Label:
			# Get the normal vector of the collision
			var normal = get_slide_collision_normal(collision)
			# Reflect the linear velocity based on the normal
			bounce(reflect(linear_velocity, normal))
