tellraw @s [{"text":"⚠ ","color":"red","bold":true},{"text":"FINAL WARNING","color":"red","bold":true}]
tellraw @s [{"text":"This will permanently delete your current inventory!","color":"yellow"}]
tellraw @s [{"text":"Are you absolutely sure?","color":"yellow","bold":true}]
tellraw @s [{"text":"","color":"gray"}]

tellraw @s [{"text":"✅ YES - DELETE CURRENT","color":"red","bold":true,"click_event":{"action":"run_command","command":"/function inventory_utils:retrieve/force_restore"},"hover_event":{"action":"show_text","value":"⚠ This action cannot be undone!"}}]

tellraw @s [{"text":"❌ NO - CANCEL","color":"green","click_event":{"action":"run_command","command":"/function inventory_utils:admin/cached_inventories"},"hover_event":{"action":"show_text","value":"Return to cached inventories safely"}}]