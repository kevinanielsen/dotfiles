local wezterm = require("wezterm")

return {
	font = wezterm.font("Hack Nerd Font Mono"),
	color_scheme = "Dracula",

	font_size = 14.0,
	line_height = 1.2,

	-- window_background_opacity = 0.8,
	-- macos_window_background_blur = 100,
	window_decorations = "RESIZE",

	keys = {
		{
			key = "Backspace",
			mods = "CMD",
			action = wezterm.action.SendKey({ key = "u", mods = "CTRL" }),
		},
		{
			key = "LeftArrow",
			mods = "CMD",
			action = wezterm.action.SendKey({ key = "a", mods = "CTRL" }),
		},
		{
			key = "RightArrow",
			mods = "CMD",
			action = wezterm.action.SendKey({ key = "e", mods = "CTRL" }),
		},
		{
			key = "LeftArrow",
			mods = "OPT",
			action = wezterm.action.SendKey({ key = "b", mods = "ALT" }),
		},
		{
			key = "RightArrow",
			mods = "OPT",
			action = wezterm.action.SendKey({ key = "f", mods = "ALT" }),
		},
	},
}
