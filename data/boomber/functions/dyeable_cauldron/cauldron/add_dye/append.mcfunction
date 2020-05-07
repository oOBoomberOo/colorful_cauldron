# Push color data of dye into cauldron
data modify entity @s ArmorItems[-1].tag.ctc.dyeable_cauldron.dyes append from entity @e[type=item, tag=boomber.dyeable_cauldron.dye.appending, limit=1] Item.tag.ctc.dyeable_cauldron

function boomber:dyeable_cauldron/cauldron/calculate_color
kill @e[type=item, tag=boomber.dyeable_cauldron.dye.appending]

execute as @s at @s run playsound minecraft:entity.generic.splash voice @a ~ ~ ~ 1 1 0