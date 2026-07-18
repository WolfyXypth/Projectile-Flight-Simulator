extends Control
@export var taillift: float
@export var taildrag: float



func _on_button_pressed() -> void:
	print("Commercial pressed")
	taillift = 0.4
	taildrag = 0.6
	
	
func _on_button_2_pressed() -> void:
	print("Fighterjet Pressed")
	taillift = 0.8
	taildrag = 0.4
	
	
func _on_button_3_pressed() -> void:
	print("Doubledecker Pressed")
	taillift = 0.2
	taildrag = 0.7
	


func _on_button_4_pressed() -> void:
	print("Blended")
	taillift = 0.6
	taildrag = 0.3
