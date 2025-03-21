extends Area2D

@export var scene_name: Array[String] = ["Level1", "Level2"]
@export var lose_screen = "GameOver"


func _on_body_entered(body: Node2D) -> void:
	var current_scene = get_tree().current_scene.name
	if body.get_name() == "Player":
		if current_scene in scene_name:
			Global.lives -= 1
			if Global.lives != 0:
				get_tree().change_scene_to_file(str("res://scenes/" + current_scene + ".tscn"))
		if Global.lives == 0:
			Global.last_played_level = current_scene
			get_tree().change_scene_to_file(str("res://scenes/" + lose_screen + ".tscn"))
