extends Control

var resizing := false
var resize_node: Control

func _on_right_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		_gui_input_handling(event, $right)


func _on_bottom_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		_gui_input_handling(event, $bottom)


func _on_corner_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		_gui_input_handling(event, $corner)

func _gui_input_handling(event: InputEventMouseButton, node: Control) -> void:
	if event.button_index == 1:
		if !resizing:
			resize_node = node
		resizing = event.is_pressed()

func _process(_delta: float) -> void:
	if resizing:
		var scene = get_tree().current_scene
		if resize_node in [$bottom, $corner]:
			get_window().size.y = int(scene.get_global_mouse_position().y)
		if resize_node in [$right, $corner]:
			get_window().size.x = int(scene.get_global_mouse_position().x)
