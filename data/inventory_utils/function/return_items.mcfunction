execute store result score #Inventory_Utils.slot Inventory_Utils.sort run data get entity @s data.Inventory[0].Slot
data remove entity @s data.Inventory[0].Slot
data merge block ~ ~ ~ {Items:[]}
data modify block ~ ~ ~ Items append from entity @s data.Inventory[0]
execute as @a[tag=target] run function inventory_utils:correct_slot
data remove entity @s data.Inventory[0]
scoreboard players remove #Inventory_Utils.items Inventory_Utils.sort 1
execute if score #Inventory_Utils.items Inventory_Utils.sort matches 1.. run function inventory_utils:return_items
execute if score #Inventory_Utils.items Inventory_Utils.sort matches 0 run data merge block ~ ~ ~ {Items:[]}
execute if score #Inventory_Utils.items Inventory_Utils.sort matches 0 run setblock ~ ~ ~ air

