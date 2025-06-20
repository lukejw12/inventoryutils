data modify storage inventory_utils:temp first_item set from storage inventory_utils:temp working_inventory[0]
execute store result score #first_count inv_utils.temp run data get storage inventory_utils:temp first_item.count
data modify storage inventory_utils:temp first_id set from storage inventory_utils:temp first_item.id

execute unless data storage inventory_utils:temp first_item.components.minecraft:custom_name run data modify storage inventory_utils:temp first_name set from storage inventory_utils:temp first_id
execute if data storage inventory_utils:temp first_item.components.minecraft:custom_name run data modify storage inventory_utils:temp first_name set from storage inventory_utils:temp first_item.components.minecraft:custom_name

execute if score #total_items inv_utils.temp matches 1 run function inventory_utils:utils/preview_one_item
execute if score #total_items inv_utils.temp matches 2.. run function inventory_utils:utils/preview_multiple_items