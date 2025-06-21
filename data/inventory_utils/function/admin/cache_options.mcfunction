data modify storage inventory_utils:temp cache_name set from storage inventory_utils:temp target_cache.name
data modify storage inventory_utils:temp cache_type set from storage inventory_utils:temp target_cache.type

tellraw @s [{"text":"\n===== "},{"nbt":"cache_name","storage":"inventory_utils:temp","color":"aqua"},{"text":" OPTIONS =====","color":"gold","bold":true}]
tellraw @s [{"text":"Type: ","color":"gray"},{"nbt":"cache_type","storage":"inventory_utils:temp","color":"white"}]

tellraw @s [{"text":"📤 Retrieve","color":"green","bold":true,"click_event":{"action":"run_command","command":"/function inventory_utils:retrieve/check_inventory"},"hover_event":{"action":"show_text","value":"Load this cached inventory"}}]

execute store result storage inventory_utils:temp edit_cache_id int 1 run data get storage inventory_utils:temp target_cache_id
function inventory_utils:admin/suggest_edit_command with storage inventory_utils:temp

tellraw @s [{"text":"🗑 Delete","color":"red","click_event":{"action":"run_command","command":"/function inventory_utils:admin/confirm_delete"},"hover_event":{"action":"show_text","value":"Delete this cached inventory"}}]

tellraw @s [{"text":"⬅ Back to List","color":"gray","click_event":{"action":"run_command","command":"/function inventory_utils:admin/cached_inventories"},"hover_event":{"action":"show_text","value":"Return to cached inventories"}}]