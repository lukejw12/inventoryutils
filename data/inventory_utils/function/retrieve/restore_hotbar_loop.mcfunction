execute store result score #slot_id inv_utils.temp run data get storage inventory_utils:temp restore_data.Inventory[0].Slot

execute if score #slot_id inv_utils.temp matches 0..8 run setblock ~ ~ ~ chest
execute if score #slot_id inv_utils.temp matches 0..8 run data modify block ~ ~ ~ Items set value []
execute if score #slot_id inv_utils.temp matches 0..8 run data modify block ~ ~ ~ Items append from storage inventory_utils:temp restore_data.Inventory[0]
execute if score #slot_id inv_utils.temp matches 0..8 run execute store result storage inventory_utils:temp current_slot_value int 1 run scoreboard players get #slot_id inv_utils.temp
execute if score #slot_id inv_utils.temp matches 0..8 as @a[limit=1,sort=nearest] run function inventory_utils:restore_single_slot_fixed with storage inventory_utils:temp
execute if score #slot_id inv_utils.temp matches 0..8 run setblock ~ ~ ~ air

data remove storage inventory_utils:temp restore_data.Inventory[0]
scoreboard players remove #items_to_restore inv_utils.temp 1

execute if score #slot_id inv_utils.temp matches 1.. run function inventory_utils:retrieve/restore_hotbar_loop