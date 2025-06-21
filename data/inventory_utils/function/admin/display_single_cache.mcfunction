data modify storage inventory_utils:temp cache_name set from storage inventory_utils:temp target_cache.name
data modify storage inventory_utils:temp cache_type set from storage inventory_utils:temp target_cache.type
data modify storage inventory_utils:temp preview_text set from storage inventory_utils:temp target_cache.preview
execute store result storage inventory_utils:temp cache_id int 1 run data get storage inventory_utils:temp target_cache_id

execute if data storage inventory_utils:temp target_cache{type:"hotbar"} run function inventory_utils:admin/show_hotbar_cache
execute if data storage inventory_utils:temp target_cache{type:"full"} run function inventory_utils:admin/show_full_cache