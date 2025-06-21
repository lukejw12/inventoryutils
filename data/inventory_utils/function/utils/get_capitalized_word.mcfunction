$data modify storage inventory_utils:temp word set from storage inventory_utils:temp words[$(current_word_index)]
data modify storage inventory_utils:temp first_char set string storage inventory_utils:temp word 0 1
data modify storage inventory_utils:temp rest_word set string storage inventory_utils:temp word 1

function inventory_utils:utils/uppercase_first_char
function inventory_utils:utils/combine_word with storage inventory_utils:temp