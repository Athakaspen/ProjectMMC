extends Node2D

enum MOVETYPE {DO, DONT, BUMP}

enum CELLTYPE {EMPTY=-1, DIRT=0, GRASS=1, STONE=2, COAL=3, SILVER=4, GOLD=5}

export var speedMult = 1.0

onready var Grid = get_parent()

#func _ready():

func _process(delta):
	var moveDir = null
	if Input.is_action_pressed("moveDown"):
		moveDir = Vector2(0,1)
	elif Input.is_action_pressed("moveUp"):
		moveDir = Vector2(0,-1)
	elif Input.is_action_pressed("moveRight"):
		moveDir = Vector2(1,0)
	elif Input.is_action_pressed("moveLeft"):
		moveDir = Vector2(-1,0)
	
	if moveDir != null:
		var moveInfo = Grid.requestMove(self, moveDir)
		# moveInfo = [moveType, moveLocation, speed]
		var moveType = moveInfo[0]
		
		if moveType == DO:
			updateLookDirection(moveDir)
				# Move to new square
			var movePos = moveInfo[1]
			var speed = moveInfo[2]
			move_to(movePos, speed)
		elif moveType == BUMP:
			updateLookDirection(moveDir)
				# Stop movements and play animation
			$AnimationPlayer.play("bump")
			set_process(false)
			yield($AnimationPlayer, "animation_finished")
			set_process(true)
		elif moveType == DONT:
			pass


func move_to(targetPosition, speed = 2):
	
	set_process(false) # Disable user input while moving
	
	var moveRelativePos = (targetPosition-position) # Get relative Vector2 to add to position
	
	# setup tween (to move player sprite smoothly)
	$Tween.interpolate_property($Point, "position", -moveRelativePos, Vector2(), 1/float(speed*speedMult), Tween.TRANS_LINEAR, Tween.EASE_IN)
	
	$Tween.start()
	
	position = targetPosition # Set new position
	$Point.position = -moveRelativePos # Prevent glitchy flash before tween takes over to move sprite
	
	#Grid.displayTileID(position)
	print(Grid.world_to_map(position))
	
	yield($Tween, "tween_completed") # Wait until Tween finishes
	
	Grid.removeTile(self.position)
	set_process(true) # Resume checking for input


func updateLookDirection(lookDir):
	
	if abs(lookDir.x) > abs(lookDir.y):
		if lookDir.x >= 0: $Point/Sprite.texture = load("res://Sprites/Drill/Drill_Right.png")
		else: $Point/Sprite.texture = load("res://Sprites/Drill/Drill_Left.png")
	else: 
		if lookDir.y >= 0: $Point/Sprite.texture = load("res://Sprites/Drill/Drill_Down.png")
		else: $Point/Sprite.texture = load("res://Sprites/Drill/Drill_Up.png")




