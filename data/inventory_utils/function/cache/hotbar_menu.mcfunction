tellraw @s [{"text":"\n======= CACHE HOTBAR =======","color":"gold","bold":true}]
tellraw @s [{"text":"Enter a name for this hotbar cache:","color":"yellow"}]
tellraw @s [{"text":"","color":"gray"}]

tellraw @s [{"text":"💡 Quick Names:","color":"aqua"}]
tellraw @s [{"text":"• PvP Hotbar","color":"white","click_event":{"action":"suggest_command","command":"/function inventory_utils:cache/save_hotbar {name:\"PvP Hotbar\"}"},"hover_event":{"action":"show_text","value":"Cache hotbar as 'PvP Hotbar'"}}]
tellraw @s [{"text":"• Building Tools","color":"white","click_event":{"action":"suggest_command","command":"/function inventory_utils:cache/save_hotbar {name:\"Building Tools\"}"},"hover_event":{"action":"show_text","value":"Cache hotbar as 'Building Tools'"}}]
tellraw @s [{"text":"• Mining Setup","color":"white","click_event":{"action":"suggest_command","command":"/function inventory_utils:cache/save_hotbar {name:\"Mining Setup\"}"},"hover_event":{"action":"show_text","value":"Cache hotbar as 'Mining Setup'"}}]

tellraw @s [{"text":"","color":"gray"}]
tellraw @s [{"text":"🖊 Custom Name:","color":"yellow","click_event":{"action":"suggest_command","command":"/function inventory_utils:cache/save_hotbar {name:\"My Hotbar\"}"},"hover_event":{"action":"show_text","value":"Click to edit the name"}}]

tellraw @s [{"text":"","color":"gray"}]
tellraw @s [{"text":"⬅ Back","color":"gray","click_event":{"action":"run_command","command":"/function inventory_utils:cache_inventory"},"hover_event":{"action":"show_text","value":"Return to main menu"}}]