local wezterm = require("wezterm")
local mux = wezterm.mux

wezterm.on("gui-startup", function(cmd)
	local _, _, window = mux.spawn_window(cmd or {})
	window:gui_window():toggle_fullscreen()
end)

return {
	automatically_reload_config = true,
	quit_when_all_windows_are_closed = true,
	color_scheme = "Oxocarbon Dark",
	font = wezterm.font("MesloLGL Nerd Font"),
	font_size = 14,
	enable_tab_bar = false,
	use_fancy_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,
	window_padding = { left = 14, right = 14, top = 16, bottom = 16 },
	native_macos_fullscreen_mode = true,
}
