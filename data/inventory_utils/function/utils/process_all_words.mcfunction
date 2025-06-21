execute if score #word_index inv_utils.temp >= #word_count inv_utils.temp run return 0

execute store result storage inventory_utils:temp current_word_index int 1 run scoreboard players get #word_index inv_utils.temp
function inventory_utils:utils/capitalize_word with storage inventory_utils:temp

scoreboard players add #word_index inv_utils.temp 1
function inventory_utils:utils/process_all_words