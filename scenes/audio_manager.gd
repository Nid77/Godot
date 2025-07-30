extends Node


func _process(delta: float) -> void:
	pass
	

func set_music_volume(db_value: float):
	set_volume("Music",db_value)

func set_sfx_volume(db_value: float):
	set_volume("SFX",db_value)
	

func set_volume(bus_name: String, db_value: float):
	var index = AudioServer.get_bus_index(bus_name)
	if index == -1:
		push_warning("Bus '%s' introuvable" % bus_name)
		return
	AudioServer.set_bus_volume_db(index, db_value)

func get_volume(bus_name: String) -> float:
	var index = AudioServer.get_bus_index(bus_name)
	if index == -1:
		push_warning("Bus '%s' introuvable" % bus_name)
		return 0.0
	return AudioServer.get_bus_volume_db(index)
