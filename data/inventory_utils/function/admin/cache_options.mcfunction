data modify storage inventory_utils:temp cache_name set from storage inventory_utils:temp target_cache.name
data modify storage inventory_utils:temp cache_type set from storage inventory_utils:temp target_cache.type

tellraw @s [{"text":"\n===== "},{"nbt":"cache_name","storage":"inventory_utils:temp","color":"aqua"},{"text":" OPTIONS =====","color":"gold","bold":true}]
tellraw @s [{"text":"Type: ","color":"gray"},{"nbt":"cache_type","storage":"inventory_utils:temp","color":"white"}]

execute unless data storage inventory_utils:temp target_cache.team_cache run data modify storage inventory_utils:temp target_cache.team_cache set value 0b

execute if data storage inventory_utils:temp target_cache{team_cache:0b} run tellraw @s [{"text":"🔒 Team Cache: ","color":"gray"},[{"text":"[Disable]","color":"green","bold":true},{"text":" "},{"text":"[Enable]","color":"red",bold:false,"click_event":{"action":"run_command","command":"/function inventory_utils:team/enable_team_cache"},"hover_event":{"action":"show_text","value":"Click to enable team sharing"}}]]

execute if data storage inventory_utils:temp target_cache{team_cache:1b} run tellraw @s [{"text":"🔒 Team Cache: ","color":"gray"},[{"text":"[Disable]","color":"red","click_event":{"action":"run_command","command":"/function inventory_utils:team/disable_team_cache"},"hover_event":{"action":"show_text","value":"Click to disable team sharing"}},{"text":" "},{"text":"[Enable]","color":"green","bold":true}]]

execute if data storage inventory_utils:temp target_cache{team_cache:1b} run tellraw @s [{"text":"👥 Add Player","color":"blue","click_event":{"action":"suggest_command","command":"/function inventory_utils:team/add_player {player:\"PlayerName\"}"},"hover_event":{"action":"show_text","value":"Add a player to this team cache"}}]

execute if data storage inventory_utils:temp target_cache{team_cache:1b} run tellraw @s [{"text":"➖ Remove Player","color":"gold","click_event":{"action":"suggest_command","command":"/function inventory_utils:team/remove_player {player:\"PlayerName\"}"},"hover_event":{"action":"show_text","value":"Remove a player from this team cache"}}]

execute if data storage inventory_utils:temp target_cache{team_cache:1b} run function inventory_utils:team/show_team_members

tellraw @s [{"text":"📤 Retrieve","color":"green","bold":true,"click_event":{"action":"run_command","command":"/function inventory_utils:retrieve/check_inventory"},"hover_event":{"action":"show_text","value":"Load this cached inventory"}}]

execute store result storage inventory_utils:temp edit_cache_id int 1 run data get storage inventory_utils:temp target_cache_id
function inventory_utils:admin/suggest_edit_command with storage inventory_utils:temp

tellraw @s [{"text":"🗑 Delete","color":"red","click_event":{"action":"run_command","command":"/function inventory_utils:admin/confirm_delete"},"hover_event":{"action":"show_text","value":"Delete this cached inventory"}}]

tellraw @s [{"text":"⬅ Back to List","color":"gray","click_event":{"action":"run_command","command":"/function inventory_utils:admin/cached_inventories"},"hover_event":{"action":"show_text","value":"Return to cached inventories"}}]