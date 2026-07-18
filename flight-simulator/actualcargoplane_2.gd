extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position.x = position.x + 20
	position.y = position.y + 40

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
