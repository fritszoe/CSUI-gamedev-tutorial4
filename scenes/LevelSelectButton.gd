extends Button


func _on_pressed(level_to_load: String) -> void:
	get_tree().change_scene_to_file("res://scenes/" + level_to_load + ".tscn")
