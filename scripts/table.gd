extends Node2D


# Called when the node enters the scene tree for the first time.

var p1 = 0
var p2 = 0
var p3 = 0
var p4 = 0
var p1tries = 0
var p2tries = 0
var p3tries = 0
var p4tries = 0

var rng = RandomNumberGenerator.new()

func _ready() -> void:
	p1 = rng.randi_range(1, 6)
	p2 = rng.randi_range(1, 6)
	p3 = rng.randi_range(1, 6)
	p4 = rng.randi_range(1, 6)

func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")


func _on_bp_1_pressed() -> void:
	p1tries = p1tries + 1
	$bp1.text = "Gracz 1 (" + str(p1tries) + "/6)"
	if(p1tries == p1):
		$bp1.text = "Gracz 1 (Martwy)"


func _on_bp_2_pressed() -> void:
	p2tries = p2tries + 1
	$bp2.text = "Gracz 2 (" + str(p2tries) + "/6)"
	if(p2tries == p2):
		$bp2.text = "Gracz 2 (Martwy)"

func _on_bp_3_pressed() -> void:
	p3tries = p3tries + 1
	$bp3.text = "Gracz 3 (" + str(p3tries) + "/6)"
	if(p3tries == p3):
		$bp3.text = "Gracz 3 (Martwy)"

func _on_bp_4_pressed() -> void:
	p4tries = p4tries + 1
	$bp4.text = "Gracz 4 (" + str(p4tries) + "/6)"
	if(p4tries == p4):
		$bp4.text = "Gracz 4 (Martwy)"
