execute store result score #target_cache_id inv_utils.temp run data get storage inventory_utils:temp cache_id
$execute as @e[tag=Inventory_Utils.cache] if score @s inventory_utils.id = #target_cache_id inv_utils.temp run data modify entity @s data.name set value "$(new_name)"

$tellraw @s [{"text":"✅ Renamed cache to: ","color":"green"},{"text":"$(new_name)","color":"aqua"}]
function inventory_utils:admin/cached_inventories