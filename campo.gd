extends Node2D

const CENTRO = Vector2(576,324)

var mododejuego

func _ready():
	pass
	
func _process(delta: float) -> void:
	ganador()
	ganadorenemigo()




func _on_area_del_jugador_body_entered(body: Node2D) -> void:
	$Pelota.position = CENTRO
	$PuntuacionJugador.anotacion()
	$Pelota.call("nueva_velocidad")


func _on_area_enemiga_body_entered(body: Node2D) -> void:
	$Pelota.position = CENTRO
	$PuntuacionEnemigo.anotacion()
	$Pelota.call("nueva_velocidad")
	

func ganador():
	var puntosjugador = $PuntuacionJugador.puntos
	if puntosjugador == 3:
		get_tree().paused = true
		$GanadorJugador.visible = true
	
func ganadorenemigo():
	var puntosenemigo = $PuntuacionEnemigo.puntuacion
	if puntosenemigo == 3:
		get_tree().paused = true
		print($GanadorEnemigo)
		$GanadorEnemigo.visible = true
