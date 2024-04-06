extends RigidBody2D

var velocity = Vector2.ZERO
var physics_material = PhysicsMaterial.new()
var initial_position = Vector2(1113, 258)
var counter = 0
@export var CAMERA: Node2D
var BALL


func _ready():
	position = initial_position
	physics_material.bounce = 2.0
	self.physics_material_override = physics_material

func _physics_process(delta):

	if position.y > 800:
		PhysicsServer2D.body_set_state(
	get_rid(),
	PhysicsServer2D.BODY_STATE_TRANSFORM,
	Transform2D.IDENTITY.translated(initial_position)
)

func _on_area_2d_body_entered(body):
	print("happened")
	self.position.y = 256


func _on_area_2d_body_exited(body):
	if body == self:
		if position.y < 0:
			CAMERA.position.y -= 648
		if position.y > 0:
			CAMERA.position.y += 648
	pass # Replace with function body.
