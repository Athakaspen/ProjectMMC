extends Sprite

export var SPEED = 2
var moveSpeed = SPEED

func _process(delta):

	if Input.is_key_pressed(KEY_SHIFT):
		moveSpeed = SPEED*4
	else: 
		moveSpeed = SPEED

	if Input.is_key_pressed(KEY_UP):
		self.position.y-=moveSpeed
	if Input.is_key_pressed(KEY_DOWN):
		self.position.y+=moveSpeed
	if Input.is_key_pressed(KEY_RIGHT):
		self.position.x+=moveSpeed
	if Input.is_key_pressed(KEY_LEFT):
		self.position.x-=moveSpeed
	
