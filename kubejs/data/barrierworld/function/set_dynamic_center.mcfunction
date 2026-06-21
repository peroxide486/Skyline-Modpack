execute store result score #ow_center_x bw_center run data get entity @s Pos[0]
execute store result score #ow_center_z bw_center run data get entity @s Pos[2]

scoreboard players operation #nether_center_x bw_center = #ow_center_x bw_center
scoreboard players operation #nether_center_x bw_center /= #8 bw_stats

scoreboard players operation #nether_center_z bw_center = #ow_center_z bw_center
scoreboard players operation #nether_center_z bw_center /= #8 bw_stats

execute store result storage barrierworld:main center_x int 1 run scoreboard players get #ow_center_x bw_center
execute store result storage barrierworld:main center_z int 1 run scoreboard players get #ow_center_z bw_center

function barrierworld:apply_center with storage barrierworld:main

scoreboard players set #center_set bw_stats 1