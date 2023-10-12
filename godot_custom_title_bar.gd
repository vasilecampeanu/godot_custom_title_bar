@tool
extends EditorPlugin

var edit_interface
var parent
var active_scene_info
var spacer
var workspace_tabs
var button_2d
var button_3d
var button_script
var button_assets
var renderer
var build

func _enter_tree():
	self.edit_interface = get_editor_interface()

	self.parent = self.edit_interface.get_base_control().get_child(0).get_child(0)

	self.active_scene_info = self.edit_interface.get_base_control().get_child(0).get_child(0).get_child(2)
	self.active_scene_info.get_child(0).visible = true

	self.workspace_tabs = self.edit_interface.get_base_control().get_child(0).get_child(0).get_child(3)

	self.button_2d = self.workspace_tabs.get_child(0)
	self.button_2d.text = ""

	self.button_3d = self.workspace_tabs.get_child(1)
	self.button_3d.text = ""

	self.button_script = self.workspace_tabs.get_child(2)
	self.button_script.text = ""

	self.button_assets = self.workspace_tabs.get_child(3)
	self.button_assets.text = ""

	self.spacer = self.edit_interface.get_base_control().get_child(0).get_child(0).get_child(4)

	self.renderer = self.edit_interface.get_base_control().get_child(0).get_child(0).get_child(5)
	self.renderer.add_theme_constant_override("margin_left", 295)
	self.renderer.add_theme_constant_override("margin_top", 10)

	self.build = self.edit_interface.get_base_control().get_child(0).get_child(0).get_child(6)

	self.parent.remove_child(self.workspace_tabs)
	self.parent.remove_child(self.spacer)
	self.parent.remove_child(self.renderer)
	self.parent.remove_child(self.build)

	self.parent.add_child(self.renderer)
	self.parent.add_child(self.spacer)
	self.parent.add_child(self.workspace_tabs)
	self.parent.add_child(self.build)

func _exit_tree():
	pass
