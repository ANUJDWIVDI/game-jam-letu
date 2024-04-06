extends Control


var packed_scene = "res://Menu.tscn"

# Called when the node enters the scene tree for the first time.
func _ready():
	play_music()
	for i in 7:
		if StartVars.old_men[i][2] > 0:
			pass
	pass # Replace with function body.

func play_music():
	if $Music.playing == false:
		$Music.play()
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	get_tree().change_scene_to_file(packed_scene)
