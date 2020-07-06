scoreboard objectives add bb.cc.var dummy
scoreboard objectives add bb.cc.const dummy
scoreboard objectives add bb.cc.state dummy
scoreboard objectives add bb.cc.level dummy
scoreboard objectives add bb.cc.enum dummy

#define score_holder #cauldron.empty
scoreboard players set #cauldron.empty bb.cc.enum 0

#define score_holder #cauldron.slightly_filled
scoreboard players set #cauldron.slightly_filled bb.cc.enum 1

#define score_holder #cauldron.half_filled
scoreboard players set #cauldron.half_filled bb.cc.enum 2

#define score_holder #cauldron.fully_filled
scoreboard players set #cauldron.fully_filled bb.cc.enum 3

#define score_holder #cauldron.base_model
scoreboard players set #cauldron.base_model bb.cc.const 8080000

#define score_holder #precision
scoreboard players set #precision bb.cc.const 100

#define score_holder #red_shift
scoreboard players set #red_shift bb.cc.const 65536

#define score_holder #green_shift
scoreboard players set #green_shift bb.cc.const 256

#define score_holder #blue_shift
scoreboard players set #blue_shift bb.cc.const 1

#define tag global.ignore
#define tag global.ignore.pos
#define tag global.ignore.gui
#define tag global.ignore.kill

function boomber:colorful_cauldron/main
function boomber:colorful_cauldron/passive_check