execute store result score @s inventory_utils.id run time query gametime
execute positioned 0.0 0.0 0.0 run summon marker ~ ~ ~ {Tags:["Inventory_Utils.cache","Inventory_Utils.new"]}
execute as @e[tag=Inventory_Utils.new] run scoreboard players operation @s inventory_utils.id = @a[tag=!Inventory_Utils.new,limit=1,sort=nearest] inventory_utils.id

data modify entity @e[tag=Inventory_Utils.new,limit=1] data.Inventory set from entity @s Inventory
data modify entity @e[tag=Inventory_Utils.new,limit=1] data.name set value "Auto-Saved Inventory"
data modify entity @e[tag=Inventory_Utils.new,limit=1] data.type set value "full"
execute store result entity @e[tag=Inventory_Utils.new,limit=1] data.cached_time long 1 run time query gametime
data modify entity @e[tag=Inventory_Utils.new,limit=1] data.cached_by set from entity @s UUID

function inventory_utils:utils/generate_preview with entity @e[tag=Inventory_Utils.new,limit=1] data
tag @e[tag=Inventory_Utils.new] remove Inventory_Utils.new

clear @s
function inventory_utils:retrieve/restore_inventory

tellraw @s [{"text":"✅ Current inventory auto-saved and cached inventory restored!","color":"green"}]