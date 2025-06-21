$tellraw @a [{"text":"DEBUG: Trying to restore to slot $(current_slot_value)","color":"yellow"}]
execute if score #current_slot_value inv_utils.temp matches 0 run tellraw @a [{"text":"DEBUG: Restoring to hotbar.0","color":"green"}]
execute if score #current_slot_value inv_utils.temp matches 0 run item replace entity @s hotbar.0 from block ~ 300 ~ container.0
execute if score #current_slot_value inv_utils.temp matches 1 run tellraw @a [{"text":"DEBUG: Restoring to hotbar.1","color":"green"}]
execute if score #current_slot_value inv_utils.temp matches 1 run item replace entity @s hotbar.1 from block ~ 300 ~ container.0
execute if score #current_slot_value inv_utils.temp matches 2 run item replace entity @s hotbar.2 from block ~ 300 ~ container.0
execute if score #current_slot_value inv_utils.temp matches 3 run item replace entity @s hotbar.3 from block ~ 300 ~ container.0
execute if score #current_slot_value inv_utils.temp matches 4 run item replace entity @s hotbar.4 from block ~ 300 ~ container.0
execute if score #current_slot_value inv_utils.temp matches 5 run item replace entity @s hotbar.5 from block ~ 300 ~ container.0
execute if score #current_slot_value inv_utils.temp matches 6 run item replace entity @s hotbar.6 from block ~ 300 ~ container.0
execute if score #current_slot_value inv_utils.temp matches 7 run item replace entity @s hotbar.7 from block ~ 300 ~ container.0
execute if score #current_slot_value inv_utils.temp matches 8 run item replace entity @s hotbar.8 from block ~ 300 ~ container.0