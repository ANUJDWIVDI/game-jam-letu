extends RigidBody2D

var velocity = Vector2.ZERO

func _physics_process(delta):
    move_and_slide(velocity)

func apply_central_impulse(impulse):
    velocity += impulse
    move_and_slide(velocity)