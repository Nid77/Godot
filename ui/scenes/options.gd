extends Panel

@onready var options: Panel = $"."
@onready var buttons: VBoxContainer = $"../Buttons"

func _on_back_pressed() -> void:
	buttons.visible = true
	options.visible = false


func _on_music_slider_value_changed(value: float) -> void:
	AudioManager.set_music_volume(value)


func _on_sfx_slider_value_changed(value: float) -> void:
	AudioManager.set_sfx_volume(value)

	
	
