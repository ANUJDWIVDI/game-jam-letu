extends Panel

var packed_scene = "res://Pinball.tscn"
var gacha_scene = "res://gacha_system.tscn"
var profile_scene = "res://Profiles.tscn"
@onready var animplay = $"../AnimationPlayer"


func _ready():
	animplay.play("start_anim")
	await animplay.animation_finished

func _on_new_game_pressed():
	animplay.play("play_anim")
	await animplay.animation_finished
	get_tree().change_scene_to_file(packed_scene)
	pass # Replace with function body.


func _on_load_game_pressed():
	animplay.play("gacha_anim")
	await animplay.animation_finished
	get_tree().change_scene_to_file(gacha_scene)
	pass # Replace with function body.


func _on_rules_pressed():
	pass # Replace with function body.


func _on_options_pressed():
	pass # Replace with function body.


func _on_quit_pressed():
	pass # Replace with function body.


func _on_volume_toggle_pressed():
	pass # Replace with function body.


func _on_profiles_pressed():
	get_tree().change_scene_to_file(profile_scene)
	pass # Replace with function body.
