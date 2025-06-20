tellraw @s [{"text":"\n====== CACHED INVENTORIES ======","color":"gold","bold":true}]

scoreboard players set #cache_count inv_utils.cache_count 0
execute as @e[tag=Inventory_Utils.cache] if score @s inventory_utils.id = @a[limit=1,sort=nearest] inventory_utils.id run scoreboard players add #cache_count inv_utils.cache_count 1

execute if score #cache_count inv_utils.cache_count matches 0 run tellraw @s [{"text":"No cached inventories found!","color":"red"}]
execute if score #cache_count inv_utils.cache_count matches 0 run tellraw @s [{"text":"🆕 Create New Cache","color":"green","click_event":{"action":"run_command","command":"/function inventory_utils:cache_inventory"},"hover_event":{"action":"show_text","value":"Cache a new inventory"}}]
execute if score #cache_count inv_utils.cache_count matches 0 run return 0

tellraw @s [{"text":"Found ","color":"green"},{"score":{"name":"#cache_count","objective":"inv_utils.cache_count"},"color":"yellow"},{"text":" cached inventories:","color":"green"}]
tellraw @s [{"text":"","color":"gray"}]

scoreboard players set #display_index inv_utils.temp 0
function inventory_utils:admin/display_cache_loop

tellraw @s [{"text":"","color":"gray"}]
tellraw @s [{"text":"🆕 Create New Cache","color":"green","click_event":{"action":"run_command","command":"/function inventory_utils:cache_inventory"},"hover_event":{"action":"show_text","value":"Cache a new inventory"}}]
tellraw @s [{"text":"==================================","color":"gold","bold":true}]