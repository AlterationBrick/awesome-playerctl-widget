local wibox = require("wibox")
local lgi = require("lgi")

local Playerctl = lgi.Playerctl
local player = Playerctl.Player{}
local playerctl_widget = wibox.widget.textbox()
    
player.on_metadata = function()
    playerctl_widget:set_text(player:get_title())
end

return playerctl_widget

