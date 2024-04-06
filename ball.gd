extends RigidBody2D

var velocity = Vector2.ZERO
var physics_material = PhysicsMaterial.new()


func _ready():
	physics_material.bounce = 2.0
	self.physics_material_override = physics_material

func _physics_process(delta):
#	move_and_slide(velocity)
	pass

#func apply_central_impulse(impulse):
#	velocity += impulse
#	move_and_slide(velocity)
