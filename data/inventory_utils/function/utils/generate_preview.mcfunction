data modify storage inventory_utils:temp items_list set value []
scoreboard players set #processed inv_utils.temp 0

execute store result score #total inv_utils.temp run data get entity @s data.Inventory

execute if score #total inv_utils.temp matches 0 run data modify entity @s data.preview set value "Empty"
execute if score #total inv_utils.temp matches 0 run return 0

function inventory_utils:utils/collect_four_items
function inventory_utils:utils/make_preview_text