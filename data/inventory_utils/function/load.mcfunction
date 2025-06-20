scoreboard objectives add inventory_utils.id dummy
scoreboard objectives add Inventory_Utils.sort dummy
scoreboard objectives add Inventory_Utils.toggle dummy
scoreboard objectives add inv_utils.cache_count dummy
scoreboard objectives add inv_utils.menu_page dummy
scoreboard objectives add inv_utils.temp dummy

execute unless data storage inventory_utils:cache inventories run data modify storage inventory_utils:cache inventories set value {}
execute unless data storage inventory_utils:temp data run data modify storage inventory_utils:temp data set value {}
execute unless data storage inventory_utils:display data run data modify storage inventory_utils:display data set value {}

scoreboard players set #1 inv_utils.temp 1
scoreboard players set #4 inv_utils.temp 4
scoreboard players set #8 inv_utils.temp 8
scoreboard players set #27 inv_utils.temp 27
scoreboard players set #36 inv_utils.temp 36
scoreboard players set #41 inv_utils.temp 41

tellraw @a [{"text":"[Inventory Utils] ","color":"gold"},{"text":"Enhanced system loaded! Use ","color":"green"},{"text":"/function inventory_utils:cache_inventory","color":"aqua","click_event":{"action":"suggest_command","command":"/function inventory_utils:cache_inventory"}},{"text":" to get started.","color":"green"}]