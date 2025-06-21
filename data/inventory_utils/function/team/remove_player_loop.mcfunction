execute store success score #uuid_match inv_utils.temp run data modify storage inventory_utils:temp check_uuid set from storage inventory_utils:temp target_cache.team_members[0]
execute store success score #uuid_match inv_utils.temp run data modify storage inventory_utils:temp check_uuid set from storage inventory_utils:temp player_uuid_to_remove

execute if score #uuid_match inv_utils.temp matches 0 run scoreboard players set #player_found inv_utils.temp 1
execute if score #uuid_match inv_utils.temp matches 0 run data remove storage inventory_utils:temp target_cache.team_members[0]
execute if score #uuid_match inv_utils.temp matches 0 run return 1

data remove storage inventory_utils:temp target_cache.team_members[0]
execute if data storage inventory_utils:temp target_cache.team_members[0] run function inventory_utils:team/remove_player_loop