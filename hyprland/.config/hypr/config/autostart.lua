local xdgPortal = "dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"

local statusBar = "uwsm app -- qs"
local autoMount = "uwsm app -- udiskie"
-- local solaar = "uwsm app -- solaar -w hide"
-- local polkit = "systemctl --user start hyprpolkitagent"
-- local inputRemapper = "systemctl start input-remapper"

hl.on("hyprland.start", function()
    hl.exec_cmd(xdgPortal)
    hl.exec_cmd(statusBar)
    hl.exec_cmd(autoMount)
    hl.exec_cmd("uwsm app -- sleep 2 && nextcloud")
    hl.exec_cmd("uwsm app -- sleep 2 && keepassxc")
    -- hl.exec_cmd(solaar)
    -- hl.exec_cmd(polkit)
    -- hl.exec_cmd(inputRemapper)
end)
