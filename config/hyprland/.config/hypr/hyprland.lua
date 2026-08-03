-- Refer to the wiki for more information.
-- https://wiki.hypr.land/Configuring/Start/

-- TODO: detect which machine and loading config accordingly
require("config.monitor-desktop")
-- require("config.monitor-laptop")

require("config.autostart")
-- require("config.environment") -- Only when not using uwsm
require("config.esthetic")
require("config.feel")
require("config.input")
require("config.keybinds")
require("config.rules")
require("noctalia.noctalia-colors")


-- NOTE desktop/laptop detection
-- local function getHostname()
--     local f = io.popen ("/bin/hostname")
--     local hostname = f:read("*a") or ""
--     f:close()
--     hostname =string.gsub(hostname, "\n$", "")
--     return hostname
-- end
-- local host = getHostname() 
