function boomber:colorful_cauldron/cauldron/method/get_level
execute unless score @s bb.cc.level = #level bb.cc.var run function boomber:colorful_cauldron/cauldron/event/update_level

execute unless block ~ ~ ~ minecraft:cauldron run function boomber:colorful_cauldron/cauldron/event/destroy