local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- CONFIG
config.font = wezterm.font("JetBrains Mono")
config.font_size = 14
config.enable_tab_bar = false
config.initial_cols = 120
config.initial_rows = 30
config.color_scheme = 'Catppuccin Mocha'

return config