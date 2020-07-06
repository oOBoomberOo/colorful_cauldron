#define score_holder #color
#define score_holder #shifted.red
#define score_holder #shifted.green
#define score_holder #shifted.blue

scoreboard players operation #shifted.red bb.cc.var = #result.red bb.cc.var
	scoreboard players operation #shifted.red bb.cc.var *= #red_shift bb.cc.const

scoreboard players operation #shifted.green bb.cc.var = #result.green bb.cc.var
	scoreboard players operation #shifted.green bb.cc.var *= #green_shift bb.cc.const

scoreboard players operation #shifted.blue bb.cc.var = #result.blue bb.cc.var
	scoreboard players operation #shifted.blue bb.cc.var *= #blue_shift bb.cc.const

scoreboard players operation #color bb.cc.var = #shifted.red bb.cc.var
scoreboard players operation #color bb.cc.var += #shifted.green bb.cc.var
scoreboard players operation #color bb.cc.var += #shifted.blue bb.cc.var

scoreboard players reset #shifted.red bb.cc.var
scoreboard players reset #shifted.green bb.cc.var
scoreboard players reset #shifted.blue bb.cc.var