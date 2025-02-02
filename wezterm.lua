local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.font = wezterm.font("Hack Nerd Font")
config.font_size = 14

config.enable_tab_bar = false

config.window_decorations = "RESIZE"

-- colors
config.color_scheme = "Material"
-- config.colors = {
    -- background = "#161718",
    -- foreground = "#c4c8c5",
    -- cursor_bg = background,
    -- cursor_fg = "#d0d0d0",
    -- selection_bg = "#444444",
    -- selection_fg = "#161718",
    -- ansi = {"#000000", "#fc5ef0", "#86c38a", "#ffd6b1", "#85befd", "#b9b5fc", "#85befd", "#dfdfdf"},
    -- brights = {"#000000", "#fc5ef0", "#94f936", "#f5ffa7", "#95cbfe", "#b9b5fc", "#85befd", "#dfdfdf"}
-- }

-- Hotkeys
config.keys = {
    
}

return config
