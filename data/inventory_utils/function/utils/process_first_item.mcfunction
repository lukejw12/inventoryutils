data modify storage inventory_utils:temp current_item set from entity @s data.Inventory[0]
function inventory_utils:utils/get_item_display_name
execute store result storage inventory_utils:temp item_count int 1 run data get storage inventory_utils:temp current_item.count
function inventory_utils:utils/set_first_item with storage inventory_utils:temp
scoreboard players add #preview_count inv_utils.temp 1