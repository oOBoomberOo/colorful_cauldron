scoreboard players operation @s bb.cc.level = #level bb.cc.var

scoreboard players operation #model bb.cc.var = #cauldron.base_model bb.cc.const
scoreboard players operation #model bb.cc.var += @s bb.cc.level
execute store result entity @s ArmorItems[-1].tag.CustomModelData int 1 run scoreboard players get #model bb.cc.var

execute if score @s bb.cc.level = #cauldron.empty bb.cc.enum run function boomber:colorful_cauldron/cauldron/event/destroy
