data modify storage inventory_utils:temp item_id set from storage inventory_utils:temp current_item.id
data modify storage inventory_utils:temp clean_name set from storage inventory_utils:temp current_item.id
data modify storage inventory_utils:temp clean_name set string storage inventory_utils:temp clean_name 10

execute if data storage inventory_utils:temp {clean_name:"cobblestone"} run data modify storage inventory_utils:temp clean_name set value "Cobblestone"
execute if data storage inventory_utils:temp {clean_name:"stone"} run data modify storage inventory_utils:temp clean_name set value "Stone"
execute if data storage inventory_utils:temp {clean_name:"oak_planks"} run data modify storage inventory_utils:temp clean_name set value "Oak Planks"
execute if data storage inventory_utils:temp {clean_name:"oak_log"} run data modify storage inventory_utils:temp clean_name set value "Oak Log"
execute if data storage inventory_utils:temp {clean_name:"dirt"} run data modify storage inventory_utils:temp clean_name set value "Dirt"
execute if data storage inventory_utils:temp {clean_name:"grass_block"} run data modify storage inventory_utils:temp clean_name set value "Grass Block"
execute if data storage inventory_utils:temp {clean_name:"diamond"} run data modify storage inventory_utils:temp clean_name set value "Diamond"
execute if data storage inventory_utils:temp {clean_name:"iron_ingot"} run data modify storage inventory_utils:temp clean_name set value "Iron Ingot"
execute if data storage inventory_utils:temp {clean_name:"gold_ingot"} run data modify storage inventory_utils:temp clean_name set value "Gold Ingot"
execute if data storage inventory_utils:temp {clean_name:"coal"} run data modify storage inventory_utils:temp clean_name set value "Coal"

execute if data storage inventory_utils:temp current_item.components.minecraft:custom_name run data modify storage inventory_utils:temp clean_name set from storage inventory_utils:temp current_item.components.minecraft:custom_name