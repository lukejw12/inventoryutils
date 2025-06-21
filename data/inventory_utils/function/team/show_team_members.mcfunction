execute unless data storage inventory_utils:temp target_cache.team_members run tellraw @s [{"text":"👥 Team Members: None","color":"gray"}]
execute if data storage inventory_utils:temp target_cache.team_members run tellraw @s [{"text":"👥 Team Members:","color":"aqua"}]
execute if data storage inventory_utils:temp target_cache.team_members run function inventory_utils:team/display_team_members