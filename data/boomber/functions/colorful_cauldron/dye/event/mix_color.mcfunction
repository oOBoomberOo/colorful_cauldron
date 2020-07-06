function boomber:colorful_cauldron/dye/method/color_index
	execute unless entity @e[tag=boomber.colorful_cauldron.cauldron, distance=..0.3] run function boomber:colorful_cauldron/dye/method/create_cauldron
	execute as @e[tag=boomber.colorful_cauldron.cauldron, distance=..0.3] run function boomber:colorful_cauldron/cauldron/event/add_color
	kill @s