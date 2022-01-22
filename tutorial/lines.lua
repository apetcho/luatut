-- lines.lua
local file = arg[1]
local i = 1
for line in io.lines(file) do
    print(i, line)
    i = i + 1
end
