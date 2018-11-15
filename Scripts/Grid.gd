extends TileMap

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	$Player.position = map_to_world(Vector2(0,3)) + Vector2(16,16)

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
