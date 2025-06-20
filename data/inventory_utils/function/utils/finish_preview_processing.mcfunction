execute store result storage inventory_utils:temp total_items int 1 run scoreboard players get #total_items inv_utils.temp
execute store result storage inventory_utils:temp items_shown int 1 run scoreboard players get #items_shown inv_utils.temp

function inventory_utils:utils/build_preview_text