#define score_holder #level
execute if block ~ ~ ~ minecraft:cauldron[level=0] run scoreboard players operation #level bb.cc.var = #cauldron.empty bb.cc.enum
execute if block ~ ~ ~ minecraft:cauldron[level=1] run scoreboard players operation #level bb.cc.var = #cauldron.slightly_filled bb.cc.enum
execute if block ~ ~ ~ minecraft:cauldron[level=2] run scoreboard players operation #level bb.cc.var = #cauldron.half_filled bb.cc.enum
execute if block ~ ~ ~ minecraft:cauldron[level=3] run scoreboard players operation #level bb.cc.var = #cauldron.fully_filled bb.cc.enum