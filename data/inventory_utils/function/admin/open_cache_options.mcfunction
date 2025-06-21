scoreboard players set #cache_found inv_utils.temp 0
$execute as @e[tag=Inventory_Utils.cache] if score @s inventory_utils.id matches $(selected_cache_id) run function inventory_utils:admin/load_specific_cache_data
execute if score #cache_found inv_utils.temp matches 1 run function inventory_utils:admin/cache_options
execute unless score #cache_found inv_utils.temp matches 1 run tellraw @s [{"text":"❌ Cache not found!","color":"red"}]