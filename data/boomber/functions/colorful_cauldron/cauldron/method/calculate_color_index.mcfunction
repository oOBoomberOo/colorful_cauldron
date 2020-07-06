# for each color in colors:
# 	total += color
#	total_max += max(color.red, color.green, color.blue)
#	color_count += 1
#	
# average = color / color_count
# average_max = total_max / color_count
#
# max_of_average = max(average.red, average.green, average.blue)
# gain_factor = average_max / max_of_average
#
# result = average * gain_factor

#define score_holder #total.red
#define score_holder #total.green
#define score_holder #total.blue
#define score_holder #total.max

#define score_holder #average.red
#define score_holder #average.green
#define score_holder #average.blue
#define score_holder #average.max

#define score_holder #max_of_average
#define score_holder #gain_factor
#define score_holder #color_count

#define score_holder #result.red
#define score_holder #result.green
#define score_holder #result.blue

scoreboard players set #total.red bb.cc.var 0
scoreboard players set #total.green bb.cc.var 0
scoreboard players set #total.blue bb.cc.var 0

execute store result score #color_count bb.cc.var run data get entity @s ArmorItems[-1].tag.colors

data modify storage boomber:colorful_cauldron colors set from entity @s ArmorItems[-1].tag.colors
function boomber:colorful_cauldron/cauldron/method/calculate_color_index/loop
	function boomber:colorful_cauldron/cauldron/method/calculate_color_index/average_value
	function boomber:colorful_cauldron/cauldron/method/calculate_color_index/max_of_average
	function boomber:colorful_cauldron/cauldron/method/calculate_color_index/gain_factor
	function boomber:colorful_cauldron/cauldron/method/calculate_color_index/result_color

scoreboard players reset #total.red bb.cc.var
scoreboard players reset #total.green bb.cc.var
scoreboard players reset #total.blue bb.cc.var
scoreboard players reset #total.max bb.cc.var
scoreboard players reset #average.red bb.cc.var
scoreboard players reset #average.green bb.cc.var
scoreboard players reset #average.blue bb.cc.var
scoreboard players reset #average.max bb.cc.var
scoreboard players reset #max_of_average bb.cc.var
scoreboard players reset #gain_factor bb.cc.var
scoreboard players reset #color_count bb.cc.var
scoreboard players reset #result bb.cc.var
