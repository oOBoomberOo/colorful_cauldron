summon armor_stand ~ ~ ~ {Tags: ["boomber.dyeable_cauldron.cauldron", "boomber.dyeable_cauldron.spawning", "global.ignore"], Silent: 1b, NoGravity: 1b, Invisible: 1b, Marker: 1b, Small: 1b}
loot replace entity @e[tag=boomber.dyeable_cauldron.spawning] armor.head loot boomber:dyeable_cauldron/data_holder/cauldron
function boomber:dyeable_cauldron/cauldron/get_water_level
execute store result entity @e[tag=boomber.dyeable_cauldron.spawning, limit=1] ArmorItems[-1].tag.ucit.dyeable_cauldron.water_level int 1 run scoreboard players get #bb.dc.water_level bb.variable

setblock ~ ~ ~ minecraft:cauldron[level=0]

execute as @e[tag=boomber.dyeable_cauldron.spawning] run tag @s remove boomber.dyeable_cauldron.spawning