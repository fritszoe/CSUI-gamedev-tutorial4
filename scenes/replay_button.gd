extends LinkButton

@export var level_names: Array[String] = ["Level1", "Level2"]


func _on_pressed() -> void:
	if Global.last_played_level != "":
		Global.lives = 3
		get_tree().change_scene_to_file(str("res://scenes/" + Global.last_played_level + ".tscn"))
