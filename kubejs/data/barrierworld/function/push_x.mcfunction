execute if score @s x_pos > #nether_center_x bw_center run tp @s ~-1.2 ~ ~
execute if score @s x_pos < #nether_center_x bw_center run tp @s ~1.2 ~ ~

title @s actionbar {"text":"Nether Border Limit!","color":"red"}