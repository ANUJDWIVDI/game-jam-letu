extends RigidBody2D

var velocity = Vector2.ZERO
var physics_material = PhysicsMaterial.new()
var initial_position = Vector2(1113, 235)
var counter = 0
@export var CAMERA: Node2D
var BALL


func _ready():
	#position = initial_position
	physics_material.bounce = 2.0
	self.physics_material_override = physics_material

func _physics_process(delta):
	#Ball going up screen
	if position.y < -648 and position.y > -648-648:
		CAMERA.position.y = -648-648
	elif position.y < 0 and position.y > -648:
		CAMERA.position.y = -648
	elif position.y > 0:
		CAMERA.position.y = 0
	if position.y > 800:
		reset_ball()
		
		
func reset_ball():
	CAMERA.position.y = 0
	linear_velocity = Vector2(0,0)
	apply_impulse(Vector2.ZERO, Vector2.ZERO)
	PhysicsServer2D.body_set_state(
	get_rid(),
	PhysicsServer2D.BODY_STATE_TRANSFORM,
	Transform2D.IDENTITY.translated(initial_position)
)
var hi = '''
func _on_area_2d_body_exited(body):
	if body == self:
		#Ball going up screen
		if position.y < -648 and position.y > -648-648:
			CAMERA.position.y = -648-648
		elif position.y < 0 and position.y > -648:
			CAMERA.position.y = -648
		elif position.y > 0:
			CAMERA.position.y = 0
	pass # Replace with function body.'''
