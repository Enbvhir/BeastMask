extends Node

const UI_THEME = preload("uid://dfa43m1akf7gs")
const UI_PLAY = preload("uid://bmqikbyoogitf")
const UI_PASS = preload("uid://bddui4ooiilgm")

func switch_scene(packed_scene:PackedScene):
	get_tree().call_deferred("change_scene_to_packed",packed_scene)

enum EnumEnemy{
	STONE,
	ATTACKER,
	ZOMBIE
}
var pack_enemy:Array=[
	preload("uid://ciar6x6412wcf"),
	preload("uid://d2lslivf0podk"),
	preload("uid://cnrd6ves3ilva")
]

var player:Entity=null
var node_enemy:Node=null
