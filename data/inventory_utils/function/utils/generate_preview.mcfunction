data modify storage inventory_utils:temp working_inventory set from entity @s data.Inventory
scoreboard players set #items_shown inv_utils.temp 0
scoreboard players set #total_items inv_utils.temp 0
data modify storage inventory_utils:temp preview_parts set value []

execute store result score #total_items inv_utils.temp run data get storage inventory_utils:temp working_inventory

execute if score #total_items inv_utils.temp matches 0 run data modify entity @s data.preview set value "Empty"
execute if score #total_items inv_utils.temp matches 0 run return 0

function inventory_utils:utils/process_items_for_preview
function inventory_utils:utils/build_final_preview