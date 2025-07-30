extends Control

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	volume_update()
	
func volume_update():
	var music_vol = $MusicScrollBar.value
	var sfx_vol = $SfxScrollBar.value

	AudioManager.set_music_volume(music_vol)
	AudioManager.set_sfx_volume(sfx_vol)
	
