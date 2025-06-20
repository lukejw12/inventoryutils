tag @a remove target
tag @s add target
execute as @s positioned 0.0 0.0 0.0 run summon marker ~ ~ ~ {Tags:["Inventory_Utils.inv_store","Inventory_Utils.inv_new"]}
execute as @s positioned 0.0 0.0 0.0 run scoreboard players operation @e[tag=Inventory_Utils.inv_new] inventory_utils.id = @s inventory_utils.id
execute as @e[tag=Inventory_Utils.inv_new] if score @s inventory_utils.id = @e[tag=Inventory_Utils.inv_store,limit=1,tag=!Inventory_Utils.inv_new] inventory_utils.id run tellraw @a[sort=nearest,limit=1] [{"bold":true,"color":"red","italic":false,"text":"CAUTION!"},{"bold":false,"color":"gray","italic":false,"text":" You already have a saved inventory! Claim the previous inventory to continue"}]
execute as @e[tag=Inventory_Utils.inv_new] if score @s inventory_utils.id = @e[tag=Inventory_Utils.inv_store,limit=1,tag=!Inventory_Utils.inv_new] inventory_utils.id run kill @s
execute as @s positioned 0.0 0.0 0.0 run data modify entity @e[tag=Inventory_Utils.inv_new,limit=1] data.Inventory set from entity @s Inventory
tag @e[tag=Inventory_Utils.inv_new] remove Inventory_Utils.inv_new