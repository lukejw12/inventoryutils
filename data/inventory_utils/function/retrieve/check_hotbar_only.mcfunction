execute store result score #has_hotbar_items inv_utils.temp if data entity @s Inventory[{Slot:0b}]
execute store result score #temp_count inv_utils.temp if data entity @s Inventory[{Slot:1b}]
scoreboard players operation #has_hotbar_items inv_utils.temp += #temp_count inv_utils.temp
execute store result score #temp_count inv_utils.temp if data entity @s Inventory[{Slot:2b}]
scoreboard players operation #has_hotbar_items inv_utils.temp += #temp_count inv_utils.temp
execute store result score #temp_count inv_utils.temp if data entity @s Inventory[{Slot:3b}]
scoreboard players operation #has_hotbar_items inv_utils.temp += #temp_count inv_utils.temp
execute store result score #temp_count inv_utils.temp if data entity @s Inventory[{Slot:4b}]
scoreboard players operation #has_hotbar_items inv_utils.temp += #temp_count inv_utils.temp
execute store result score #temp_count inv_utils.temp if data entity @s Inventory[{Slot:5b}]
scoreboard players operation #has_hotbar_items inv_utils.temp += #temp_count inv_utils.temp
execute store result score #temp_count inv_utils.temp if data entity @s Inventory[{Slot:6b}]
scoreboard players operation #has_hotbar_items inv_utils.temp += #temp_count inv_utils.temp
execute store result score #temp_count inv_utils.temp if data entity @s Inventory[{Slot:7b}]
scoreboard players operation #has_hotbar_items inv_utils.temp += #temp_count inv_utils.temp
execute store result score #temp_count inv_utils.temp if data entity @s Inventory[{Slot:8b}]
scoreboard players operation #has_hotbar_items inv_utils.temp += #temp_count inv_utils.temp

execute if score #has_hotbar_items inv_utils.temp matches 0 run function inventory_utils:retrieve/restore_inventory
execute if score #has_hotbar_items inv_utils.temp matches 1.. run function inventory_utils:retrieve/inventory_conflict