extends RigidBody2D

@export var LiftCoefficient: float = 0.15
@export var DragCoefficient: float = 0.002
@export var InitialVelocity: float = 5000

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var ForwardDirection = global_transform.x
	linear_velocity = ForwardDirection * InitialVelocity


func  _integrate_forces(state: PhysicsDirectBodyState2D) -> void:
	var velocity = state.linear_velocity
	var speed = velocity.length()
	
	if speed < 10:
		return
	
	var VelocityNormalized = velocity.normalized()
	var DragDirection = -VelocityNormalized
	var LiftDirection = Vector2(VelocityNormalized.y, -VelocityNormalized.x)
	
	var LiftMagnitude = speed * speed * LiftCoefficient
	var DragMagnitude = speed * speed * DragCoefficient
	
	var Lift = LiftDirection * LiftMagnitude
	var Drag = DragDirection * DragMagnitude
	
	state.apply_central_force(Lift + Drag)
