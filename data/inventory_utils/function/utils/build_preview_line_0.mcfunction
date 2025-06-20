data modify storage inventory_utils:temp preview_text set value ""
data modify storage inventory_utils:temp preview_text set string storage inventory_utils:temp preview_items[0].count
data modify storage inventory_utils:temp preview_text set value [{"storage":"inventory_utils:temp","nbt":"preview_items[0].count"},{"text":"x "},{"storage":"inventory_utils:temp","nbt":"preview_items[0].name"}]