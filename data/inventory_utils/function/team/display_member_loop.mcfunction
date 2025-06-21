data modify storage inventory_utils:temp current_member_uuid set from storage inventory_utils:temp team_display_list[0]
execute as @a run function inventory_utils:team/check_and_display_name
data remove storage inventory_utils:temp team_display_list[0]
execute if data storage inventory_utils:temp team_display_list[0] run function inventory_utils:team/display_member_loop