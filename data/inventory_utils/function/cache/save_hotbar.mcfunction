execute positioned 0.0 0.0 0.0 run summon marker ~ ~ ~ {Tags:["Inventory_Utils.cache","Inventory_Utils.new"]}
execute store result score @e[tag=Inventory_Utils.new,limit=1] inventory_utils.id run random value 1000000..9999999
data modify entity @e[tag=Inventory_Utils.new,limit=1] data.owner_uuid set from entity @s UUID

execute store result score #slot_count inv_utils.temp run data get entity @s Inventory
execute if score #slot_count inv_utils.temp matches 1.. run function inventory_utils:cache/process_hotbar_items

$data modify entity @e[tag=Inventory_Utils.new,limit=1] data.name set value "$(name)"
data modify entity @e[tag=Inventory_Utils.new,limit=1] data.type set value "hotbar"
execute store result entity @e[tag=Inventory_Utils.new,limit=1] data.cached_time long 1 run time query gametime

tag @e[tag=Inventory_Utils.new] remove Inventory_Utils.new

$tellraw @s [{"text":"✅ Cached hotbar: ","color":"green"},{"text":"$(name)","color":"aqua"}]
function inventory_utils:cache_inventory