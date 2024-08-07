local fried = require("__PKGNAME__.fried")
local map = fried:get_table("map")

local console = fried:get_table("map").console

console:clear()
moveCursor(0, getLineNumber() - 17)
for i = 0, 15, 1 do
    moveCursor(0, getLineNumber() + 1)
    selectCurrentLine()
    copy()
    console:appendBuffer()
    deselect()
end
