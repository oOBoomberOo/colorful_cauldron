scoreboard players set #bb.dc.total.red bb.cc.var 0
scoreboard players set #bb.dc.total.green bb.cc.var 0
scoreboard players set #bb.dc.total.blue bb.cc.var 0
scoreboard players set #bb.dc.total.max bb.cc.var 0
scoreboard players set #bb.dc.total.colors bb.cc.var 0

data modify entity @s ArmorItems[-1].tag.ctc.dyeable_cauldron.calculation set from entity @s ArmorItems[-1].tag.ctc.dyeable_cauldron.dyes
function boomber:dyeable_cauldron/cauldron/calculate_color/sum_color

scoreboard players operation #bb.dc.average.red bb.cc.var = #bb.dc.total.red bb.cc.var
scoreboard players operation #bb.dc.average.red bb.cc.var /= #bb.dc.total.colors bb.cc.var
scoreboard players operation #bb.dc.average.green bb.cc.var = #bb.dc.total.green bb.cc.var
scoreboard players operation #bb.dc.average.green bb.cc.var /= #bb.dc.total.colors bb.cc.var
scoreboard players operation #bb.dc.average.blue bb.cc.var = #bb.dc.total.blue bb.cc.var
scoreboard players operation #bb.dc.average.blue bb.cc.var /= #bb.dc.total.colors bb.cc.var
scoreboard players operation #bb.dc.average.max bb.cc.var = #bb.dc.total.max bb.cc.var
scoreboard players operation #bb.dc.average.max bb.cc.var /= #bb.dc.total.colors bb.cc.var

function boomber:dyeable_cauldron/cauldron/calculate_color/max_average
scoreboard players operation #bb.dc.max_average bb.cc.var = #bb.dc.max bb.cc.var

scoreboard players operation #bb.dc.factor bb.cc.var = #bb.dc.average.max bb.cc.var
scoreboard players operation #bb.dc.factor bb.cc.var /= #bb.dc.max_average bb.cc.var

scoreboard players operation #bb.dc.result.red bb.cc.var = #bb.dc.average.red bb.cc.var
scoreboard players operation #bb.dc.result.green bb.cc.var = #bb.dc.average.green bb.cc.var
scoreboard players operation #bb.dc.result.blue bb.cc.var = #bb.dc.average.blue bb.cc.var
scoreboard players operation #bb.dc.result.red bb.cc.var *= #bb.dc.factor bb.cc.var
scoreboard players operation #bb.dc.result.green bb.cc.var *= #bb.dc.factor bb.cc.var
scoreboard players operation #bb.dc.result.blue bb.cc.var *= #bb.dc.factor bb.cc.var

execute store result entity @s ArmorItems[-1].tag.ctc.dyeable_cauldron.current_rgb[0] int 1 run scoreboard players get #bb.dc.result.red bb.cc.var
execute store result entity @s ArmorItems[-1].tag.ctc.dyeable_cauldron.current_rgb[1] int 1 run scoreboard players get #bb.dc.result.green bb.cc.var
execute store result entity @s ArmorItems[-1].tag.ctc.dyeable_cauldron.current_rgb[2] int 1 run scoreboard players get #bb.dc.result.blue bb.cc.var

scoreboard players operation #bb.dc.result.red bb.cc.var *= #65536 bb.cc.var
scoreboard players operation #bb.dc.result.green bb.cc.var *= #256 bb.cc.var
scoreboard players set #bb.dc.result.value bb.cc.var 0
scoreboard players operation #bb.dc.result.value bb.cc.var += #bb.dc.result.red bb.cc.var
scoreboard players operation #bb.dc.result.value bb.cc.var += #bb.dc.result.green bb.cc.var
scoreboard players operation #bb.dc.result.value bb.cc.var += #bb.dc.result.blue bb.cc.var

execute store result entity @s ArmorItems[-1].tag.ctc.dyeable_cauldron.current_color int 1 run scoreboard players get #bb.dc.result.value bb.cc.var