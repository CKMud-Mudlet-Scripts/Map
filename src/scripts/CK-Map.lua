local ck = require("CK")
ck:register("__PKGNAME__", "__VERSION__")
local map = ck:get_table("map")

local function create_container()
  local default_constraints =
    {
      name = "MapContainer",
      x = "60%",
      y = "0%",
      width = "40%",
      height = "50%",
      titleText = "Map",
    }
  local adjLabelStyle =
    Geyser.StyleSheet:new(
      [[
  background-color: rgba(0,0,0,100%);
  border: 4px double;
  border-color: green;
  border-radius: 4px;]]
    )
  default_constraints.adjLabelstyle = adjLabelStyle:getCSS()
  return Adjustable.Container:new(default_constraints)
end

local function create_console()
  local console =
    Geyser.MiniConsole:new(
      {
        name = "MapConsole",
        x = 0,
        y = "1%",
        autoWrap = false,
        color = "black",
        scrollBar = false,
        fontSize = 16,
        width = "100%",
        height = "99%",
      },
      map.container
    )
  return console
end

map.container = map.container or create_container()
map.console = map.console or create_console()
