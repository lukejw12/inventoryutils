data modify storage inventory_utils:temp final_text set value ""

execute if score #items_processed inv_utils.temp matches 1.. run data modify storage inventory_utils:temp final_text set from storage inventory_utils:temp preview_list[0]
execute if score #items_processed inv_utils.temp matches 2.. run data modify storage inventory_utils:temp final_text set value [{"storage":"inventory_utils:temp","nbt":"final_text"},{"text":", "},{"storage":"inventory_utils:temp","nbt":"preview_list[1]"}]
execute if score #items_processed inv_utils.temp matches 3.. run data modify storage inventory_utils:temp final_text set value [{"storage":"inventory_utils:temp","nbt":"final_text"},{"text":", "},{"storage":"inventory_utils:temp","nbt":"preview_list[2]"}]
execute if score #items_processed inv_utils.temp matches 4.. run data modify storage inventory_utils:temp final_text set value [{"storage":"inventory_utils:temp","nbt":"final_text"},{"text":", "},{"storage":"inventory_utils:temp","nbt":"preview_list[3]"}]

execute store result score #remaining_items inv_utils.temp run data get entity @s data.Inventory
execute if score #remaining_items inv_utils.temp matches 1.. run function inventory_utils:utils/add_remaining_simple

data modify entity @s data.preview set from storage inventory_utils:temp final_text