execute store result score #water_level bb.cc.var run data get entity @s ArmorItems[-1].tag.ctc.dyeable_cauldron.water_level
scoreboard players set #water_model bb.cc.var 8080000
scoreboard players operation #water_model bb.cc.var += #water_level bb.cc.var
execute store result entity @s ArmorItems[-1].tag.CustomModelData int 1 run scoreboard players get #water_model bb.cc.var

execute if score #water_level bb.cc.var matches 1..3 unless block ~ ~ ~ minecraft:cauldron[level=0] run scoreboard players set #water_level bb.cc.var -1
execute if score #water_level bb.cc.var matches ..0 run scoreboard players set #water_level bb.cc.var -1