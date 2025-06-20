$execute store success score #name_matches inv_utils.temp run data modify storage inventory_utils:temp check_name set value "$(target_name)"
execute store success score #name_matches inv_utils.temp run data modify storage inventory_utils:temp check_name set from entity @s data.name
$execute if score #name_matches inv_utils.temp matches 0 run data modify entity @s data.name set value "$(new_name)"