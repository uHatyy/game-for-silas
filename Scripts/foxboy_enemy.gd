extends CharacterBody2D

class_name Foxboy


@onready var navigation_agent_2d = $NavigationAgent2D

@export_group("Locomotion")
@export var rotation_speed: float = 2
@export var wandering_speed = 75
@export var navigation_target: Node2D
@export var chasing_speed = 90

var current_speed

func _ready():
	var navigation_map = get_tree().get_first_node_in_group("tilemap").get_navigation_map(0)
	NavigationServer2D.agent_set_map(navigation_agent_2d.get_rid(), navigation_map)
	navigation_agent_2d.set_navigation_map(navigation_map)
	current_speed = wandering_speed
