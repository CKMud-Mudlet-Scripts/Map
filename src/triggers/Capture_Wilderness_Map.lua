local map = CK.map
local console = map.console
local container = map.container

console:clear()
moveCursor(0, getLineNumber() - 13)
if not container.hidden and map:see_map_window() then
    selectCurrentLine()
    replace("[[ See Map Window ]]")
    deselect()
end
moveCursor(0, getLineNumber() + 1)
console:echo("\n\n")
for i = 1, 11, 1 do
    local word = getCurrentLine():split()[1]
    if word ~= "" and spellCheckWord(word) then
      -- This is not a map
      return
    end
    -- Remove some spaces
    selectSection(0, 2)
    replace()
    -- Lets copy the line into the map
    selectCurrentLine()
    copy()
    console:appendBuffer()
    deselect()
    if container.hidden then
        moveCursorDown()
    else
        gagLine()
    end
end
gagLine()
raiseEvent("CK.chat:wide-draw")
