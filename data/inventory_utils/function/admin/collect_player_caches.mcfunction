execute store success score #uuid_matches inv_utils.temp run data modify storage inventory_utils:temp check_uuid set from entity @s data.owner_uuid
execute store success score #uuid_matches inv_utils.temp run data modify storage inventory_utils:temp check_uuid set from storage inventory_utils:temp player_uuid

scoreboard players set #is_team_member inv_utils.temp 0
execute if data entity @s data{team_cache:1b} run function inventory_utils:team/check_if_team_member

execute if score #uuid_matches inv_utils.temp matches 0 run function inventory_utils:admin/add_to_found_list
execute if score #is_team_member inv_utils.temp matches 1 run function inventory_utils:admin/add_to_found_list