extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	play_music()
	pass
func play_music():
	if $Music.playing == false:
		$Music.play()

func _on_button_1_pressed():
	OS.shell_open("https://www.bing.com")
	pass # Replace with function body.

func _on_button_2_pressed():
	OS.shell_open("https://www.google.com")
	pass # Replace with function body.

func _on_button_3_pressed():
	OS.shell_open("https://www.google.com")
	pass # Replace with function body.

func _on_button_4_pressed():
	OS.shell_open("https://www.google.com")
	pass # Replace with function body.
