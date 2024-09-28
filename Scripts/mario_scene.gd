extends Node3D

const ROM_SHA256 := "17ce077343c6133f8c9f2d6d6d9a4ab62c8cd2aa57c40aea1f490b4c8bb21d91"
@onready var sm_64_mario: SM64Mario = $SM64Mario
@onready var sm_64_static_surface_handler: Node = $SM64StaticSurfaceHandler
@onready var rom_picker_dialog := $FileDialog as FileDialog
@onready var invalid_rom_dialog : = $InvalidRomDialog as AcceptDialog

func _ready() -> void:
	# Supply the path to the ROM file.
	# Avoid hardcoding this parameter, you should get this path on runtime.
	#if SM64Global.rom_filepath == "":
	#	rom_picker_dialog.popup_centered_ratio()
	# Set the scale of the internal `libsm64` world. The bigger the scale, the smaller Mario will be in the Godot scene.
	# At 75.0 scale, Mario will be just below 2 meters tall in the Godot scene.
	SM64Global.scale_factor = 75.0

	# Init the `libsm64` world.
	SM64Global.init()

	# Init the static surfaces (make sure the relevant MeshIntance3D nodes are ready and in the appropriate group).
	sm_64_static_surface_handler.load_static_surfaces()

	# Initialize the SM64Mario node.
	# both the `libsm64` world and the Static Surfaces must be already initialized without errors.
	sm_64_mario.create()


func _on_tree_exiting() -> void:
	# Clean up the `libsm64` world when the scene is freed.
	sm_64_mario.delete()
	SM64Global.terminate()

func _on_file_dialog_file_selected(path: String) -> void:
	var rom_file_sha256 := FileAccess.get_sha256(path)

	if rom_file_sha256 != ROM_SHA256:
		invalid_rom_dialog.popup_centered()
		return

	SM64Global.rom_filepath = path

#func _on_file_dialog_file_selected(path: String) -> void:
#	SM64Global.rom_filepath = path
