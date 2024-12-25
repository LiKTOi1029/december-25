print("Please enter text")
print("Please enter digit")
function fStringRotator(choice, digit)
    local tStringIndices = {}
    for num = 1, #choice, 1 do
        local indice = string.sub(choice, num, num)
        table.insert(tStringIndices, indice)
    end
    if digit > 0 then
        for unused = 1, digit do
            table.insert(tStringIndices, 1, table.remove(tStringIndices))
        end
    elseif digit < 0 then
        for unused = 1, -digit do
            table.insert(tStringIndices, table.remove(tStringIndices, 1))
        end
    end
    print(table.concat(tStringIndices))
end

fStringRotator("This is a string", 2)
--[[
Please replace the ("This is a String", 2) to (read(),read()) for computer craft compatibility
]]--