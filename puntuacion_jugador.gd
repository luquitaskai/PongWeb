extends CanvasLayer

var puntos = 0

func _ready() -> void:
	$Label.text = str(puntos)


func anotacion():
	puntos += 1
	$Label.text = str(puntos)
