extends RigidBody2D

var velocity = Vector2.ZERO
var physics_material = PhysicsMaterial.new()
var initial_position = Vector2(1113, 258)
var counter = 0


func _ready():
	position = initial_position
	physics_material.bounce = 2.0
	self.physics_material_override = physics_material


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
