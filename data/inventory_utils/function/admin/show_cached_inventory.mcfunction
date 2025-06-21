scoreboard players set #found_index inv_utils.temp 0
scoreboard players set #target_found inv_utils.temp 0
data modify storage inventory_utils:temp found_caches set value []

execute as @e[tag=Inventory_Utils.cache] run function inventory_utils:admin/collect_player_caches

execute if score #found_index inv_utils.temp > #display_index inv_utils.temp run function inventory_utils:admin/get_cache_at_index