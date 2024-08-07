local fried = require("__PKGNAME__.fried")
local map = fried:get_table("map")

local function create_container()
  local default_constraints =
  {
    name = "MapContainer",
    x = "-465",
    y = "-60%",
    width = "450",
    height = "425",
    titleText = "Map",
  }
  local adjLabelStyle =
      Geyser.StyleSheet:new(
        f(
          [[
  background-color: rgba(0,0,0,100%);
  border: 4px double;
  border-color: green;
  border-radius: 4px;]]
        )
      )
  default_constraints.adjLabelstyle = adjLabelStyle:getCSS()
  return Adjustable.Container:new(default_constraints)
end

local function create_console()
  console = Geyser.MiniConsole:new({
    name = "MapConsole",
    x = 0,
    y = "1%",
    autoWrap = false,
    color = "black",
    scrollBar = false,
    fontSize = 10,
    width = "100%",
    height = "99%",
  }, map.container)
  return console
end

map.container = map.container or create_container()
map.console = map.console or create_console()
