scoreboard players add #current_dia bw_stats 10
scoreboard players add #current_rad bw_stats 5

scoreboard players operation #nether_rad bw_stats = #current_rad bw_stats

execute store result storage barrierworld:main border int 1 run scoreboard players get #current_dia bw_stats
function barrierworld:update_border with storage barrierworld:main

title @a title {"text":"Border Expanded!","color":"gold"}
title @a subtitle {"text":"+10 Blocks Diameter","color":"yellow"}