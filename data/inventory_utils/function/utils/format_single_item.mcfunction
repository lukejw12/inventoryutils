execute store result score #item_count inv_utils.temp run data get storage inventory_utils:temp current_item.count
data modify storage inventory_utils:temp item_id set from storage inventory_utils:temp current_item.id

execute unless data storage inventory_utils:temp current_item.components.minecraft:custom_name run function inventory_utils:utils/clean_item_name
execute if data storage inventory_utils:temp current_item.components.minecraft:custom_name run data modify storage inventory_utils:temp result_name set from storage inventory_utils:temp current_item.components.minecraft:custom_name

execute store result storage inventory_utils:temp count_str int 1 run scoreboard players get #item_count inv_utils.temp
data modify storage inventory_utils:temp preview_parts append value ""

function inventory_utils:utils/build_item_text with storage inventory_utils:temp