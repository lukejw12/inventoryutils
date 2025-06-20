execute if score #items_shown inv_utils.temp matches 4.. run function inventory_utils:utils/finish_preview_processing
execute if score #items_shown inv_utils.temp matches 4.. run return 0

execute store result storage inventory_utils:temp current_item_index int 1 run scoreboard players get #total_items inv_utils.temp

data modify storage inventory_utils:temp current_item set from entity @s data.Inventory[0]
execute if data storage inventory_utils:temp current_item run function inventory_utils:utils/add_to_preview

data remove entity @s data.Inventory[0]
scoreboard players add #total_items inv_utils.temp 1

execute store result score #remaining inv_utils.temp run data get entity @s data.Inventory
execute if score #remaining inv_utils.temp matches 1.. run function inventory_utils:utils/process_preview_loop

execute if score #remaining inv_utils.temp matches 0 run function inventory_utils:utils/finish_preview_processing