execute store result score #bb.dc.water_level bb.variable run data get entity @s ArmorItems[-1].tag.ucit.dyeable_cauldron.water_level
scoreboard players set #bb.dc.water_model bb.variable 8080000
scoreboard players operation #bb.dc.water_model bb.variable += #bb.dc.water_level bb.variable
execute store result entity @s ArmorItems[-1].tag.CustomModelData int 1 run scoreboard players get #bb.dc.water_model bb.variable

execute if score #bb.dc.water_level bb.variable matches 1..3 unless block ~ ~ ~ minecraft:cauldron[level=0] run scoreboard players set #bb.dc.water_level bb.variable -1
execute if score #bb.dc.water_level bb.variable matches ..0 run scoreboard players set #bb.dc.water_level bb.variable -1