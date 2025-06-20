execute store result score #target_cache_id inv_utils.temp run data get storage inventory_utils:temp target_cache_id

execute as @e[tag=Inventory_Utils.cache] run function inventory_utils:admin/check_delete_match

tellraw @s [{"text":"🗑 Deleted cache: ","color":"red"},{"nbt":"cache_name","storage":"inventory_utils:temp","color":"yellow"}]
function inventory_utils:admin/cached_inventories