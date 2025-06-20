execute positioned 0.0 0.0 0.0 run summon marker ~ ~ ~ {Tags:["Inventory_Utils.cache","Inventory_Utils.new"]}
execute store result score @e[tag=Inventory_Utils.new,limit=1] inventory_utils.id run random value 1000000..9999999
data modify entity @e[tag=Inventory_Utils.new,limit=1] data.owner_uuid set from entity @s UUID

data modify entity @e[tag=Inventory_Utils.new,limit=1] data.Inventory set from entity @s Inventory

$data modify entity @e[tag=Inventory_Utils.new,limit=1] data.name set value "$(name)"
data modify entity @e[tag=Inventory_Utils.new,limit=1] data.type set value "full"
execute store result entity @e[tag=Inventory_Utils.new,limit=1] data.cached_time long 1 run time query gametime

execute as @e[tag=Inventory_Utils.new,limit=1] run function inventory_utils:utils/generate_preview

tag @e[tag=Inventory_Utils.new] remove Inventory_Utils.new

$tellraw @s [{"text":"✅ Cached full inventory: ","color":"green"},{"text":"$(name)","color":"aqua"}]
function inventory_utils:cache_inventory