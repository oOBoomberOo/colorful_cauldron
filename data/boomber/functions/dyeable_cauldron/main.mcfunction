execute as @a[tag=!global.ignore] at @s run function boomber:dyeable_cauldron/player/main
execute as @e[type=item, tag=boomber.dyeable_cauldron.dye] at @s run function boomber:dyeable_cauldron/dye/main
execute as @e[type=armor_stand, tag=boomber.dyeable_cauldron.cauldron] at @s run function boomber:dyeable_cauldron/cauldron/main