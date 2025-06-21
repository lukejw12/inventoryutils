execute store result score #item_count inv_utils.temp run data get storage inventory_utils:temp current_item.count
data modify storage inventory_utils:temp item_id set from storage inventory_utils:temp current_item.id

execute if data storage inventory_utils:temp current_item.components.minecraft:custom_name run data modify storage inventory_utils:temp clean_name set from storage inventory_utils:temp current_item.components.minecraft:custom_name
execute unless data storage inventory_utils:temp current_item.components.minecraft:custom_name run function inventory_utils:utils/get_simple_name

execute store result storage inventory_utils:temp count_display int 1 run scoreboard players get #item_count inv_utils.temp
function inventory_utils:utils/format_preview_entry with storage inventory_utils:temp