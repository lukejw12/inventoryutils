tellraw @s [{"text":"⚠ ","color":"red","bold":true},{"text":"DELETE CACHE","color":"red","bold":true}]
tellraw @s [{"text":"Are you sure you want to delete: ","color":"yellow"},{"nbt":"cache_name","storage":"inventory_utils:temp","color":"white"},{"text":"?","color":"yellow"}]
tellraw @s [{"text":"This action cannot be undone!","color":"red"}]
tellraw @s [{"text":"","color":"gray"}]

tellraw @s [{"text":"✅ YES - DELETE","color":"red","bold":true,"click_event":{"action":"run_command","command":"/function inventory_utils:admin/delete_cache"},"hover_event":{"action":"show_text","value":"⚠ This will permanently delete the cache!"}}]

tellraw @s [{"text":"❌ NO - CANCEL","color":"green","click_event":{"action":"run_command","command":"/function inventory_utils:admin/cached_inventories"},"hover_event":{"action":"show_text","value":"Return to cached inventories safely"}}]