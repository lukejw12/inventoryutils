data modify storage inventory_utils:temp result set value ""

execute if score #processed inv_utils.temp matches 1.. run data modify storage inventory_utils:temp result set from storage inventory_utils:temp items_list[0]
execute if score #processed inv_utils.temp matches 2.. run function inventory_utils:utils/add_item_2
execute if score #processed inv_utils.temp matches 3.. run function inventory_utils:utils/add_item_3
execute if score #processed inv_utils.temp matches 4.. run function inventory_utils:utils/add_item_4

scoreboard players set #remaining_count inv_utils.temp 0
scoreboard players set #check_index inv_utils.temp 0
scoreboard players operation #max_check inv_utils.temp = #total inv_utils.temp
scoreboard players operation #max_check inv_utils.temp -= #processed inv_utils.temp

execute if score #max_check inv_utils.temp matches 1.. run function inventory_utils:utils/count_remaining_items

execute if score #remaining_count inv_utils.temp matches 1.. run function inventory_utils:utils/add_others_with_count

data modify entity @s data.preview set from storage inventory_utils:temp result