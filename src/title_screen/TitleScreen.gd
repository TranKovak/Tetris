extends Control


var scene_path_to_load

# Called when the node enters the scene tree for the first time.
func _ready():
	$Menu/CenterRow/Buttons/NewGameButton.grab_focus()
	$TextureRect/AnimationPlayer.play("background_animation")
	$Fade.show()
	$Fade.fade_out()
	for button in $Menu/CenterRow/Buttons.get_children():
		button.connect("pressed", self, '_on_Button_pressed', [button.scene_to_load])

func _on_Button_pressed(scene):
	scene_path_to_load = scene
	$Fade.show()
	$Fade.fade_in()


func _on_Fade_fade_out_finished():
	$Fade.hide()


func _on_Fade_fade_in_finished():
	get_tree().change_scene(scene_path_to_load)
