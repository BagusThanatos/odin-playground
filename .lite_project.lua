-- Project Module: Odin-playground

-- Make sure to install all these plugins
-- autoinsert.lua
-- detectindent.lua
-- indentguide.lua
-- language_batch.lua
-- language_go.lua
-- language_odin.lua


local keymap = require "core.keymap"
local config = require "core.config"
local style = require "core.style"

-- light theme:
-- require "user.colors.summer"

-- key binding:
keymap.add {
  ["alt+left"] = "root:switch-to-previous-tab",
  ["alt+right"] = "root:switch-to-next-tab" }

