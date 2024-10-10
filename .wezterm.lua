local wezterm = require 'wezterm'

local config = wezterm.config_builder()

--Font
config.font = wezterm.font_with_fallback { 'Dank Mono', 'VictorMono NFM', 'Fira Code' }
config.font_size = 16
config.line_height = 1.3
config.freetype_load_target = 'HorizontalLcd'

-- Tabbar
config.window_frame = {
	font = wezterm.font { family = 'Roboto', weight = 'Regular' },
	active_titlebar_bg = '#211f1f',
}
config.colors = {
	tab_bar = {
		new_tab = { bg_color = '#211f1f', fg_color = '#808080' },
		new_tab_hover = { bg_color = '#211f1f', fg_color = '#ffffff' },
	}
}

-- Window
config.window_decorations = 'RESIZE'
config.window_background_opacity = 0.98
config.color_scheme = 'Catppuccin Mocha'
config.win32_system_backdrop = 'Acrylic'

-- Hotkeys
config.keys = {
	{
		-- New Tab
		key = 'n',
		mods = 'CTRL|SHIFT',
		action = wezterm.action.SpawnTab 'CurrentPaneDomain',
	},
	{
		-- Close Tab
		key = 'c',
		mods = 'CTRL|SHIFT',
		action = wezterm.action.CloseCurrentTab { confirm = true },
	},
	{
		-- Rename Tab
		key = 'r',
		mods = 'CTRL|SHIFT',
		action = wezterm.action.PromptInputLine {
			description = 'Enter new name for tab',
			action = wezterm.action_callback(function(window, pane, line)
				if line then
					window:active_tab():set_title(line)
				end
			end),
		}
	},
}
for i = 1, 8 do
	-- [CTRL+ALT + number] to activate tab
	table.insert(config.keys, {
		key = tostring(i),
		mods = 'CTRL|SHIFT',
		action = wezterm.action.ActivateTab(i - 1),
	})
end

return config
