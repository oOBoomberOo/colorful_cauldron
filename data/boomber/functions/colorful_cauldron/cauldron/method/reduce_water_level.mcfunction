execute if block ~ ~ ~ minecraft:cauldron[level=1] run setblock ~ ~ ~ minecraft:cauldron[level=0]
execute if block ~ ~ ~ minecraft:cauldron[level=2] run setblock ~ ~ ~ minecraft:cauldron[level=1]
execute if block ~ ~ ~ minecraft:cauldron[level=3] run setblock ~ ~ ~ minecraft:cauldron[level=2]

function boomber:colorful_cauldron/cauldron/event/update_level