execute store result score #name_length inv_utils.temp run data get storage inventory_utils:temp working_name
execute if score #name_length inv_utils.temp matches 0 run return 0

scoreboard players set #underscore_pos inv_utils.temp -1
scoreboard players set #check_pos inv_utils.temp 0

function inventory_utils:utils/find_underscore
execute if score #underscore_pos inv_utils.temp matches -1 run function inventory_utils:utils/add_final_word
execute if score #underscore_pos inv_utils.temp matches -1 run return 0

function inventory_utils:utils/extract_word
function inventory_utils:utils/split_by_underscore