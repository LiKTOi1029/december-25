print("Please enter text")
choice = read()
print("Please enter digit")
digit = read()
function fStringRotator()
    local tStringIndices = {}
    for num = 1, #choice, 1 do
        local indice = string.sub(choice, num, num)
        table.insert(tStringIndices, indice)
    end
    for num0 = 1, #tStringIndices, 1 do
        table.move(tStringIndices, num0, num0+digit, 1)
    end
end

fStringRotator()