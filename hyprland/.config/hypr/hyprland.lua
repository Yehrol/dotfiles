-- Refer to the wiki for more information.
-- https://wiki.hypr.land/

-- ============================================================================ #
--                                    CONFIG                                    #
-- ============================================================================ #

require("config.autostart")
require("config.esthetic")
require("config.feel")
require("config.input")
require("config.keybinds")
require("config.rules")
-- require("config.layout")
-- require("config.environment") -- Only when not using uwsm
-- require("noctalia.noctalia-colors") -- TODO convert to lua

-- ============================================================================ #
--                                    MONITORS                                  #
-- ============================================================================ #

-- after programs config because the var are used inside
-- TODO: detect which machine and loading config accordingly
require("config.monitor-desktop")
-- require("config.monitor-laptop")
