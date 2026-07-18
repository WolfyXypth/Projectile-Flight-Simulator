extends Control
@export var fuselagedrag: float
@export var fuselagelift: float


func _on_commercial_pressed() -> void:
	print("Commercial pressed")
	fuselagelift = 0.4
	fuselagedrag = 0.6
	get_tree().change_scene_to_file("res://wingschoice.tscn")
	
func _on_fighterjet_pressed() -> void:
	print("Fighterjet Pressed")
	fuselagelift = 0.8
	fuselagedrag = 0.4
	get_tree().change_scene_to_file("res://wingschoice.tscn")
	
func _on_doubledecker_pressed() -> void:
	print("Doubledecker Pressed")
	fuselagelift = 0.2
	fuselagedrag = 0.7
	get_tree().change_scene_to_file("res://wingschoice.tscn")


func _on_blended_pressed() -> void:
	print("Blended")
	fuselagelift = 0.6
	fuselagedrag = 0.3
	get_tree().change_scene_to_file("res://wingschoice.tscn")
