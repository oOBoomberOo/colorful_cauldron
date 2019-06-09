execute as @e[type=item, tag=boomber.dyeable_cauldron.dye, distance=..0.5] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function boomber:dyeable_cauldron/cauldron/item/dye
execute as @e[type=item, tag=boomber.dyeable_cauldron.leather, distance=..0.5] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function boomber:dyeable_cauldron/cauldron/item/leather
execute as @e[type=item, tag=boomber.dyeable_cauldron.bottle, distance=..0.5] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function boomber:dyeable_cauldron/cauldron/item/bottle

function boomber:dyeable_cauldron/cauldron/change_color
function boomber:dyeable_cauldron/cauldron/water_level
# function boomber:dyeable_cauldron/cauldron/debug

execute if score #bb.dc.water_level bb.variable matches ..-1 run function boomber:dyeable_cauldron/cauldron/remove