execute unless data storage inventory_utils:temp {clean_name:""} run data modify storage inventory_utils:temp current_clean set from storage inventory_utils:temp clean_name
execute unless data storage inventory_utils:temp {clean_name:""} run function inventory_utils:utils/add_space with storage inventory_utils:temp
data modify storage inventory_utils:temp capitalize_next set value 1b