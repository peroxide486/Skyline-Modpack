execute if score @s z_pos > #nether_center_z bw_center run tp @s ~ ~ ~-1.2
execute if score @s z_pos < #nether_center_z bw_center run tp @s ~ ~ ~1.2

title @s actionbar {"text":"Nether Border Limit!","color":"red"}