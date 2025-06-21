execute if score #items_to_restore inv_utils.temp matches ..0 run return 0

setblock ~ ~ ~ chest
data modify block ~ ~ ~ Items set value []

execute store result score #current_slot_value inv_utils.temp run data get storage inventory_utils:temp restore_data.Inventory[0].Slot

data modify storage inventory_utils:temp temp_item set from storage inventory_utils:temp restore_data.Inventory[0]
data modify storage inventory_utils:temp temp_item.Slot set value 0b
data modify block ~ ~ ~ Items append from storage inventory_utils:temp temp_item

function inventory_utils:restore_single_slot_fixed with storage inventory_utils:temp
setblock ~ ~ ~ air
data remove storage inventory_utils:temp restore_data.Inventory[0]
scoreboard players remove #items_to_restore inv_utils.temp 1

execute if score #items_to_restore inv_utils.temp matches 1.. run function inventory_utils:retrieve/restore_full_loop