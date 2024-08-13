local fried = require("__PKGNAME__.fried")
local map = fried:get_table("map")
local helpers = fried:get_table("map.helpers")
local city = fried:get_table("map.city")
local wilds = fried:get_table("map.wilds")
# Default to city map
map.picked = map.picked or 1
map.hide = map.hide or false

local function create_container(name)
  local default_constraints =
    {
      name = f"{name}MapContainer",
      x = "75.78%",
      y = "25.41%",
      width = "23.5%",
      height = "24.15%",
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

local function create_console(name, container)
  local console =
    Geyser.MiniConsole:new(
      {
        name = f"{name}MapConsole",
        x = 0,
        y = "1%",
        autoWrap = false,
        color = "black",
        scrollBar = false,
        fontSize = 10,
        width = "100%",
        height = "99%",
      },
      container
    )
  return console
end

city.container = city.container or create_container("City")
city.console = city.console or create_console("City", city.container)
wilds.container = wilds.container or create_container("Wilds")
wilds.console = wilds.console or create_console("Wilds", wilds.container)

local kind_saves_loc = {
  f"{getMudletHomeDir()}/__PKGNAME__/_saveCityMap.lua",
  f"{getMudletHomeDir()}/__PKGNAME__/_saveWildsMap.lua",
}

local kind = {
  city.container,
  wilds.container,
}

function helpers:show()
  
end

function helpers:hide()
end

function helpers:save()
end

function helpers:load()
end

function helpers:pick(kind)
  if not map.hide then
  if kind == 1 then
    wilds.container. 
  else
   
  end
end
end