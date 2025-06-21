execute store result score #target_cache_id inv_utils.temp run data get storage inventory_utils:temp target_cache_id

execute if data storage inventory_utils:temp target_cache{team_cache:0b} run data modify storage inventory_utils:temp target_cache.team_cache set value 1b
execute if data storage inventory_utils:temp target_cache{team_cache:0b} run tellraw @s [{"text":"✅ Team Cache enabled!","color":"green"}]

execute if data storage inventory_utils:temp target_cache{team_cache:1b} run data modify storage inventory_utils:temp target_cache.team_cache set value 0b
execute if data storage inventory_utils:temp target_cache{team_cache:1b} run tellraw @s [{"text":"❌ Team Cache disabled!","color":"red"}]

execute as @e[tag=Inventory_Utils.cache] if score @s inventory_utils.id = #target_cache_id inv_utils.temp run data modify entity @s data set from storage inventory_utils:temp target_cache

function inventory_utils:admin/cache_options