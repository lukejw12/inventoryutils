execute store result storage inventory_utils:temp target_cache_id int 1 run data get storage inventory_utils:temp cache_id

execute as @e[tag=Inventory_Utils.cache] if score @s inventory_utils.id = @a[limit=1,sort=nearest] inventory_utils.id run function inventory_utils:admin/check_delete_match

tellraw @s [{"text":"🗑 Deleted cache: ","color":"red"},{"nbt":"cache_name","storage":"inventory_utils:temp","color":"yellow"}]
function inventory_utils:admin/cached_inventories