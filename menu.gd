extends Control

var cambio_escena = preload("res://modos_de_juego.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_comenzar_pressed() -> void:
	get_tree().change_scene_to_packed(cambio_escena)

func _on_salir_pressed() -> void:
	get_tree().quit()