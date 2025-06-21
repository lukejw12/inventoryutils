tellraw @s [{"text":"Starting restore for: ","color":"yellow"},{"nbt":"cache_name","storage":"inventory_utils:temp","color":"aqua"}]
data modify storage inventory_utils:temp restore_data set from storage inventory_utils:temp target_cache

execute if data storage inventory_utils:temp target_cache{type:"hotbar"} run tellraw @s [{"text":"Restoring hotbar type","color":"green"}]
execute if data storage inventory_utils:temp target_cache{type:"hotbar"} run function inventory_utils:retrieve/restore_hotbar

execute if data storage inventory_utils:temp target_cache{type:"full"} run tellraw @s [{"text":"Restoring full type","color":"green"}]
execute if data storage inventory_utils:temp target_cache{type:"full"} run function inventory_utils:retrieve/restore_full

tellraw @s [{"text":"✅ Restored inventory: ","color":"green"},{"nbt":"cache_name","storage":"inventory_utils:temp","color":"aqua"}]