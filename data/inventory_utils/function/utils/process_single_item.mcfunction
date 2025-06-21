$data modify storage inventory_utils:temp current set from entity @s data.Inventory[$(index)]

data modify storage inventory_utils:temp raw_name set from storage inventory_utils:temp current.id
data modify storage inventory_utils:temp raw_name set string storage inventory_utils:temp raw_name 10
execute store result storage inventory_utils:temp count int 1 run data get storage inventory_utils:temp current.count

execute if data storage inventory_utils:temp current.components.minecraft:custom_name run data modify storage inventory_utils:temp clean_name set from storage inventory_utils:temp current.components.minecraft:custom_name
execute unless data storage inventory_utils:temp current.components.minecraft:custom_name run function inventory_utils:utils/auto_format_name with storage inventory_utils:temp

function inventory_utils:utils/add_to_list with storage inventory_utils:temp