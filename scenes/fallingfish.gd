extends RigidBody2D

@export var level_names: Array[String] = ["Level1", "Level2"]
@export var lose_scene = "GameOver"


func _ready():
	contact_monitor = true
	max_contacts_reported = 1


func _on_body_entered(body):
	var current_scene = get_tree().current_scene.name
	if body.get_name() == "Player":
		if current_scene in level_names:
			Global.lives -= 1
			if Global.lives != 0:
				get_tree().change_scene_to_file(str("res://scenes/" + current_scene + ".tscn"))
		if Global.lives == 0:
			Global.last_played_level = current_scene
			get_tree().change_scene_to_file(str("res://scenes/" + lose_scene + ".tscn"))
	else:
		self.queue_free()
