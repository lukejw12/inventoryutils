tellraw @s [{"text":"\n========= CACHE INVENTORY =========","color":"gold","bold":true}]
tellraw @s [{"text":"Choose what to cache:","color":"yellow"}]
tellraw @s [{"text":"","color":"gray"}]

tellraw @s [{"text":"🔥 Cache Hotbar Only","color":"gold","bold":true,"click_event":{"action":"run_command","command":"/function inventory_utils:cache/hotbar_menu"},"hover_event":{"action":"show_text","value":"Cache only your hotbar (9 slots)"}}]

tellraw @s [{"text":"📦 Cache Full Inventory","color":"blue","bold":true,"click_event":{"action":"run_command","command":"/function inventory_utils:cache/full_menu"},"hover_event":{"action":"show_text","value":"Cache your entire inventory including armor"}}]

tellraw @s [{"text":"📋 View Cached Inventories","color":"green","bold":true,"click_event":{"action":"run_command","command":"/function inventory_utils:admin/cached_inventories"},"hover_event":{"action":"show_text","value":"View and manage your cached inventories"}}]

tellraw @s [{"text":"=====================================","color":"gold","bold":true}]