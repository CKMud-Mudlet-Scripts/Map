local map = CK.map
local console = map.console
local container = map.container

console:clear()
moveCursor(0, getLineNumber() - 18)
for i = 0, 16, 1 do
    moveCursor(0, getLineNumber() + 1)
    selectCurrentLine()
    copy()
    console:appendBuffer()
    deselect()
end

if not CK.map.container.hidden then
    moveCursor(0, getLineNumber() - 12)
    for i = 0, 11, 1 do
        gagLine()
    end
end
