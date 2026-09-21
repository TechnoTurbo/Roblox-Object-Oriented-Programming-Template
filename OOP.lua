--!strict
--!optimize 2
--!native

--[[
	This class does something. It's great for being used as an example.
	@? ??/??/????
]]

------------------------------------------------------------//VARIABLES\\-------------------------------------------------------------

--//SERVICES
--references to roblox service like RunService, UserInputService, etc go here

--//DIRECTORY
--references to roblox instances go here

--//DATA
--local variables useful to the static portion of the class or read-only data for objects to reference

-------------------------------------------------------------//TYPEDEF\\--------------------------------------------------------------

export type Class = {
	--properties
	name : string;
	id : string;

	--methods
	new: (name : string?) -> (Class);
	delete: () -> ();
}

-------------------------------------------------------------//CLASS\\----------------------------------------------------------------

local Class = {}
Class.__index = Class
Class.objects = {}

------------------------------------------------------------//FUNCTIONS\\-------------------------------------------------------------

--Define regular functions like private internal helpers here.

---------------------------------------------------------------//API\\----------------------------------------------------------------

--[[
	Destructor function that prepares the object for garbage collection. Takes no arguments and returns nothing.
]]
function Class:delete()
	
end

--[[
	Initialization function for constructor.

	@self | The object to run initialization on.
]]
local function init(self : Class)
	
end

--[[
	Constructs a new object of type Class.

	@name   | The decided name for the new Class object.
	@return | The newly created object.
]]
function Class.new(name : string?) : Class
	local self = setmetatable({}, Class) :: Class

	self.name = name or "Object"; --example for constructor function argument
	
	self.id = tostring(self) --example of setting value here
	Class.objects[self.id] = self --this is optional, but essentially is a model to have Classes own their own objects.

	init(self)
	return self
end

------------------------------------------------------------//EXECUTION\\-------------------------------------------------------------
--Any code that needs to run immediately the first time this module is required should go here.
return Class
