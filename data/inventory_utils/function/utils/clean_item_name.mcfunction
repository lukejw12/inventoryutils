data modify storage inventory_utils:temp clean_name set from storage inventory_utils:temp item_id
data modify storage inventory_utils:temp clean_name set string storage inventory_utils:temp clean_name 10

data modify storage inventory_utils:temp result_name set value ""
data modify storage inventory_utils:temp capitalize_next set value 1b

function inventory_utils:utils/process_name_chars