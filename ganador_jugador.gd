extends Control

var campo = preload("res://Campo.tscn")
var menu = preload("res://Menu.tscn")

var instagram_url: String = "https://www.instagram.com/atweb8/"

func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_jugar_de_nuevo_pressed() -> void:
	get_tree().paused = false
	get_tree().reload_current_scene()



func _on_menu_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://Menu.tscn")


func _on_instagram_pressed() -> void:
	OS.shell_open(instagram_url)
