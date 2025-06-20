execute if score #display_index inv_utils.temp >= #cache_count inv_utils.cache_count run return 0

execute store result storage inventory_utils:temp current_index int 1 run scoreboard players get #display_index inv_utils.temp
function inventory_utils:admin/show_cached_inventory with storage inventory_utils:temp

scoreboard players add #display_index inv_utils.temp 1
function inventory_utils:admin/display_cache_loop