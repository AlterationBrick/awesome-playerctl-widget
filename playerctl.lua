local wibox = require("wibox")
local lgi = require("lgi")

local Playerctl = lgi.Playerctl
local player = Playerctl.Player{}
local playerctl_widget = wibox.widget.textbox()

update_metadata = function()
    if player:get_title() then
	playerctl_widget:set_text(player:get_artist() .. " – " .. player:get_title())
    else
	playerctl_widget:set_text('-')
    end
end

player.on_metadata = update_metadata
update_metadata()

return playerctl_widget

