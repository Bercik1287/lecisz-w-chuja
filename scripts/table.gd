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
var color_change = 2

var tc = 0

var rng = RandomNumberGenerator.new()

func _ready() -> void:
	p1 = rng.randi_range(1, 6)
	p2 = rng.randi_range(1, 6)
	p3 = rng.randi_range(1, 6)
	p4 = rng.randi_range(1, 6)
	bp1_color_override(0,1,0,1)
	bp2_color_override(0,1,0,1)
	bp3_color_override(0,1,0,1)
	bp4_color_override(0,1,0,1)

func bp1_color_override(a: float, b: float, c: float, d: float) -> void:
	$bp1.add_theme_color_override("font_color", Color(a,b,c,d))
	$bp1.add_theme_color_override("font_hover_color", Color(a,b,c,d))
	$bp1.add_theme_color_override("font_hover_pressed_color", Color(a,b,c,d))
	$bp1.add_theme_color_override("font_pressed_color", Color(a,b,c,d))
	$bp1.add_theme_color_override("font_focus_color", Color(a,b,c,d))
	$bp1.add_theme_color_override("font_color", Color(a,b,c,d))

func bp2_color_override(a: float, b: float, c: float, d: float) -> void:
	$bp2.add_theme_color_override("font_color", Color(a,b,c,d))
	$bp2.add_theme_color_override("font_hover_color", Color(a,b,c,d))
	$bp2.add_theme_color_override("font_hover_pressed_color", Color(a,b,c,d))
	$bp2.add_theme_color_override("font_pressed_color", Color(a,b,c,d))
	$bp2.add_theme_color_override("font_focus_color", Color(a,b,c,d))
	$bp2.add_theme_color_override("font_color", Color(a,b,c,d))

func bp3_color_override(a: float, b: float, c: float, d: float) -> void:
	$bp3.add_theme_color_override("font_color", Color(a,b,c,d))
	$bp3.add_theme_color_override("font_hover_color", Color(a,b,c,d))
	$bp3.add_theme_color_override("font_hover_pressed_color", Color(a,b,c,d))
	$bp3.add_theme_color_override("font_pressed_color", Color(a,b,c,d))
	$bp3.add_theme_color_override("font_focus_color", Color(a,b,c,d))
	$bp3.add_theme_color_override("font_color", Color(a,b,c,d))

func bp4_color_override(a: float, b: float, c: float, d: float) -> void:
	$bp4.add_theme_color_override("font_color", Color(a,b,c,d))
	$bp4.add_theme_color_override("font_hover_color", Color(a,b,c,d))
	$bp4.add_theme_color_override("font_hover_pressed_color", Color(a,b,c,d))
	$bp4.add_theme_color_override("font_pressed_color", Color(a,b,c,d))
	$bp4.add_theme_color_override("font_focus_color", Color(a,b,c,d))
	$bp4.add_theme_color_override("font_color", Color(a,b,c,d))
	
func spin() -> void:
	for n in 10:
		await get_tree().create_timer(0.05).timeout
		$Suit.set_frame_and_progress(0, 0)
		await get_tree().create_timer(0.05).timeout
		$Suit.set_frame_and_progress(1, 0)
		await get_tree().create_timer(0.05).timeout
		$Suit.set_frame_and_progress(2, 0)
		n = n+1

func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")

func _on_bp_1_pressed() -> void:
	if(p1tries!=p1):
		p1tries = p1tries + 1
		if(p1tries>color_change):
			bp1_color_override(1,1,0,1)
		$bp1.text = "Gracz 1 (" + str(p1tries) + "/6)"
		if(p1tries == p1):
			$bp1.text = "Gracz 1 (Martwy)"
			bp1_color_override(1,0,0,1)

func _on_bp_2_pressed() -> void:
	if(p2tries!=p2):
		p2tries = p2tries + 1
		if(p2tries>color_change):
			bp2_color_override(1,1,0,1)
		$bp2.text = "Gracz 2 (" + str(p2tries) + "/6)"
		if(p2tries == p2):
			$bp2.text = "Gracz 2 (Martwy)"
			bp2_color_override(1,0,0,1)

func _on_bp_3_pressed() -> void:
	if(p3tries!=p3):
		p3tries = p3tries + 1
		if(p3tries>color_change):
			bp3_color_override(1,1,0,1)
		$bp3.text = "Gracz 3 (" + str(p3tries) + "/6)"
		if(p3tries == p3):
			$bp3.text = "Gracz 3 (Martwy)"
			bp3_color_override(1,0,0,1)

func _on_bp_4_pressed() -> void:
	if(p4tries!=p4):
		p4tries = p4tries + 1
		if(p4tries>color_change):
			bp4_color_override(1,1,0,1)
		$bp4.text = "Gracz 4 (" + str(p4tries) + "/6)"
		if(p4tries == p4):
			$bp4.text = "Gracz 4 (Martwy)"
			bp4_color_override(1,0,0,1)


func _on_btc_pressed() -> void:
	tc = rng.randi_range(1, 3)
	if(tc == 1):
		spin()
		$Suit.set_frame_and_progress(0, 0)
	elif(tc == 2):
		spin()
		$Suit.set_frame_and_progress(1, 0)
	elif(tc == 3):
		spin()
		$Suit.set_frame_and_progress(2, 0)
