extends Control
@export var headlift: float
@export var headdrag: float


func _on_button_pressed() -> void:
	print("Commercial pressed")
	headlift = 0.4
	headdrag = 0.6
	get_tree().change_scene_to_file("res://tailchoice.tscn")
	
func _on_button_2_pressed() -> void:
	print("Fighterjet Pressed")
	headlift = 0.8
	headdrag = 0.4
	get_tree().change_scene_to_file("res://tailchoice.tscn")
	
func _on_button_3_pressed() -> void:
	print("Doubledecker Pressed")
	headlift = 0.2
	headdrag = 0.7
	get_tree().change_scene_to_file("res://tailchoice.tscn")


func _on_button_4_pressed() -> void:
	print("Blended")
	headlift = 0.6
	headdrag = 0.3
	get_tree().change_scene_to_file("res://tailchoice.tscn")
