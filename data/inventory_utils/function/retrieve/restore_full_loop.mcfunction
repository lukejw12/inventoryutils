setblock ~ ~ ~ chest
data modify block ~ ~ ~ Items set value []
data modify block ~ ~ ~ Items append from storage inventory_utils:temp restore_data.Inventory[0]
data modify block ~ ~ ~ Items[0].Slot set value 0b

execute store result score #current_slot inv_utils.temp run data get storage inventory_utils:temp restore_data.Inventory[0].Slot

execute as @a[limit=1,sort=nearest] run function inventory_utils:restore_single_slot

setblock ~ ~ ~ air
data remove storage inventory_utils:temp restore_data.Inventory[0]
scoreboard players remove #items_to_restore inv_utils.temp 1

execute if score #items_to_restore inv_utils.temp matches 1.. run function inventory_utils:retrieve/restore_full_loop