execute if data storage inventory_utils:temp {capitalize_next:1b} run function inventory_utils:utils/capitalize_char
execute unless data storage inventory_utils:temp {capitalize_next:1b} run function inventory_utils:utils/append_char

data modify storage inventory_utils:temp capitalize_next set value 0b