extends RigidBody2D

var velocity = Vector2.ZERO
var physics_material = PhysicsMaterial.new()
var initial_position = Vector2(1113, 258)
var counter = 0

func _ready():
	physics_material.bounce = 2.0
	self.physics_material_override = physics_material

func _physics_process(delta):

	if position.y > 600:
		position = initial_position
		velocity = Vector2.ZERO
		counter += 1
	else:
		#move_and_slide(velocity)
		pass



#func apply_central_impulse(impulse):
#	velocity += impulse
#	move_and_slide(velocity)
