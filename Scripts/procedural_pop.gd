extends Node2D

export var density = 400
onready var rng = RandomNumberGenerator.new()
onready var asteroid_scn := preload("res://Scenes/Scenery/Asteroid.tscn")
onready var asteroid_rb_scn := preload("res://Scenes/Scenery/Asteroid_rb.tscn")
onready var level_bounds = $LevelBounds.polygon
onready var pds = PoissonDiscSampling.new()
var game_seed: String = ""



# Called when the node enters the scene tree for the first time.
func _ready():
	rng.seed = game_seed.hash()
	var points = pds.generate_points(density, level_bounds, 3, Vector2(0,0))
	for point in points: 
		var asteroid = asteroid_scn.instance()
		asteroid.position = point
		get_tree().current_scene.add_child(asteroid)
		pass
	
	
	
#	for y in range(14):
#		for x in range(14):
#			var rand = rng.randi_range(1, 10)
#			if rand < 2:
#				var asteroid_rb = asteroid_rb_scn.instance()
#				get_tree().current_scene.add_child(asteroid_rb)
#				asteroid_rb.global_position.y = (y-7) * 400
#				asteroid_rb.global_position.x = (x-7) * 400
#			if rand > 8:
#				var asteroid = asteroid_scn.instance()
#				get_tree().current_scene.add_child(asteroid)
#				asteroid.global_position.y = (y-7) * 400
#				asteroid.global_position.x = (x-7) * 400


#func _process(delta):
#	pass
