execute if score #processed inv_utils.temp matches 4.. run return 0
execute if score #processed inv_utils.temp >= #total inv_utils.temp run return 0

execute store result storage inventory_utils:temp index int 1 run scoreboard players get #processed inv_utils.temp
function inventory_utils:utils/process_single_item with storage inventory_utils:temp

scoreboard players add #processed inv_utils.temp 1
function inventory_utils:utils/collect_four_items