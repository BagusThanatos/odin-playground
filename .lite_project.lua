-- this module will be loaded after everything else when the application starts

local keymap = require "core.keymap"
local config = require "core.config"
local style = require "core.style"

-- light theme:
-- require "user.colors.summer"

-- key binding:
keymap.add {
  ["alt+left"] = "root:switch-to-previous-tab",
  ["alt+right"] = "root:switch-to-next-tab" }

