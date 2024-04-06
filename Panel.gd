extends Panel

var packed_scene = "res://Pinball.tscn"
var gacha_scene = "res://gacha_system.tscn"
var profile_scene = "res://Profiles.tscn"
@onready var animplay = $"../AnimationPlayer"


func _ready():
	play_music()
	animplay.play("start_anim")
	await animplay.animation_finished

func play_music():
	if $"../Music".playing == false:
		$"../Music".play()

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
	animplay.play("gacha_anim")
	await animplay.animation_finished
	get_tree().change_scene_to_file("res://Selection.tscn")
	pass # Replace with function body.



func _on_volume_toggle_pressed():
	pass # Replace with function body.


func _on_profiles_pressed():
	get_tree().change_scene_to_file(profile_scene)
	pass # Replace with function body.
