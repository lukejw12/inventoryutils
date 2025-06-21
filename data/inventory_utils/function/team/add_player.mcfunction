execute store result score #target_cache_id inv_utils.temp run data get storage inventory_utils:temp target_cache_id

execute unless data storage inventory_utils:temp target_cache.team_members run data modify storage inventory_utils:temp target_cache.team_members set value []

$execute as @a[name="$(player)"] run data modify storage inventory_utils:temp target_cache.team_members append from entity @s UUID

execute as @e[tag=Inventory_Utils.cache] if score @s inventory_utils.id = #target_cache_id inv_utils.temp run data modify entity @s data set from storage inventory_utils:temp target_cache

$tellraw @s [{"text":"✅ Added ","color":"green"},{"text":"$(player)","color":"yellow"},{"text":" to team cache!","color":"green"}]

function inventory_utils:admin/cache_options