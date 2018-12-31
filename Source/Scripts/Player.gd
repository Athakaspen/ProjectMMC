extends Node2D

enum MOVETYPE {DO, DONT, BUMP}

enum CELLTYPE {EMPTY=-1, DIRT=0, GRASS=1, STONE=2, COAL=3, SILVER=4, GOLD=5}

export var speedMult = 1.0

onready var Grid = get_parent()

var Inventory

func _ready():
	Inventory = {
		"coal": 0,
		"silver": 0,
		"gold": 0
	}
	updateUILabel()


func _process(delta):
	var moveDir = null

	# Mouse Movements
	if Input.is_mouse_button_pressed(BUTTON_LEFT):
		var mouseDir = get_global_mouse_position()-self.position
		if abs(mouseDir.x) > abs(mouseDir.y):
			if mouseDir.x >= 0: moveDir = Vector2(1,0)
			else: moveDir = Vector2(-1,0)
		else: 
			if mouseDir.y >= 0: moveDir = Vector2(0,1)
			else: moveDir = Vector2(0,-1)

	# Keyboard Movements
	if Input.is_action_pressed("moveDown"):
		moveDir = Vector2(0,1)
	elif Input.is_action_pressed("moveUp"):
		moveDir = Vector2(0,-1)
	elif Input.is_action_pressed("moveRight"):
		moveDir = Vector2(1,0)
	elif Input.is_action_pressed("moveLeft"):
		moveDir = Vector2(-1,0)


	# Actually move
	if moveDir != null:
		var moveInfo = Grid.requestMove(self, moveDir)
		# moveInfo = [moveType, moveLocation, speed]
		var moveType = moveInfo[0]

		match moveType:
			DO:
				updateLookDirection(moveDir)
				# Move to new square
				var movePos = moveInfo[1]
				var speed = moveInfo[2]
				#print(Inventory)
				move_to(movePos, speed)
			BUMP:
				updateLookDirection(moveDir)
					# Stop movements and play animation
				$AnimationPlayer.play("bump")
				set_process(false)
				yield($AnimationPlayer, "animation_finished")
				set_process(true)
			DONT:
				pass


func move_to(targetPosition, speed = 2):
	
	set_process(false) # Disable user input while moving
	
	var moveRelativePos = (targetPosition-position) # Get relative Vector2 to add to position
	
	$Point.position = -moveRelativePos # Prevent glitchy flash before tween takes over to move sprite
	position = targetPosition # Set new position
	
	# setup tween (to move player sprite smoothly)
	$Tween.interpolate_property($Point, "position", -moveRelativePos, Vector2(), 1/float(speed*speedMult), Tween.TRANS_LINEAR, Tween.EASE_IN)
	
	$Tween.start()
	
	#Grid.displayTileID(position)
	#print(Grid.world_to_map(self.position))
	
	yield($Tween, "tween_completed") # Wait until Tween finishes (ie movement is complete)
	
	var oreType = Grid.mineTile(self.position) # Tell grid to mine the tile
	if oreType!="none":
		Inventory[oreType]+=1 # Add the newly mined ore to inventory
		updateUILabel() 
	
	set_process(true) # Resume checking for input


func updateLookDirection(lookDir):
	
	if abs(lookDir.x) > abs(lookDir.y):
		if lookDir.x >= 0: $Point/Sprite.texture = load("res://Sprites/Drill/Drill_Right.png")
		else: $Point/Sprite.texture = load("res://Sprites/Drill/Drill_Left.png")
	else: 
		if lookDir.y >= 0: $Point/Sprite.texture = load("res://Sprites/Drill/Drill_Down.png")
		else: $Point/Sprite.texture = load("res://Sprites/Drill/Drill_Up.png")

func updateUILabel():
		var coalLabel = get_node("../../CanvasLayer/UI/MarginContainer/HBoxContainer/VBoxContainer/Coal")
		coalLabel.text = "Coal: " + str(Inventory["coal"])
		
		var silverLabel = get_node("../../CanvasLayer/UI/MarginContainer/HBoxContainer/VBoxContainer/Silver")
		silverLabel.text = "Silver: " + str(Inventory["silver"])
		
		var goldLabel = get_node("../../CanvasLayer/UI/MarginContainer/HBoxContainer/VBoxContainer/Gold")
		goldLabel.text = "Gold: " + str(Inventory["gold"])




func _on_backtomenu(): # Triggered by button signal
	
	# Add current inventory to global values
	PlayerInventory.Coal += Inventory["coal"]
	PlayerInventory.Silver += Inventory["silver"]
	PlayerInventory.Gold += Inventory["gold"]
	# Change scene
	get_tree().change_scene("res://Scenes/Menu.tscn")




