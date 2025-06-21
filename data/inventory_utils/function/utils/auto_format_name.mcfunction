$data modify storage inventory_utils:temp working_text set value "$(raw_name)"
data modify storage inventory_utils:temp clean_name set value ""
data modify storage inventory_utils:temp capitalize_next set value 1b

function inventory_utils:utils/process_char_by_char