data modify storage inventory_utils:temp team_display_list set from storage inventory_utils:temp target_cache.team_members
scoreboard players set #team_display_index inv_utils.temp 0
execute if data storage inventory_utils:temp team_display_list[0] run function inventory_utils:team/display_member_loop