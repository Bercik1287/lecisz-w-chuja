extends Node2D

func _ready() -> void:
	pass # Replace with function body.
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")


func _on_button_2_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/rules_del_optionelle.tscn")
