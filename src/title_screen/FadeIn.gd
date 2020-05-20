extends ColorRect


signal fade_in_finished
signal fade_out_finished

func fade_in():
	$AnimationPlayer.play("FadeIn")

func fade_out():
	$AnimationPlayer.play("FadeOut")


func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "FadeIn":
		emit_signal("fade_in_finished")
	if anim_name == "FadeOut":
		emit_signal("fade_out_finished")
