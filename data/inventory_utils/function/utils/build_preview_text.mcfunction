data modify storage inventory_utils:temp preview_text set value ""

execute if score #items_shown inv_utils.temp matches 1.. run function inventory_utils:utils/build_preview_line_0
execute if score #items_shown inv_utils.temp matches 2.. run function inventory_utils:utils/build_preview_line_1
execute if score #items_shown inv_utils.temp matches 3.. run function inventory_utils:utils/build_preview_line_2
execute if score #items_shown inv_utils.temp matches 4.. run function inventory_utils:utils/build_preview_line_3

scoreboard players operation #other_items inv_utils.temp = #total_items inv_utils.temp
scoreboard players operation #other_items inv_utils.temp -= #items_shown inv_utils.temp

execute if score #other_items inv_utils.temp matches 1.. run function inventory_utils:utils/add_other_items_text

data modify entity @s data.preview set from storage inventory_utils:temp preview_text