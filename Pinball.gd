extends Node2D

var packed_scene = "res://Menu.tscn"
var gacha_scene = "res://gacha_system.tscn"
@onready var animplay = $AnimationPlayer


func _ready():
	$PincoinSky.visible = true
	animplay.play("start_anim")
	await animplay.animation_finished
	$PincoinSky.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	$OutroPanel.visible = true
	animplay.play("leave_anim")
	await animplay.animation_finished
	get_tree().change_scene_to_file(packed_scene)
	$OutroPanel.visible = false
	pass # Replace with function body.
