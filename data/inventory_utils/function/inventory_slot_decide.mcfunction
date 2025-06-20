execute positioned 0 300 0 run setblock ~ ~ ~ chest
execute store result score #Inventory_Utils.items Inventory_Utils.sort run data get entity @s data.Inventory
execute if score #Inventory_Utils.items Inventory_Utils.sort matches 1.. positioned 0 300 0 run function inventory_utils:return_items
kill @s
