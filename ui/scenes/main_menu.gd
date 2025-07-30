extends Control
@onready var options: Panel = $Options
@onready var buttons: VBoxContainer = $Buttons

func _on_play_pressed():
	get_tree().change_scene_to_file("res://scenes/Main.tscn")
	
func _on_settings_pressed():
	buttons.visible = false
	options.visible = true
	
func _on_quit_pressed():
	get_tree().quit()
