extends Area2D

@onready var node: Node = $Node

func _on_body_entered(body: Node2D) -> void:
	var points=node.get_children()
	for p in points:
		p.call_deferred("spawn")
	queue_free()
