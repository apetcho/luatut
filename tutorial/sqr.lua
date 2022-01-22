-- sqr.lua
local function sqr(x)
    print("x is", x)
    return x * x
end

local y = sqr(10)
print("y is", y)
-- print("x is", x)

---------------------------------
-- local and global variables ---
---------------------------------
function sum_numbers(n)
    local sum = 0
    for i = 1, n do
        sum = sum + i
    end
    return sum
end

local result = sum_numbers(10)
io.write("result = ", result)
print()

--
local function starts_with(str, sub)
    return string.find(str, sub) == 0
end
local text = "Hello Lua. A cool little programming language"
local hello = "Hello"
if starts_with(text, hello) then
    print("GoodBye!")
end
