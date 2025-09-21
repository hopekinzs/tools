local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- General settings
config.font = wezterm.font("CaskaydiaMono Nerd Font")
config.font_size = 15
config.line_height = 1.2
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true
config.initial_cols = 200
config.initial_rows = 200
config.enable_wayland = false

-- Use a login shell that runs Starship
config.default_prog = { "/usr/bin/env", "bash", "--login", "-i" }
-- Make sure your ~/.bashrc contains: eval "$(starship init bash)"

-- Padding around the terminal content
config.window_padding = {
  left = 1,
  right = 1,
  top = 23,
  bottom = 2,
}

-- Window opacity
config.window_background_opacity = 0.7

-- Kanagawa color scheme definition
config.color_schemes = {
  Kanagawa = {
    foreground = "#dcd7ba",
    background = "#1f1f28",
    cursor_bg = "#c8c093",
    cursor_border = "#c8c093",
    cursor_fg = "#1f1f28",
    selection_bg = "#2d4f67",
    selection_fg = "#dcd7ba",

    ansi = {
      "#16161d", "#c34043", "#76946a", "#c0a36e",
      "#7e9cd8", "#957fb8", "#6a9589", "#c8c093",
    },
    brights = {
      "#727169", "#c34043", "#76946a", "#c0a36e",
      "#7e9cd8", "#957fb8", "#6a9589", "#faf4ed",
    },

    tab_bar = {
      background = "#1f1f28",

      active_tab = {
        bg_color = "#2d4f67",
        fg_color = "#c8c093",
        intensity = "Bold",
      },

      inactive_tab = {
        bg_color = "#1f1f28",
        fg_color = "#727169",
      },

      inactive_tab_hover = {
        bg_color = "#16161d",
        fg_color = "#c8c093",
        italic = true,
      },

      new_tab = {
        bg_color = "#1f1f28",
        fg_color = "#7e9cd8",
      },

      new_tab_hover = {
        bg_color = "#2d4f67",
        fg_color = "#faf4ed",
        italic = true,
      },
    },
  },
}

-- Apply color scheme
config.color_scheme = "Kanagawa"

-- Keybindings
config.keys = {
  {
    key = "Enter",
    mods = "SUPER|SHIFT",
    action = wezterm.action.SpawnCommandInNewTab({
      args = { os.getenv("SHELL") },
    }),
  },
  {
    key = "w",
    mods = "CTRL",
    action = wezterm.action.SpawnCommandInNewTab({
      args = { os.getenv("SHELL") },
    }),
  },
  {
    key = "w",
    mods = "CTRL|SHIFT",
    action = wezterm.action.SplitHorizontal { domain = "CurrentPaneDomain" },
  },
  {
    key = "q",
    mods = "CTRL|SHIFT",
    action = wezterm.action.SplitVertical { domain = "CurrentPaneDomain" },
  },
  {
    key = "w",
    mods = "SUPER",
    action = wezterm.action.CloseCurrentPane { confirm = false },
  },
}

-- Never ask for confirmation when closing
config.window_close_confirmation = "NeverPrompt"

return config
