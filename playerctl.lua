-------------------------------------------------
-- Music Player Widget for Awesome Window Manager

-- Modified from Spotify widget by:
-- @author Pavel Makhov
-- @copyright 2018 Pavel Makhov
-------------------------------------------------

--local awful = require("awful")
--local wibox = require("wibox")
--local watch = require("awful.widget.watch")
local lgi = require("lgi")

local Playerctl = lgi.Playerctl
local GLib = lgi.GLib
--local player = Playerctl.Player{player_name='audacious'}
local player = Playerctl.Player{}

--local GET_SPOTIFY_STATUS_CMD = 'sp status'
--local GET_CURRENT_SONG_CMD = 'sp current-oneline'
--local PATH_TO_ICONS = "/usr/share/icons/Arc"
--[[
local playerctl_widget = wibox.widget.textbox()
    
local function on_metadata(player, e)
    if e["xesam:artist"] ~= nil then
	playerctl_widget.text = e.xesam_artist
    end
end
--]]
player.on_metadata = function(e)
--    print(e["xesam:title"])
	print(player:get_title())
end

local main_loop = GLib.MainLoop()
main_loop:run()

--return playerctl_widget

