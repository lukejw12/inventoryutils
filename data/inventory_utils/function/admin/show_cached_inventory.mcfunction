scoreboard players set #found_index inv_utils.temp 0
scoreboard players set #target_found inv_utils.temp 0

execute as @e[tag=Inventory_Utils.cache] if score @s inventory_utils.id = @a[limit=1,sort=nearest] inventory_utils.id run function inventory_utils:admin/check_display_index

execute if score #target_found inv_utils.temp matches 1 run function inventory_utils:admin/display_single_cache