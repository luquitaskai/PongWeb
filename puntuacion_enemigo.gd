extends CanvasLayer

var puntuacion = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Label.text = str(puntuacion)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func anotacion():
	puntuacion += 1
	$Label.text = str(puntuacion)
