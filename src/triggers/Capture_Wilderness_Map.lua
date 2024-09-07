local map = CK.map
local console = map.console
local container = map.container

if map.last ~= 2 then
      container.x = "59.86%"
      container.y = "25.1%"
      container.width = "40.13%"
      container.height = "24.15%"
      container:resize()
end

console:clear()
moveCursor(0, getLineNumber() - 18)
for i = 0, 16, 1 do
    moveCursor(0, getLineNumber() + 1)
    selectCurrentLine()
    copy()
    console:appendBuffer()
    deselect()
end

map.last = 2
