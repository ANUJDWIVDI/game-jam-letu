extends StaticBody2D


# Define the physics material for the obstacles
var physics_material = PhysicsMaterial.new()

func _ready():
	# Set the bounce property of the physics material
	physics_material.bounce = 1.0
	self.physics_material_override = physics_material

	
