------------------------------------
--- Simple Metatable-based class ---
------------------------------------

--[[
    The table representing the class, which will double as the metatable for
    the instances
--]]
local MyClass = {}
-- Failed table lookups on the instances should fallback to the class table,
-- to get methods
MyClass.__index = MyClass

--[[ Syntax equivalent to 'MyClass.new = function ...']]
function MyClass.new(init)
    local self = setmetatable({}, MyClass)
    self.value = init
    return self
end

-- 
function MyClass.set_value(self, newval)
    self.value = newval
end
