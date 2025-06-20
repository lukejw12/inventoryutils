execute store result score @s inventory_utils.id run time query gametime

execute positioned 0.0 0.0 0.0 run summon marker ~ ~ ~ {Tags:["Inventory_Utils.cache","Inventory_Utils.new"]}
execute as @e[tag=Inventory_Utils.new] run scoreboard players operation @s inventory_utils.id = @a[tag=!Inventory_Utils.new,limit=1,sort=nearest] inventory_utils.id

execute store result score #slot_count inv_utils.temp run data get entity @s Inventory
execute if score #slot_count inv_utils.temp matches 1.. run function inventory_utils:cache/process_hotbar_items

$data modify entity @e[tag=Inventory_Utils.new,limit=1] data.name set value "$(name)"
data modify entity @e[tag=Inventory_Utils.new,limit=1] data.type set value "hotbar"
execute store result entity @e[tag=Inventory_Utils.new,limit=1] data.cached_time long 1 run time query gametime
data modify entity @e[tag=Inventory_Utils.new,limit=1] data.cached_by set from entity @s UUID

tag @e[tag=Inventory_Utils.new] remove Inventory_Utils.new

$tellraw @s [{"text":"✅ Cached hotbar: ","color":"green"},{"text":"$(name)","color":"aqua"}]
function inventory_utils:cache_inventory