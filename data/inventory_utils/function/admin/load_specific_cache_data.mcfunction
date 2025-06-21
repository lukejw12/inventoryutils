scoreboard players set #cache_found inv_utils.temp 1
data modify storage inventory_utils:temp target_cache set from entity @s data
execute store result storage inventory_utils:temp target_cache_id int 1 run scoreboard players get @s inventory_utils.id