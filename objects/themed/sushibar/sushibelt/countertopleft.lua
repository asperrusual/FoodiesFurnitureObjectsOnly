function update(dt)
	if matchingcounter == nil then
		matchingcounterlist = world.objectQuery({object.position()[1]+4,object.position()[2]},1)
		for i,j in ipairs(matchingcounterlist) do
			if world.entityName(j) == "sushibeltcounterright" then matchingcounter = j end
		end
	end
end

function die()
	if matchingcounter ~= nil then world.breakObject(matchingcounter) end
end
