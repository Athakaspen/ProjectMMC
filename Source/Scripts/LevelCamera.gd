extends Camera2D

export var VIEW_WIDTH = 8
onready var CAMERA_WIDTH = 32*VIEW_WIDTH

func _ready():
	# Set Camera zoom
	var zoomWidth = CAMERA_WIDTH / get_viewport().size.x
	self.zoom = Vector2(zoomWidth, zoomWidth)
	self.limit_top = 0;
	self.limit_left = 0;
	self.limit_right = WorldGen.WorldSize.x*32
	self.limit_bottom = (WorldGen.TopHeight + WorldGen.WorldSize.y) *32

"""
# FOR DEBUGGING: Set camera zoom every frame
func _process(delta):
	# Set Camera zoom
	var zoomWidth = CAMERA_WIDTH / get_viewport().size.x
	self.zoom = Vector2(zoomWidth, zoomWidth)
"""