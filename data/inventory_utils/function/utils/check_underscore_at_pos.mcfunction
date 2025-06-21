execute store result score #end_pos inv_utils.temp run scoreboard players get #check_pos inv_utils.temp
scoreboard players add #end_pos inv_utils.temp 1
execute store result storage inventory_utils:temp end_index int 1 run scoreboard players get #end_pos inv_utils.temp
$data modify storage inventory_utils:temp check_char set string storage inventory_utils:temp working_name $(check_index) $(end_index)

execute if data storage inventory_utils:temp {check_char:"_"} run scoreboard players operation #underscore_pos inv_utils.temp = #check_pos inv_utils.temp