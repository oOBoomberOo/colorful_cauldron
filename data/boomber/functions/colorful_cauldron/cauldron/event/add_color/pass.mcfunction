data modify entity @s ArmorItems[-1].tag.colors append from storage boomber:colorful_cauldron color

execute store result score #result.red bb.cc.var run data get storage boomber:colorful_cauldron color.red
execute store result score #result.green bb.cc.var run data get storage boomber:colorful_cauldron color.green
execute store result score #result.blue bb.cc.var run data get storage boomber:colorful_cauldron color.blue
function boomber:colorful_cauldron/cauldron/method/align_color
	execute positioned ~ ~0.5 ~ run function boomber:colorful_cauldron/cauldron/effect/add_dye