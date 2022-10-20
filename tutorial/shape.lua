-- Meta class
Shape = {area = 0 }

-- Base class method new
function Shape:new(obj, side)
    obj = obj or {}
    setmetatable(obj, self)
    self.__index = self
    side = side or 0
    self.area = side * side
    return obj
end

-- Base class method printArea()
function Shape:printArea()
    io.write("The area is ", self.area, "\n")
end

-- Create an object
local shape = Shape:new(nil, 10)
shape:printArea()
