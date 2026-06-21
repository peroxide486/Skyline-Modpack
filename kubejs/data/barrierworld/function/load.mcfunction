scoreboard objectives add bw_stats dummy
scoreboard objectives add x_pos dummy
scoreboard objectives add z_pos dummy
scoreboard objectives add x_abs dummy
scoreboard objectives add z_abs dummy
scoreboard objectives add bw_center dummy

scoreboard players set #-1 bw_stats -1
scoreboard players set #8 bw_stats 8

execute unless score #center_set bw_stats matches 1 run scoreboard players set #center_set bw_stats 0

execute unless score #current_dia bw_stats matches 1.. run scoreboard players set #current_dia bw_stats 10
execute unless score #current_rad bw_stats matches 1.. run scoreboard players set #current_rad bw_stats 5

scoreboard players operation #nether_rad bw_stats = #current_rad bw_stats

execute store result storage barrierworld:main border int 1 run scoreboard players get #current_dia bw_stats
function barrierworld:update_border with storage barrierworld:main