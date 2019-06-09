# Tag all dye-like item near player
execute as @e[type=item, distance=..32, tag=!global.ignore] run function boomber:dyeable_cauldron/dye/check
execute as @e[type=item, distance=..32, tag=!global.ignore] run function boomber:dyeable_cauldron/leather/check
execute as @e[type=item, distance=..32, tag=!global.ignore] run function boomber:dyeable_cauldron/bottle/check