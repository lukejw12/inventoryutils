execute if score #items_processed inv_utils.temp matches 4.. run return 0
execute store result score #items_remaining inv_utils.temp run data get entity @s data.Inventory
execute if score #items_remaining inv_utils.temp matches 0 run return 0

data modify storage inventory_utils:temp current_item set from entity @s data.Inventory[0]
data remove entity @s data.Inventory[0]

execute if data storage inventory_utils:temp current_item run function inventory_utils:utils/add_simple_preview_item
scoreboard players add #items_processed inv_utils.temp 1

function inventory_utils:utils/simple_preview_loop