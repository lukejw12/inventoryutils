execute store result score #name_length inv_utils.temp run data get storage inventory_utils:temp clean_name
execute if score #name_length inv_utils.temp matches 0 run return 0

data modify storage inventory_utils:temp current_char set string storage inventory_utils:temp clean_name 0 1
data modify storage inventory_utils:temp clean_name set string storage inventory_utils:temp clean_name 1

execute if data storage inventory_utils:temp {current_char:"_"} run function inventory_utils:utils/handle_underscore
execute unless data storage inventory_utils:temp {current_char:"_"} run function inventory_utils:utils/handle_letter

function inventory_utils:utils/process_name_chars