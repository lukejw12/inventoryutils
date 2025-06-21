execute store result storage inventory_utils:temp word_end int 1 run scoreboard players get #underscore_pos inv_utils.temp
function inventory_utils:utils/get_word_before_underscore with storage inventory_utils:temp

scoreboard players add #underscore_pos inv_utils.temp 1
execute store result storage inventory_utils:temp skip_pos int 1 run scoreboard players get #underscore_pos inv_utils.temp
function inventory_utils:utils/remove_processed_part with storage inventory_utils:temp