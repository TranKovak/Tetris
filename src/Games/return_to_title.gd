extends Control


func _ready():
	$Fade.show()
	$Fade.fade_out()
	$CenterContainer/VBoxContainer/Button.grab_focus()


func _on_Fade_fade_out_finished():
	$Fade.hide()


func _on_Fade_fade_in_finished():
	get_tree().change_scene("res://title_screen/TitleScreen.tscn")


func _on_Button_pressed():
	$Fade.show()
	$Fade.fade_in()
	
