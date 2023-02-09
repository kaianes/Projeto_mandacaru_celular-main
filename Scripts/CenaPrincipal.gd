extends Node2D

func _ready():
	var control_screen = load("res://Screens/AbaDeSelecao.tscn").instance()
	get_tree().current_scene.add_child(control_screen)


func _on_Area2D_body_entered(body):
	Global.i_contador += 1
