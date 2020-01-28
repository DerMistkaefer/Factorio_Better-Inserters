--CODE
BI = {}
BI.modName = "BetterInserters"


function BetterInserters_addTechnology(thisName,thisIcon,thisPrerequisites,thisCount,thisIngredients,thisTime,thisOrder,thisType1,thisEffect1,thisType2,thisEffect2)
	local obj = util.table.deepcopy(data.raw["technology"]["steel-processing"])
	obj.name = thisName
	obj.icon = thisIcon
	
	obj.effects = {}
	obj.effects[1] = {type = thisType1, modifier = thisEffect1}
	obj.effects[2] = {type = thisType2, modifier = thisEffect2}
	
	obj.prerequisites = thisPrerequisites
	
	obj.unit.count = thisCount
	if thisIngredients == 1 then
		obj.unit.ingredients = {{"automation-science-pack", 1}}
	elseif thisIngredients == 2 then
		obj.unit.ingredients = {{"automation-science-pack", 1},{"logistic-science-pack", 1}}
	elseif thisIngredients == 3 then
		obj.unit.ingredients = {{"automation-science-pack", 1},{"logistic-science-pack", 1},{"chemical-science-pack", 1}}
	elseif thisIngredients == 4 then
		obj.unit.ingredients = {{"automation-science-pack", 1},{"logistic-science-pack", 1},{"chemical-science-pack", 1},{"production-science-pack", 1}}
	elseif thisIngredients == 5 then
		obj.unit.ingredients = {{"automation-science-pack", 1},{"logistic-science-pack", 1},{"chemical-science-pack", 1},{"production-science-pack", 1},{"utility-science-pack", 1}}
	end
	obj.unit.time = thisTime
	obj.order = thisOrder
	obj.upgrade = true
	data.raw[obj.type][obj.name] = obj
end


BetterInserters_addTechnology("inserter-capacity-bonus-8","__base__/graphics/technology/inserter-capacity.png",{"inserter-capacity-bonus-7"},2000,5,45,"c-o-i","stack-inserter-capacity-bonus",50,"inserter-stack-size-bonus",25)
BetterInserters_addTechnology("inserter-capacity-bonus-9","__base__/graphics/technology/inserter-capacity.png",{"inserter-capacity-bonus-8"},2000,5,45,"c-o-j","stack-inserter-capacity-bonus",50,"inserter-stack-size-bonus",25)
BetterInserters_addTechnology("inserter-capacity-bonus-10","__base__/graphics/technology/inserter-capacity.png",{"inserter-capacity-bonus-9"},2000,5,45,"c-o-k","stack-inserter-capacity-bonus",50,"inserter-stack-size-bonus",25)
BetterInserters_addTechnology("inserter-capacity-bonus-11","__base__/graphics/technology/inserter-capacity.png",{"inserter-capacity-bonus-10"},2000,5,45,"c-o-l","stack-inserter-capacity-bonus",50,"inserter-stack-size-bonus",25)






