execute store result score #check.color bb.cc.var run data get storage boomber:colorful_cauldron color
	execute unless score #check.color bb.cc.var matches 0 run function boomber:colorful_cauldron/cauldron/event/add_color/pass

function boomber:colorful_cauldron/cauldron/method/calculate_color_index
	function boomber:colorful_cauldron/cauldron/method/store_color
