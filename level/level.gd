class_name Level
extends Node2D

@onready var enter_point: Node = $NodeEnterPoint
@onready var lt: Marker2D = $NodeCameraRange/LT
@onready var rb: Marker2D = $NodeCameraRange/RB

func _on_enemy_stone_15_dead() -> void:Global.switch_scene(Global.UI_PASS)

func _on_dragon_taken() -> void:swicth_player("dragon")
func _on_bear_taken() -> void:swicth_player("bear")
func _on_wolf_taken() -> void:swicth_player("wolf")
	
func _ready() -> void:
	Global.node_enemy=%Node2DEnemy

func swicth_player(str_player:String):
	var node_level=get_parent()
	if node_level:
		var ui_play=node_level.get_parent()
		if ui_play:ui_play.call_deferred("switch_player",str_player)
