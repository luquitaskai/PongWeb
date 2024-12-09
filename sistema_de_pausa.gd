extends Node2D

var padre 
var etiquitapausa 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	padre = get_parent()
	etiquitapausa = padre.get_node("Pausa")
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pausa()

	
	
func pausa():
	if Input.is_action_just_pressed("Pausa"):
		if get_tree().paused:
			get_tree().paused = false  # Reanudar el juego
			etiquitapausa.visible = false
		else:
			get_tree().paused = true   # Pausar el juego
			etiquitapausa.visible = true
			
