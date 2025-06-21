data modify storage inventory_utils:temp cache_entry set value {}
data modify storage inventory_utils:temp cache_entry.data set from entity @s data
execute store result storage inventory_utils:temp cache_entry.id int 1 run scoreboard players get @s inventory_utils.id
execute store result storage inventory_utils:temp cache_entry.creation_time long 1 run data get entity @s data.cached_time
data modify storage inventory_utils:temp found_caches append from storage inventory_utils:temp cache_entry
scoreboard players add #found_index inv_utils.temp 1