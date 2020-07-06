#define score_holder #alpha
#define score_holder #beta
#define score_holder #gamma
#define score_holder #result

scoreboard players operation #result bb.cc.var = #alpha bb.cc.var
scoreboard players operation #result bb.cc.var > #beta bb.cc.var
scoreboard players operation #result bb.cc.var > #gamma bb.cc.var

scoreboard players reset #alpha bb.cc.var
scoreboard players reset #beta bb.cc.var
scoreboard players reset #gamma bb.cc.var