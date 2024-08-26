local wezterm = require 'wezterm';

return {
  font = wezterm.font("JetBrainsMono Nerd Font"),

  -- Specify fallback fonts
  font_with_fallback = {
    "JetBrains Mono Nerd Font",
    "Nerd Font Symbols",
  },

  keys = {
    {
      key = 'Backspace',
      mods = 'CMD',
      action = wezterm.action.SendKey { key = 'u', mods = 'CTRL' },
    },
    {
      key = 'LeftArrow',
      mods = 'CMD',
      action = wezterm.action.SendKey { key = 'a', mods = 'CTRL' },
    },
    -- Bind CMD+Right Arrow to move to the end of the line
    {
      key = 'RightArrow',
      mods = 'CMD',
      action = wezterm.action.SendKey { key = 'e', mods = 'CTRL' },
    },
    -- Bind Option+Left Arrow to move backward by a word
    {
      key = 'LeftArrow',
      mods = 'OPT',
      action = wezterm.action.SendKey { key = 'b', mods = 'ALT' },
    },
    -- Bind Option+Right Arrow to move forward by a word
    {
      key = 'RightArrow',
      mods = 'OPT',
      action = wezterm.action.SendKey { key = 'f', mods = 'ALT' },
    },
  },

  -- Other optional configurations
  font_size = 14.0,
  line_height = 1.2,

  -- Set color scheme
  color_scheme = "Dracula",

  -- Enable ligatures
  enable_ime = true,
  use_fancy_tab_bar = false,

  -- Set window size
  initial_cols = 100,
  initial_rows = 30,
}
