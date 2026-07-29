-- ----------------------------------- MAIN ----------------------------------- #

local terminal = "alacritty"
local launcher = "qs ipc call launcher toggle"
local fileManager = "thunar" -- TODO: switch to yazi ?
local screenshot = "hyprshot -m region"
local browserPerso = "firefox" -- --profile "/home/yehrol/.mozilla/firefox/4seUQjF1.Profile 1" # FIXME no way of doing this with new profile for now
-- $browserWork = firefox #-P "Work" # FIXME no way of doing this with new profile for now
local calendar = "thunderbird"
local reloadHypr = "hyprctl reload && notify-send \"Hyprland configuration reloaded\""

-- ------------------------------------ OPT ----------------------------------- #
local discord = "vesktop --start-minimized"
local musicPlayer = "spotify-launcher" -- feishin
local gameLauncher = "lutris"

-- ---------------------------------- DESKTOP --------------------------------- #
local openhue = "openhue set room Chambre -b"
local brightness0 = "ddcutil setvcp 10 0 --display 1 & ddcutil setvcp 10 0 --display 2 & ddcutil setvcp 10 0 --display 3"
local brighqtness1 = "ddcutil setvcp 10 20 --display 1 & ddcutil setvcp 10 20 --display 2 & ddcutil setvcp 10 20 --display 3"
local brightness2 = "ddcutil setvcp 10 25 --display 1 & ddcutil setvcp 10 25 --display 2 & ddcutil setvcp 10 25 --display 3"