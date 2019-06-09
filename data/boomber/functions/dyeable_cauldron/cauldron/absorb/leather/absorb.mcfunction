tag @s add boomber.dyeable_cauldron.item.dyeing

execute as @e[type=armor_stand, tag=boomber.dyeable_cauldron.cauldron, distance=..0.3] run function boomber:dyeable_cauldron/cauldron/absorb/leather/cauldron

tag @s remove boomber.dyeable_cauldron.item.dyeing
tag @s remove boomber.dyeable_cauldron.leather
tag @s add global.ignore