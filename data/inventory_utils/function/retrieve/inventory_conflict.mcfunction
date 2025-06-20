tellraw @s [{"text":"⚠ ","color":"yellow","bold":true},{"text":"INVENTORY CONFLICT","color":"yellow","bold":true}]
tellraw @s [{"text":"Your inventory contains items! Choose an option:","color":"gray"}]
tellraw @s [{"text":"","color":"gray"}]

tellraw @s [{"text":"💾 Store Current & Restore","color":"green","bold":true,"click_event":{"action":"run_command","command":"/function inventory_utils:retrieve/store_and_restore"},"hover_event":{"action":"show_text","value":"Save your current inventory and load the cached one"}}]

tellraw @s [{"text":"🔄 Overwrite Current","color":"red","bold":true,"click_event":{"action":"run_command","command":"/function inventory_utils:retrieve/confirm_overwrite"},"hover_event":{"action":"show_text","value":"⚠ This will delete your current inventory!"}}]

tellraw @s [{"text":"❌ Cancel","color":"gray","click_event":{"action":"run_command","command":"/function inventory_utils:admin/cached_inventories"},"hover_event":{"action":"show_text","value":"Return to cached inventories"}}]