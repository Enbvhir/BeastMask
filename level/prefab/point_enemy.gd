extends Marker2D

@export var enemy:Global.EnumEnemy

func spawn():
	if Global.node_enemy:
		var e=Global.pack_enemy[enemy].instantiate()
		e.position=position
		Global.node_enemy.add_child(e)
