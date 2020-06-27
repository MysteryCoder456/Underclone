extends Button

export var scene_path: String
export var exit: bool

func _on_pressed() -> void:
	if exit:
		get_tree().quit()
	else:
		get_tree().change_scene(scene_path)
