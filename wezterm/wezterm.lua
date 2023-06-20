-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "Catppuccin Mocha"
config.window_background_opacity = 0.9
config.window_padding = {
  left = 10,
  right = 10,
  top = 5,
  bottom = 0,
}
default_window_size = {
  columns = 120,
  rows = 30,
}
-- font in JetBrains
config.font =
  wezterm.font('CaskaydiaCove Nerd Font Mono', { weight = 'Medium', italic = false})

  config.font_size = 16
-- and finally, return the configuration to wezterm
return config



