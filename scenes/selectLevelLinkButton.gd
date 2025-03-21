extends LinkButton


func _on_pressed(level_to_load: String) -> void:
	Global.lives = 3
	if level_to_load not in ["MainMenu", "LevelSelect", "Level1"]:
		level_to_load = Global.last_played_level
	get_tree().change_scene_to_file("res://scenes/" + level_to_load + ".tscn")
