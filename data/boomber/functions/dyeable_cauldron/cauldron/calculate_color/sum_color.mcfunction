execute store result score #bb.dc.red bb.variable run data get entity @s ArmorItems[-1].tag.ucit.dyeable_cauldron.calculation[0].rgb[0]
execute store result score #bb.dc.green bb.variable run data get entity @s ArmorItems[-1].tag.ucit.dyeable_cauldron.calculation[0].rgb[1]
execute store result score #bb.dc.blue bb.variable run data get entity @s ArmorItems[-1].tag.ucit.dyeable_cauldron.calculation[0].rgb[2]
data remove entity @s ArmorItems[-1].tag.ucit.dyeable_cauldron.calculation[0]

function boomber:dyeable_cauldron/cauldron/calculate_color/max_color

scoreboard players operation #bb.dc.total.red bb.variable += #bb.dc.red bb.variable
scoreboard players operation #bb.dc.total.green bb.variable += #bb.dc.green bb.variable
scoreboard players operation #bb.dc.total.blue bb.variable += #bb.dc.blue bb.variable
scoreboard players operation #bb.dc.total.max bb.variable += #bb.dc.max bb.variable
scoreboard players add #bb.dc.total.colors bb.variable 1

execute if data entity @s ArmorItems[-1].tag.ucit.dyeable_cauldron.calculation[0].name run function boomber:dyeable_cauldron/cauldron/calculate_color/sum_color