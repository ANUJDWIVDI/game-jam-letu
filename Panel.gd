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
			_on_new_game_pressed()
		1: # Load Game
			_on_load_game_pressed()
		2: # Options
			_on_options_pressed()
		3: # Quit
			_on_quit_pressed()
		4: # Rules
			_on_rules_pressed()
		5: # Volume Toggle
			_on_volume_toggle_pressed()

# Start a new game

	
# Start a new game
func _on_new_game_pressed():
    print("New game started") # Replace with your own logic

# Load a game
func _on_load_game_pressed():
    print("Game loaded") # Replace with your own logic

# Show rules
func _on_rules_pressed():
    print("Rules shown") # Replace with your own logic

# Show options
func _on_options_pressed():
    print("Options shown") # Replace with your own logic

# Quit the game
func _on_quit_pressed():
    get_tree().quit()

# Toggle volume
func _on_volume_toggle_pressed():
    print("Volume toggled") # Replace with your own logic
