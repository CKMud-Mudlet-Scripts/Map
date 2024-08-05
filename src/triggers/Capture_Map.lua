local console = fried.map.console

console:clear()
moveCursor(0, getLineNumber() - 17)
for i = 0, 15, 1 do
    moveCursor(0, getLineNumber() + 1)
    selectCurrentLine()
    copy()
    console:appendBuffer()
    deselect()
end
