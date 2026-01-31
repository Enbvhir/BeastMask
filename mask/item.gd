class_name Item
extends Node2D
signal taken

var ori_y:float
var time_accumulator:float

func _on_area_2d_body_entered(body: Node2D) -> void:
	taken.emit()
	queue_free()

func _ready() -> void:
	ori_y=position.y

func _physics_process(delta: float) -> void:
	time_accumulator+=delta
	position.y=ori_y+10*sin(5*time_accumulator)
