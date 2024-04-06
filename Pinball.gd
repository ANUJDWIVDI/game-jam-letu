extends Node2D

var packed_scene = "res://Menu.tscn"
var gacha_scene = "res://gacha_system.tscn"
@onready var animplay = $AnimationPlayer


func _ready():
	$CanvasLayer/Button.visible = false
	$PincoinSky.visible = true
	animplay.play("start_anim")
	await animplay.animation_finished
	$PincoinSky.visible = false
	$CanvasLayer/Button.visible = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func update_score():
	$CanvasLayer/Points/Label.text = "Score:
		" + str(StartVars.points)

func _on_button_pressed():
	$CanvasLayer/Button.visible = false
	$OutroPanel.visible = true
	animplay.play("leave_anim")
	await animplay.animation_finished
	get_tree().change_scene_to_file(packed_scene)
	$OutroPanel.visible = false
	pass # Replace with function body.
