extends Camera2D

export var CAMERA_WIDTH = 256

func _ready():
	# Set Camera zoom
	var zoomWidth = CAMERA_WIDTH / get_viewport().size.x
	self.zoom = Vector2(zoomWidth, zoomWidth)

"""
# FOR DEBUGGING: Set camera zoom every frame
func _process(delta):
	# Set Camera zoom
	var zoomWidth = CAMERA_WIDTH / get_viewport().size.x
	self.zoom = Vector2(zoomWidth, zoomWidth)
"""