-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()
config.font = wezterm.font("Fira Code")
config.font_size = 16
-- You can specify some parameters to influence the font selection;
-- and finally, return the configuration to wezterm
return config
