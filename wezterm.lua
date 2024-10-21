local Config = require('config')

require('utils.backdrops')
   :set_files()
   -- :set_focus('#000000')
   :random()

require('events.right-status').setup()
require('events.left-status').setup()
require('events.tab-title').setup()
require('events.new-tab-button').setup()

local config = Config:init()
:append(require('config.appearance'))
:append(require('config.bindings'))
:append(require('config.domains'))
:append(require('config.fonts'))
:append(require('config.general'))
:append(require('config.launch')).options

local wezterm = require("wezterm")
local modal = wezterm.plugin.require("https://github.com/MLFlexer/modal.wezterm")
modal.apply_to_config(config)

return config