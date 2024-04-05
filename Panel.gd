extends Panel

# List of menu options
var menuOptions = ["New Game", "Load Game", "Options", "Quit", "Rules", "Volume Toggle"]

func _ready():
	# Calculate vertical space between buttons
	var button_height = rect_size.y / menuOptions.size()

	# Iterate through menu options and create buttons
	for i in range(menuOptions.size()):
		var button = Button.new()
		button.text = menuOptions[i]
		button.rect_min_size.y = button_height
		button.rect_anchor_vertical = 0.5
		button.rect_position.y = i * button_height
		button.connect("pressed", self, "_on_button_pressed", [i])
		add_child(button)

# Called when a menu button is pressed
func _on_button_pressed(index):
	match index:
		0: # New Game
			start_new_game()
		1: # Load Game
			load_saved_game()
		2: # Options
			open_options_menu()
		3: # Quit
			quit_game()
		4: # Rules
			display_game_rules()
		5: # Volume Toggle
			toggle_volume()

# Start a new game
func start_new_game():
	# Add your code for starting a new game here
	pass

# Load a saved game
func load_saved_game():
	# Add your code for loading a saved game here
	pass

# Open options menu
func open_options_menu():
	# Add your code for opening options menu here
	pass

# Quit the game
func quit_game():
	# Add your code for quitting the game here
	pass

# Display game rules
func display_game_rules():
	# Add your code for displaying game rules here
	pass

# Toggle volume
func toggle_volume():
	# Add your code for toggling volume here
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# Add your code for processing logic every frame here
	pass




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
