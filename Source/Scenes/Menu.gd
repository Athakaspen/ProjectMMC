extends Node


func _ready():
	# Update Menu Labels
	find_node("Coal").text = "Coal Collected: " + str(PlayerInventory.Coal)
	find_node("Silver").text = "Silver Collected: " + str(PlayerInventory.Silver)
	find_node("Gold").text = "Gold Collected: " + str(PlayerInventory.Gold)
	
	print(Random.choose(["Hello", "There"]))