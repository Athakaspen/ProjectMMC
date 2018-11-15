extends Node2D

export var speed = 2

func _ready():
	pass

func _process(delta):
	if Input.is_action_pressed("moveUp"):
		move_to(Vector2(position.x, position.y-32))
	if Input.is_action_pressed("moveDown"):
		move_to(Vector2(position.x, position.y+32))
	if Input.is_action_pressed("moveRight"):
		move_to(Vector2(position.x+32, position.y))
	if Input.is_action_pressed("moveLeft"):
		move_to(Vector2(position.x-32, position.y))


func move_to(targetPosition):
	
	set_process(false) # Disable user input while moving
	
	var moveRelativePos = (targetPosition-position) # Get relative Vector2 to add to position
	
	# setup tween (to move player sprite smoothly)
	$Tween.interpolate_property($Point, "position", -moveRelativePos, Vector2(), 1/float(speed), Tween.TRANS_LINEAR, Tween.EASE_IN)
	
	$Tween.start()
	
	position = targetPosition # Set new position
	$Point.position = -moveRelativePos # Prevent glitchy flash before tween takes over to move sprite
	updateLookDirection(moveRelativePos.normalized())
	
	yield($Tween, "tween_completed") # Wait until Tween finishes
	
	set_process(true) # Resume checking for input


func updateLookDirection(lookDir):
	
	if abs(lookDir.x) > abs(lookDir.y):
		if lookDir.x >= 0: $Point/Sprite.texture = load("res://Sprites/Drill/Drill_Right.png")
		else: $Point/Sprite.texture = load("res://Sprites/Drill/Drill_Left.png")
	else: 
		if lookDir.y >= 0: $Point/Sprite.texture = load("res://Sprites/Drill/Drill_Down.png")
		else: $Point/Sprite.texture = load("res://Sprites/Drill/Drill_Up.png")




