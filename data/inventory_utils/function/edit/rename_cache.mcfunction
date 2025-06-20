execute as @e[tag=Inventory_Utils.cache] if score @s inventory_utils.id = @a[limit=1,sort=nearest] inventory_utils.id if data entity @s data{name:"$(old_name)"} run data modify entity @s data.name set value "$(new_name)"

$tellraw @s [{"text":"✅ Renamed cache to: ","color":"green"},{"text":"$(new_name)","color":"aqua"}]
function inventory_utils:admin/cached_inventories