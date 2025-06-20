execute store result score #has_items inv_utils.temp if data entity @s Inventory[{}]

execute if score #has_items inv_utils.temp matches 0 run function inventory_utils:retrieve/restore_inventory
execute if score #has_items inv_utils.temp matches 1.. run function inventory_utils:retrieve/inventory_conflict