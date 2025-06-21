execute if score #check_index inv_utils.temp >= #max_check inv_utils.temp run return 0

scoreboard players operation #current_slot inv_utils.temp = #check_index inv_utils.temp
scoreboard players operation #current_slot inv_utils.temp += #processed inv_utils.temp
execute store result storage inventory_utils:temp slot_index int 1 run scoreboard players get #current_slot inv_utils.temp

function inventory_utils:utils/add_item_count with storage inventory_utils:temp

scoreboard players add #check_index inv_utils.temp 1
function inventory_utils:utils/count_remaining_items