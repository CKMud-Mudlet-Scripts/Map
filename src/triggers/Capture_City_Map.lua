local map = FRIED.map
local console = map.console
local container = map.container

if map.last ~= 1 then
      container.x = "75.78%"
      container.y = "25.41%"
      container.width = "23.5%"
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

map.last = 1
