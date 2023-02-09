extends KinematicBody2D

var velocidade = 40000
var i_velho

func _ready():
	pass
	
func _physics_process(delta):
	
	var x = get_parent().get_node("AbaDeSelecao/Comandos")
	var movimento = Vector2()
	
	if x.iniciou == true && i_velho!=Global.i_contador:
		i_velho = Global.i_contador
		print(i_velho)
		
		if x.array[Global.i_contador] == "esquerda":
			movimento.x -= velocidade
		elif x.array[Global.i_contador] == "direita": 
			movimento.x += velocidade
		elif x.array[Global.i_contador] == "baixo":
			movimento.y += velocidade
		elif x.array[Global.i_contador] == "cima":
			movimento.y -= velocidade
			
		movimento = movimento.normalized()
		
		move_and_slide(movimento*velocidade)
		
		
#func _on_Area2D_body_entered():
#	i += 1
#	print("teste",i)
