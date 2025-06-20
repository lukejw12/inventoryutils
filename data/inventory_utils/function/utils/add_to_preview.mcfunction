data modify storage inventory_utils:temp item_id set from storage inventory_utils:temp current_item.id
data modify storage inventory_utils:temp item_count set from storage inventory_utils:temp current_item.count
data modify storage inventory_utils:temp item_name set from storage inventory_utils:temp current_item.components.minecraft:custom_name

execute unless data storage inventory_utils:temp current_item.components.minecraft:custom_name run data modify storage inventory_utils:temp display_name set from storage inventory_utils:temp item_id
execute if data storage inventory_utils:temp current_item.components.minecraft:custom_name run data modify storage inventory_utils:temp display_name set from storage inventory_utils:temp item_name

data modify storage inventory_utils:temp preview_items append value {name:"",count:0}
data modify storage inventory_utils:temp preview_items[-1].name set from storage inventory_utils:temp display_name
data modify storage inventory_utils:temp preview_items[-1].count set from storage inventory_utils:temp item_count

scoreboard players add #items_shown inv_utils.temp 1