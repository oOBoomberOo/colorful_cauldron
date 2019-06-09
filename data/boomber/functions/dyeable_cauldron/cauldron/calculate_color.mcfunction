scoreboard players set #bb.dc.total.red bb.variable 0
scoreboard players set #bb.dc.total.green bb.variable 0
scoreboard players set #bb.dc.total.blue bb.variable 0
scoreboard players set #bb.dc.total.max bb.variable 0
scoreboard players set #bb.dc.total.colors bb.variable 0

data modify entity @s ArmorItems[-1].tag.ucit.dyeable_cauldron.calculation set from entity @s ArmorItems[-1].tag.ucit.dyeable_cauldron.dyes
function boomber:dyeable_cauldron/cauldron/calculate_color/sum_color

scoreboard players operation #bb.dc.average.red bb.variable = #bb.dc.total.red bb.variable
scoreboard players operation #bb.dc.average.red bb.variable /= #bb.dc.total.colors bb.variable
scoreboard players operation #bb.dc.average.green bb.variable = #bb.dc.total.green bb.variable
scoreboard players operation #bb.dc.average.green bb.variable /= #bb.dc.total.colors bb.variable
scoreboard players operation #bb.dc.average.blue bb.variable = #bb.dc.total.blue bb.variable
scoreboard players operation #bb.dc.average.blue bb.variable /= #bb.dc.total.colors bb.variable
scoreboard players operation #bb.dc.average.max bb.variable = #bb.dc.total.max bb.variable
scoreboard players operation #bb.dc.average.max bb.variable /= #bb.dc.total.colors bb.variable

function boomber:dyeable_cauldron/cauldron/calculate_color/max_average
scoreboard players operation #bb.dc.max_average bb.variable = #bb.dc.max bb.variable

scoreboard players operation #bb.dc.factor bb.variable = #bb.dc.average.max bb.variable
scoreboard players operation #bb.dc.factor bb.variable /= #bb.dc.max_average bb.variable

scoreboard players operation #bb.dc.result.red bb.variable = #bb.dc.average.red bb.variable
scoreboard players operation #bb.dc.result.green bb.variable = #bb.dc.average.green bb.variable
scoreboard players operation #bb.dc.result.blue bb.variable = #bb.dc.average.blue bb.variable
scoreboard players operation #bb.dc.result.red bb.variable *= #bb.dc.factor bb.variable
scoreboard players operation #bb.dc.result.green bb.variable *= #bb.dc.factor bb.variable
scoreboard players operation #bb.dc.result.blue bb.variable *= #bb.dc.factor bb.variable

execute store result entity @s ArmorItems[-1].tag.ucit.dyeable_cauldron.current_rgb[0] int 1 run scoreboard players get #bb.dc.result.red bb.variable
execute store result entity @s ArmorItems[-1].tag.ucit.dyeable_cauldron.current_rgb[1] int 1 run scoreboard players get #bb.dc.result.green bb.variable
execute store result entity @s ArmorItems[-1].tag.ucit.dyeable_cauldron.current_rgb[2] int 1 run scoreboard players get #bb.dc.result.blue bb.variable

scoreboard players operation #bb.dc.result.red bb.variable *= #65536 bb.variable
scoreboard players operation #bb.dc.result.green bb.variable *= #256 bb.variable
scoreboard players set #bb.dc.result.value bb.variable 0
scoreboard players operation #bb.dc.result.value bb.variable += #bb.dc.result.red bb.variable
scoreboard players operation #bb.dc.result.value bb.variable += #bb.dc.result.green bb.variable
scoreboard players operation #bb.dc.result.value bb.variable += #bb.dc.result.blue bb.variable

execute store result entity @s ArmorItems[-1].tag.ucit.dyeable_cauldron.current_color int 1 run scoreboard players get #bb.dc.result.value bb.variable