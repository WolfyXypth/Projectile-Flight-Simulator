extends Control
@export var winglift: float
@export var wingdrag: float



func _on_button_pressed() -> void:
	print("Commercial pressed")
	winglift = 0.4
	wingdrag = 0.6
	get_tree().change_scene_to_file("res://headchoice.tscn")
	
func _on_button_2_pressed() -> void:
	print("Fighterjet Pressed")
	winglift = 0.8
	wingdrag = 0.4
	get_tree().change_scene_to_file("res://headchoice.tscn")
	
func _on_button_3_pressed() -> void:
	print("Doubledecker Pressed")
	winglift = 0.2
	wingdrag = 0.7
	get_tree().change_scene_to_file("res://headchoice.tscn")


func _on_button_4_pressed() -> void:
	print("Blended")
	winglift = 0.6
	wingdrag = 0.3
	get_tree().change_scene_to_file("res://headchoice.tscn")
	
