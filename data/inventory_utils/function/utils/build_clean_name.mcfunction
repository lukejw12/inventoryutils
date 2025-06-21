execute if score #word_index inv_utils.temp >= #word_count inv_utils.temp run return 0

execute store result storage inventory_utils:temp current_word_index int 1 run scoreboard players get #word_index inv_utils.temp
function inventory_utils:utils/get_capitalized_word with storage inventory_utils:temp

execute if score #word_index inv_utils.temp matches 0 run data modify storage inventory_utils:temp clean_name set from storage inventory_utils:temp capitalized_word
execute if score #word_index inv_utils.temp matches 1.. run function inventory_utils:utils/append_with_space

scoreboard players add #word_index inv_utils.temp 1
function inventory_utils:utils/build_clean_name