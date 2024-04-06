extends Control

var packed_scene = "res://Menu.tscn"
@onready var animplay = $AnimationPlayer

var random = RandomNumberGenerator.new()

func _ready():
	random.randomize()
	$Panel2.visible = false
	animplay.play("start_anim")
	await animplay.animation_finished
	$Points/Label.text = "Your points: " + str(StartVars.points)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	animplay.play("leave_anim")
	await animplay.animation_finished
	get_tree().change_scene_to_file(packed_scene)


func _on_summon_button_pressed():
	# Prints a random integer between -10 and 10.
	var sumcharacter = random.randi_range(0, 6)
	$Panel2.visible = true
	$Character.texture = StartVars.old_men[sumcharacter][0]
	animplay.play("Stars_anim")
	await animplay.animation_finished
	$Panel2.visible = false
