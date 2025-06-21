execute if score #items_shown inv_utils.temp matches 4.. run return 0

execute store result score #items_left inv_utils.temp run data get storage inventory_utils:temp working_inventory
execute if score #items_left inv_utils.temp matches 0 run return 0

data modify storage inventory_utils:temp current_item set from storage inventory_utils:temp working_inventory[0]
data remove storage inventory_utils:temp working_inventory[0]

execute if data storage inventory_utils:temp current_item run function inventory_utils:utils/format_single_item
execute if data storage inventory_utils:temp current_item run scoreboard players add #items_shown inv_utils.temp 1

function inventory_utils:utils/process_items_for_preview