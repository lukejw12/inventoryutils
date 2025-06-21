data modify storage inventory_utils:temp current_clean set from storage inventory_utils:temp clean_name
data modify storage inventory_utils:temp new_word set from storage inventory_utils:temp capitalized_word
function inventory_utils:utils/join_with_space with storage inventory_utils:temp