execute store result score @s x_pos run data get entity @s Pos[0]
execute store result score @s z_pos run data get entity @s Pos[2]

scoreboard players operation @s x_abs = @s x_pos
scoreboard players operation @s x_abs -= #nether_center_x bw_center
execute if score @s x_abs matches ..-1 run scoreboard players operation @s x_abs *= #-1 bw_stats

scoreboard players operation @s z_abs = @s z_pos
scoreboard players operation @s z_abs -= #nether_center_z bw_center
execute if score @s z_abs matches ..-1 run scoreboard players operation @s z_abs *= #-1 bw_stats

execute if score @s x_abs > #nether_rad bw_stats run function barrierworld:push_x
execute if score @s z_abs > #nether_rad bw_stats run function barrierworld:push_z