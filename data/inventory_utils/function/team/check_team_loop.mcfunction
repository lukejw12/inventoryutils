execute store success score #uuid_match inv_utils.temp run data modify storage inventory_utils:temp check_uuid set from storage inventory_utils:temp team_list[0]
execute store success score #uuid_match inv_utils.temp run data modify storage inventory_utils:temp check_uuid set from storage inventory_utils:temp current_player_uuid

execute if score #uuid_match inv_utils.temp matches 0 run scoreboard players set #is_team_member inv_utils.temp 1
execute if score #uuid_match inv_utils.temp matches 0 run return 1

data remove storage inventory_utils:temp team_list[0]
execute if data storage inventory_utils:temp team_list[0] run function inventory_utils:team/check_team_loop