clear @s
function inventory_utils:retrieve/restore_inventory
tellraw @s [{"text":"✅ Inventory restored (previous inventory deleted)","color":"green"}]