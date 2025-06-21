execute store result score #max_pos inv_utils.temp run data get storage inventory_utils:temp working_name
execute if score #check_pos inv_utils.temp >= #max_pos inv_utils.temp run return 0

execute store result storage inventory_utils:temp check_index int 1 run scoreboard players get #check_pos inv_utils.temp
function inventory_utils:utils/check_underscore_at_pos with storage inventory_utils:temp

execute if score #underscore_pos inv_utils.temp matches -1 run scoreboard players add #check_pos inv_utils.temp 1
execute if score #underscore_pos inv_utils.temp matches -1 run function inventory_utils:utils/find_underscore