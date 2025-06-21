data modify storage inventory_utils:temp current_player_uuid set from storage inventory_utils:temp player_uuid
data modify storage inventory_utils:temp team_list set from entity @s data.team_members

execute if data storage inventory_utils:temp team_list[0] run function inventory_utils:team/check_team_loop