execute if score #found_index inv_utils.temp = #display_index inv_utils.temp run scoreboard players set #target_found inv_utils.temp 1
execute if score #found_index inv_utils.temp = #display_index inv_utils.temp run data modify storage inventory_utils:temp target_cache set from entity @s data
execute if score #found_index inv_utils.temp = #display_index inv_utils.temp run execute store result storage inventory_utils:temp target_cache_id int 1 run scoreboard players get @s inventory_utils.id

execute store success score #owner_matches inv_utils.temp run data modify storage inventory_utils:temp check_uuid set from entity @s data.owner_uuid
execute store success score #owner_matches_final inv_utils.temp run data modify storage inventory_utils:temp check_uuid set from storage inventory_utils:temp player_uuid
execute if score #owner_matches_final inv_utils.temp matches 0 run scoreboard players add #found_index inv_utils.temp 1