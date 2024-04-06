extends Control

var packed_scene = "res://Menu.tscn"
@onready var animplay = $AnimationPlayer

func _ready():
	$Panel2.visible = false
	animplay.play("start_anim")
	await animplay.animation_finished


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	animplay.play("leave_anim")
	await animplay.animation_finished
	get_tree().change_scene_to_file(packed_scene)
