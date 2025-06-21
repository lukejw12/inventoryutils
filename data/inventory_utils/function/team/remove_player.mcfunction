execute store result score #target_cache_id inv_utils.temp run data get storage inventory_utils:temp target_cache_id

$execute as @a[name="$(player)"] run data modify storage inventory_utils:temp player_uuid_to_remove set from entity @s UUID

scoreboard players set #player_found inv_utils.temp 0
execute if data storage inventory_utils:temp target_cache.team_members[0] run function inventory_utils:team/remove_player_loop

execute if score #player_found inv_utils.temp matches 1 run execute as @e[tag=Inventory_Utils.cache] if score @s inventory_utils.id = #target_cache_id inv_utils.temp run data modify entity @s data set from storage inventory_utils:temp target_cache

$execute if score #player_found inv_utils.temp matches 1 run tellraw @s [{"text":"✅ Removed ","color":"green"},{"text":"$(player)","color":"yellow"},{"text":" from team cache!","color":"green"}]
$execute if score #player_found inv_utils.temp matches 0 run tellraw @s [{"text":"❌ Player ","color":"red"},{"text":"$(player)","color":"yellow"},{"text":" not found in team cache!","color":"red"}]

function inventory_utils:admin/cache_options