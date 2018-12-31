extends TileMap

enum CELLTYPE {EMPTY=-1, DIRT=0, GRASS=1, STONE=2, COAL=3, SILVER=4, GOLD=5}
enum MOVETYPE {DO, DONT, BUMP}

var SpeedDict = {
	EMPTY: 2.5,
	DIRT: 1.8,
	GRASS: 1.8,
	STONE: 0,
	COAL: 1,
	SILVER: 1,
	GOLD: 1
}

var OreDict = {
	EMPTY: "none",
	DIRT: "none",
	GRASS: "none",
	STONE: "none",
	COAL: "coal",
	SILVER: "silver",
	GOLD: "gold"
}


# Vars for World Generation
var WorldSize = WorldGen.WorldSize
var TopHeight = WorldGen.TopHeight


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
	var cellStart = world_to_map(pawn.position)
	var cellTarget = cellStart + direction.normalized()
	
	if (cellTarget.y<3) || (cellTarget.x<0) || (cellTarget.x>WorldSize.x-1):
		#print("Your drill can't fly, sorry.")
		return [MOVETYPE.DONT]
	
	var targetCellType = get_cellv(cellTarget)
	
	if targetCellType==STONE:
		#print("Cell contains stone.")
		return [MOVETYPE.BUMP]
	else: 
		return [MOVETYPE.DO, (map_to_world(cellTarget) + cell_size/2), SpeedDict[targetCellType]]
	
	
# Destroy tile and return the ore that the player should recieve.
func mineTile(tilePos):
	var oreToReturn = OreDict[get_cellv(world_to_map(tilePos))]
	set_cellv(world_to_map(tilePos), EMPTY)
	return oreToReturn


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
				set_cellv(Vector2(col,row), generateTile(curDepth)) # Set tile using getTile() function
			
			# Put background tile in
			$"../BackGround".set_cellv(Vector2(col,row), 0)
	
	print("World Generation Complete")

# Use random number generators to choose each tile for a given depth
func generateTile(depth):
	if depth==0:
		return GRASS # Grass for the top layer
	else:
		var returnVal = DIRT # Default is Dirt
		# Stone Chance
		if depth>=WorldGen.stoneMin && depth<=WorldGen.stoneMax:
			var stoneChance = (-abs(depth-(WorldGen.stoneMin+WorldGen.stoneMax)/2)/((WorldGen.stoneMax-WorldGen.stoneMin)/(2*WorldGen.stoneFreq))+WorldGen.stoneFreq)
			#print(stoneChance)
			if randf()<=stoneChance:
				returnVal = STONE
		
		# Coal Chance
		if depth>=WorldGen.coalMin && depth<=WorldGen.coalMax:
			var coalChance = (-abs(depth-(WorldGen.coalMin+WorldGen.coalMax)/2)/((WorldGen.coalMax-WorldGen.coalMin)/(2*WorldGen.coalFreq))+WorldGen.coalFreq)
			#print(coalChance)
			if randf()<=coalChance:
				returnVal = COAL
		
		# Silver Chance
		if depth>=WorldGen.silverMin && depth<=WorldGen.silverMax:
			var silverChance = (-abs(depth-(WorldGen.silverMin+WorldGen.silverMax)/2)/((WorldGen.silverMax-WorldGen.silverMin)/(2*WorldGen.silverFreq))+WorldGen.silverFreq)
			#print(silverChance)
			if randf()<=silverChance:
				returnVal = SILVER
		
		# Gold Chance
		if depth>=WorldGen.goldMin && depth<=WorldGen.goldMax:
			var goldChance = (-abs(depth-(WorldGen.goldMin+WorldGen.goldMax)/2)/((WorldGen.goldMax-WorldGen.goldMin)/(2*WorldGen.goldFreq))+WorldGen.goldFreq)
			#print(goldChance)
			if randf()<=goldChance:
				returnVal = GOLD

		return returnVal