extends CharacterBody2D

var movimiento = 50
var velocidad = 300
var multijugador = false
var pelota 

func _ready():
	
	pelota = get_parent().get_node("Pelota")
	multijugador = Global.multijugador
	
func _physics_process(delta):
	
	if multijugador:
		movimientodeljugador()
	else:
		enemigoautonomo()
	
	move_and_collide(velocity * delta)

func enemigoautonomo():
	if pelota == null:
		velocity.y = 0
	elif pelota.position.y < position.y:
			velocity.y = -1
	else: 
		velocity.y = 1
		 
	velocity *= velocidad
	
func movimientodeljugador():
	
	var MoverArriba = Input.is_action_pressed("Arriba2")
	var MoverAbajo = Input.is_action_pressed("Abajo2")
	
	if MoverArriba:
		velocity.y = velocity.y - movimiento
	elif MoverAbajo:
		velocity.y = velocity.y + movimiento
	else:
		velocity.y = 0
		
	
