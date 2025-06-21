setblock ~ ~ ~ chest
data modify block ~ ~ ~ Items set value []
data modify block ~ ~ ~ Items append from storage inventory_utils:temp restore_data.Inventory[0]

execute store result score #current_slot inv_utils.temp run data get storage inventory_utils:temp restore_data.Inventory[0].Slot
execute store result storage inventory_utils:temp current_slot_value int 1 run scoreboard players get #current_slot inv_utils.temp

execute as @a[limit=1,sort=nearest] run function inventory_utils:restore_single_slot_fixed with storage inventory_utils:temp

setblock ~ ~ ~ air
data remove storage inventory_utils:temp restore_data.Inventory[0]
scoreboard players remove #items_to_restore inv_utils.temp 1

execute if score #items_to_restore inv_utils.temp matches 1.. run function inventory_utils:retrieve/restore_full_loop