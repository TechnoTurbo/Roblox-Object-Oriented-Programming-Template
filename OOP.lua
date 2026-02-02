------------------------------------------------------------//VARIABLES\\-------------------------------------------------------------

--//SERVICES

--//DIRECTORY

--for inheritance
--local super = require(script.Parent)
--//DATA

------------------------------------------------------------//FUNCTIONS\\-------------------------------------------------------------
function SeachParents(key, parents)
	for i=1, #parents do
		local found = parents[i][key]

		if found then
			return found
		end
	end
end

function RegisterParent(parents)
	return {
		__index = function(self, key)
			return SeachParents(key, parents)
		end,
	}
end
-------------------------------------------------------------//CLASS\\-------------------------------------------------------------

Class = {}
Class.__index = Class

--static variables

Class.objects = {}

--static

--nonstatic

--constructor

function Class.new(data)
	local self = setmetatable({}, Class)

	self.id = tostring(self)

	Class.objects[tostring(self)] = self

	return self
end

return Class

