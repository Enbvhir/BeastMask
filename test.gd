extends Node2D

func _ready() -> void:
	Global.player=%Wolf
	Global.node_enemy=self
	
func _physics_process(delta: float) -> void:
	pass
	#if Input.is_action_just_pressed("space"):%PointEnemy.spawn()
