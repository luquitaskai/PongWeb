extends Control


var campo = preload("res://Campo.tscn")
var enemigoecena = preload("res://enemigo.tscn")
var enemigo

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	enemigo = enemigoecena.instantiate()
	

func _on__jugador_pressed() -> void:
	get_tree().change_scene_to_packed(campo)


func _on__jugadores_pressed() -> void:
	Global.multijugador = true  # Guarda el estado en el Autoload
	get_tree().change_scene_to_packed(campo)
