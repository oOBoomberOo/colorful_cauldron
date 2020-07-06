function boomber:colorful_cauldron/cauldron/method/align_color
	execute store result entity @s ArmorItems[-1].tag.display.color int 1 run scoreboard players get #color bb.cc.var
	scoreboard players reset #color bb.cc.var