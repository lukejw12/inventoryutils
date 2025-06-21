execute store result storage inventory_utils:temp target_index int 1 run scoreboard players get #display_index inv_utils.temp
function inventory_utils:admin/extract_target_cache with storage inventory_utils:temp
scoreboard players set #target_found inv_utils.temp 1
function inventory_utils:admin/display_single_cache