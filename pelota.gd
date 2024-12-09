extends CharacterBody2D

var velocidad_inicial = 500
var peleto_nueva = PackedScene	
var posicion_incial = 0

func _ready():
	posicion_incial = position
	peleto_nueva = preload("res://pelota.tscn")
	nueva_velocidad()
	
	

func nueva_velocidad():
	if randi() % 2 == 0:
		velocity.x = 1
	else:
		velocity.x = -1
	if randi() % 2 == 0:
		velocity.y = 1
	else:
		velocity.y = -1
		
	velocity *= velocidad_inicial


func _physics_process(delta: float) -> void:
	var objeto_colisionado = move_and_collide(velocity * delta)
	if objeto_colisionado:
		velocity = velocity.bounce(objeto_colisionado.get_normal()) 
		
	if objeto_colisionado != null:
		var normal = objeto_colisionado.get_normal()
		if abs(normal.x) > 0.1 and abs(normal.y) > 0.1:
			velocity = velocity.bounce(normal)
