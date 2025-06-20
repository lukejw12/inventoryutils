data modify entity @e[tag=Inventory_Utils.new,limit=1] data.Inventory set value []

execute if data entity @s Inventory[{Slot:0b}] run data modify entity @e[tag=Inventory_Utils.new,limit=1] data.Inventory append from entity @s Inventory[{Slot:0b}]
execute if data entity @s Inventory[{Slot:1b}] run data modify entity @e[tag=Inventory_Utils.new,limit=1] data.Inventory append from entity @s Inventory[{Slot:1b}]
execute if data entity @s Inventory[{Slot:2b}] run data modify entity @e[tag=Inventory_Utils.new,limit=1] data.Inventory append from entity @s Inventory[{Slot:2b}]
execute if data entity @s Inventory[{Slot:3b}] run data modify entity @e[tag=Inventory_Utils.new,limit=1] data.Inventory append from entity @s Inventory[{Slot:3b}]
execute if data entity @s Inventory[{Slot:4b}] run data modify entity @e[tag=Inventory_Utils.new,limit=1] data.Inventory append from entity @s Inventory[{Slot:4b}]
execute if data entity @s Inventory[{Slot:5b}] run data modify entity @e[tag=Inventory_Utils.new,limit=1] data.Inventory append from entity @s Inventory[{Slot:5b}]
execute if data entity @s Inventory[{Slot:6b}] run data modify entity @e[tag=Inventory_Utils.new,limit=1] data.Inventory append from entity @s Inventory[{Slot:6b}]
execute if data entity @s Inventory[{Slot:7b}] run data modify entity @e[tag=Inventory_Utils.new,limit=1] data.Inventory append from entity @s Inventory[{Slot:7b}]
execute if data entity @s Inventory[{Slot:8b}] run data modify entity @e[tag=Inventory_Utils.new,limit=1] data.Inventory append from entity @s Inventory[{Slot:8b}]

execute as @e[tag=Inventory_Utils.new,limit=1] run function inventory_utils:utils/generate_preview