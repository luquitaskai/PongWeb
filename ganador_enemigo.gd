extends Control

var campo = preload("res://Campo.tscn")
var menu = preload("res://Menu.tscn")

func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_jugar_de_nuevo_pressed() -> void:
	print("jugar de nuevo presionado")
	get_tree().paused = false
	get_tree().reload_current_scene()



func _on_menu_pressed() -> void:
	print("menu presionado")
	get_tree().paused = false
	get_tree().change_scene_to_file("res://Menu.tscn")
	print(menu)
