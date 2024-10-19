local map = CK.map
local console = map.console
local container = map.container

local map = CK.map
local console = map.console
local container = map.container
console:clear()
moveCursor(0, getLineNumber() - 13)
if not container.hidden then
  selectCurrentLine()
  replace("[[ See Map Window ]]")
  deselect()
end
moveCursor(0, getLineNumber() + 1)
console:echo("\n\n")
for i = 1, 11, 1 do
  -- Copy line to map
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
raiseEvent("CK.chat:narrow-draw")