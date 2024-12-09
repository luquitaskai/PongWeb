class_name Jugador_script
extends CharacterBody2D

@export var movimiento = 50

func _physics_process(delta):
	
	var MoverArriba = Input.is_action_pressed("Arriba")
	var MoverAbajo = Input.is_action_pressed("Abajo")
	
	
	if MoverArriba:
		velocity.y = velocity.y - movimiento
	elif MoverAbajo:
		velocity.y = velocity.y + movimiento
	else:
		velocity.y = 0
		
	move_and_slide()
	
func _ready():
	pass
	
	
