data modify storage inventory_utils:temp final_preview set value ""

execute if score #items_shown inv_utils.temp matches 1.. run data modify storage inventory_utils:temp final_preview set from storage inventory_utils:temp preview_parts[0]
execute if score #items_shown inv_utils.temp matches 2.. run data modify storage inventory_utils:temp final_preview set value [{"storage":"inventory_utils:temp","nbt":"final_preview","interpret":true},{"text":", "},{"storage":"inventory_utils:temp","nbt":"preview_parts[1]","interpret":true}]
execute if score #items_shown inv_utils.temp matches 3.. run data modify storage inventory_utils:temp final_preview set value [{"storage":"inventory_utils:temp","nbt":"final_preview","interpret":true},{"text":", "},{"storage":"inventory_utils:temp","nbt":"preview_parts[2]","interpret":true}]
execute if score #items_shown inv_utils.temp matches 4.. run data modify storage inventory_utils:temp final_preview set value [{"storage":"inventory_utils:temp","nbt":"final_preview","interpret":true},{"text":", "},{"storage":"inventory_utils:temp","nbt":"preview_parts[3]","interpret":true}]

execute store result score #final_remaining inv_utils.temp run data get storage inventory_utils:temp working_inventory
execute if score #final_remaining inv_utils.temp matches 1.. run function inventory_utils:utils/add_remaining_count

data modify entity @s data.preview set from storage inventory_utils:temp final_preview