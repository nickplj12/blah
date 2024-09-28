extends PanelContainer

var moving := false
var mouse_start: Vector2i

func _on_minimize_pressed() -> void:
	get_window().set_mode(Window.MODE_MINIMIZED)

func _on_maximize_pressed() -> void:
	match get_window().mode:
		Window.MODE_WINDOWED:
			get_window().set_mode(Window.MODE_EXCLUSIVE_FULLSCREEN)
		Window.MODE_EXCLUSIVE_FULLSCREEN:
			get_window().set_mode(Window.MODE_WINDOWED)

func _on_close_pressed() -> void:
	get_tree().quit()



func _on_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.button_index == 1:
		if !moving: 
			mouse_start = get_viewport().get_mouse_position()
		moving = event.is_pressed()

func _process(_delta: float) -> void:
	if moving:
		var mouse_now := Vector2i(get_viewport().get_mouse_position())
		get_window().position += mouse_now-mouse_start


func _on_backward_pressed() -> void:
	Utils.backward_clicked.emit()
	Utils.close_doom.emit()


func _on_refresh_pressed() -> void:
	Utils.refresh_clicked.emit()


func _on_forward_pressed() -> void:
	Utils.forward_clicked.emit()
	Utils.close_doom.emit()


func _on_search_pressed() -> void:
	Utils.search_clicked.emit()


func _on_tabs_pressed() -> void:
	Utils.tabs_clicked.emit()


func _on_info_pressed() -> void:
	Utils.info_clicked.emit()


func _on_settings_pressed() -> void:
	Utils.settings_clicked.emit()
