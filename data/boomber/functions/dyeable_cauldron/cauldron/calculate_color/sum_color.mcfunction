execute store result score #bb.dc.red bb.cc.var run data get entity @s ArmorItems[-1].tag.ctc.dyeable_cauldron.calculation[0].rgb[0]
execute store result score #bb.dc.green bb.cc.var run data get entity @s ArmorItems[-1].tag.ctc.dyeable_cauldron.calculation[0].rgb[1]
execute store result score #bb.dc.blue bb.cc.var run data get entity @s ArmorItems[-1].tag.ctc.dyeable_cauldron.calculation[0].rgb[2]
data remove entity @s ArmorItems[-1].tag.ctc.dyeable_cauldron.calculation[0]

function boomber:dyeable_cauldron/cauldron/calculate_color/max_color

scoreboard players operation #bb.dc.total.red bb.cc.var += #bb.dc.red bb.cc.var
scoreboard players operation #bb.dc.total.green bb.cc.var += #bb.dc.green bb.cc.var
scoreboard players operation #bb.dc.total.blue bb.cc.var += #bb.dc.blue bb.cc.var
scoreboard players operation #bb.dc.total.max bb.cc.var += #bb.dc.max bb.cc.var
scoreboard players add #bb.dc.total.colors bb.cc.var 1

execute if data entity @s ArmorItems[-1].tag.ctc.dyeable_cauldron.calculation[0].name run function boomber:dyeable_cauldron/cauldron/calculate_color/sum_color