-- show.lua
function showa(arr)
    return '{'..table.concat(arr, ',')..'}'
end

--
function finda(arr, value)
    for i=1, #arr do
        if arr[i] == value then
            return i
        end
    end
    return nil
end
