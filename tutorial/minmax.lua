-- minmax.lua
local function minmax(values)
    local vmin = math.huge
    local vmax = -math.huge
    for i=1, #values do
        vmin = math.min(vmin, values[i])
        vmax = math.max(vmax, values[i])
    end
    return vmin, vmax
end
local values = {10, 2, 5, 20, 3, 12}
local min, max = minmax(values)
io.write("min=", min, ", max=", max)
print("")
