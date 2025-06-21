execute store result score #word_count inv_utils.temp run data get storage inventory_utils:temp words
scoreboard players set #word_index inv_utils.temp 0
data modify storage inventory_utils:temp clean_name set value ""

function inventory_utils:utils/build_clean_name