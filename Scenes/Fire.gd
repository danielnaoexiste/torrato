extends Area2D

export(String, FILE, "*.tscn") var next_scene

func _process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			scene_changer.change_scene(next_scene)