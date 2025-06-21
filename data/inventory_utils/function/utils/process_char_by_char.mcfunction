execute store result score #text_length inv_utils.temp run data get storage inventory_utils:temp working_text
execute if score #text_length inv_utils.temp matches 0 run return 0

data modify storage inventory_utils:temp current_char set string storage inventory_utils:temp working_text 0 1
data modify storage inventory_utils:temp working_text set string storage inventory_utils:temp working_text 1

execute if data storage inventory_utils:temp {current_char:"_"} run function inventory_utils:utils/handle_underscore_char
execute unless data storage inventory_utils:temp {current_char:"_"} run function inventory_utils:utils/handle_regular_char

function inventory_utils:utils/process_char_by_char