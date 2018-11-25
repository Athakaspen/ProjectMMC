extends TileMap

enum CELLTYPE {EMPTY=-1, DIRT=0, GRASS=1, STONE=2, COAL=3, SILVER=4, GOLD=5}
enum MOVETYPE {DO, DONT, BUMP}

# Vars for World Generation
export var WorldSize = Vector2(5, 5)
var TopHeight = 4

var stoneFreq = 0.4
var stoneMin = 2
onready var stoneMax = 2*WorldSize.y

var coalFreq = 0.15
var coalMin = 2
var coalMax = 20

var silverFreq = 0.15
var silverMin = 15
var silverMax = 30

var goldFreq = 0.15
var goldMin = 25
var goldMax = 45

func _ready():
	# Random World Generation
	randomize()
	generateWorld()
	# Move player to starting position
	$Player.position = map_to_world(Vector2(WorldSize.x/2,3)) + Vector2(16,16)

func get_cell_pawn(cell, type):
	for node in get_children():
		if node.type != type:
			continue
		if world_to_map(node.position) == cell:
			return(node)

func displayTileID(location):
	print(get_cellv(world_to_map(location)))

func requestMove(pawn, direction):
	var cell_start = world_to_map(pawn.position)
	var cell_target = cell_start + direction.normalized()
	
	if (cell_target.y<3) || (cell_target.x<0) || (cell_target.x>WorldSize.x-1):
		#print("Your drill can't fly, sorry.")
		return [MOVETYPE.DONT]
	
	var target_cell_id = get_cellv(cell_target)
	match target_cell_id:
		EMPTY:
			return [MOVETYPE.DO, (map_to_world(cell_target) + cell_size/2), 2.5]
		GRASS, DIRT:
			return [MOVETYPE.DO, (map_to_world(cell_target) + cell_size/2), 1.6]
		COAL, SILVER, GOLD:
			return [MOVETYPE.DO, (map_to_world(cell_target) + cell_size/2), 1]
		STONE:
			#print("Cell contains stone.")
			return [MOVETYPE.BUMP]

func removeTile(tilePos):
	set_cellv(world_to_map(tilePos), EMPTY)


func generateWorld():
	var width = WorldSize.x
	var height = WorldSize.y
	var curDepth = TopHeight
	
	# Grid Tilemap
	for row in range(TopHeight, TopHeight+height): # Going row by row
		curDepth = row-TopHeight
		for col in range(width):
			if col==0 || col==width-1 || curDepth==height-1:
				set_cellv(Vector2(col,row), STONE) # Stone Borders
			else:
				set_cellv(Vector2(col,row), getTile(curDepth)) # Set tile using getTile() function
			
			
			# Put background tile in
			$"../BackGround".set_cellv(Vector2(col,row), 0)

# Use random number generators to choose each tile for a given depth
func getTile(depth):
	if depth==0:
		return GRASS # Grass for the top layer
	else:
		var returnVal = DIRT # Default is Dirt
		# Stone Chance
		if depth>=stoneMin && depth<=stoneMax:
			var stoneChance = (-abs(depth-(stoneMin+stoneMax)/2)/((stoneMax-stoneMin)/(2*stoneFreq))+stoneFreq)
			print(stoneChance)
			if randf()<=stoneChance:
				returnVal = STONE
		
		# Coal Chance
		if depth>=coalMin && depth<=coalMax:
			var coalChance = (-abs(depth-(coalMin+coalMax)/2)/((coalMax-coalMin)/(2*coalFreq))+coalFreq)
			print(coalChance)
			if randf()<=coalChance:
				returnVal = COAL
		
		# silver Chance
		if depth>=silverMin && depth<=silverMax:
			var silverChance = (-abs(depth-(silverMin+silverMax)/2)/((silverMax-silverMin)/(2*silverFreq))+silverFreq)
			print(silverChance)
			if randf()<=silverChance:
				returnVal = SILVER
		
		# gold Chance
		if depth>=goldMin && depth<=goldMax:
			var goldChance = (-abs(depth-(goldMin+goldMax)/2)/((goldMax-goldMin)/(2*goldFreq))+goldFreq)
			print(goldChance)
			if randf()<=goldChance:
				returnVal = GOLD

		return returnVal