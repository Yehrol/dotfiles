-- used in : autostart, keybinds
-- TODO find what to do

-- ----------------------------------- MAIN ----------------------------------- #
terminal = "alacritty"
fileManager = "thunar" -- TODO: switch to yazi ?
screenshot = "hyprshot -m region"
browserPerso = "firefox" -- --profile "/home/yehrol/.mozilla/firefox/4seUQjF1.Profile 1" # FIXME no way of doing this with new profile for now
-- browserWork = "firefox -P Work" # FIXME no way of doing this with new profile for now
reloadHypr = "hyprctl reload && notify-send \"Hyprland configuration reloaded\""

-- ---------------------------------- DESKTOP --------------------------------- #
openhue = "openhue set room Chambre -b"
brightness0 = "ddcutil setvcp 10 1 --display 1 & ddcutil setvcp 10 10 --display 2 & ddcutil setvcp 10 10 --display 3"
brightness1 = "ddcutil setvcp 10 20 --display 1 & ddcutil setvcp 10 30 --display 2 & ddcutil setvcp 10 30 --display 3"
brightness2 = "ddcutil setvcp 10 30 --display 1 & ddcutil setvcp 10 45 --display 2 & ddcutil setvcp 10 45 --display 3"
