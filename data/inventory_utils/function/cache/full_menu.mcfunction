tellraw @s [{"text":"\n===== CACHE FULL INVENTORY =====","color":"gold","bold":true}]
tellraw @s [{"text":"Enter a name for this inventory cache:","color":"yellow"}]
tellraw @s [{"text":"","color":"gray"}]

tellraw @s [{"text":"💡 Quick Names:","color":"aqua"}]
tellraw @s [{"text":"• End Exploration","color":"white","click_event":{"action":"suggest_command","command":"/function inventory_utils:cache/save_full {name:\"End Exploration\"}"},"hover_event":{"action":"show_text","value":"Cache full inventory as 'End Exploration'"}}]
tellraw @s [{"text":"• Nether Gear","color":"white","click_event":{"action":"suggest_command","command":"/function inventory_utils:cache/save_full {name:\"Nether Gear\"}"},"hover_event":{"action":"show_text","value":"Cache full inventory as 'Nether Gear'"}}]
tellraw @s [{"text":"• Base Building","color":"white","click_event":{"action":"suggest_command","command":"/function inventory_utils:cache/save_full {name:\"Base Building\"}"},"hover_event":{"action":"show_text","value":"Cache full inventory as 'Base Building'"}}]

tellraw @s [{"text":"","color":"gray"}]
tellraw @s [{"text":"🖊 Custom Name:","color":"yellow","click_event":{"action":"suggest_command","command":"/function inventory_utils:cache/save_full {name:\"My Inventory\"}"},"hover_event":{"action":"show_text","value":"Click to edit the name"}}]

tellraw @s [{"text":"","color":"gray"}]
tellraw @s [{"text":"⬅ Back","color":"gray","click_event":{"action":"run_command","command":"/function inventory_utils:cache_inventory"},"hover_event":{"action":"show_text","value":"Return to main menu"}}]