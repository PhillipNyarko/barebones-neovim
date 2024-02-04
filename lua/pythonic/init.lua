--[[ Every lua file inthe pythonic directory has to be imported to this file
for it to be visible upon neovim's startup (asides from the "init.lua" file) --]]

require "pythonic.remaps"
require "pythonic.options"
require "pythonic.plugins"
require "pythonic.cmp"
require "pythonic.toggleterm"
require "pythonic.autopairs"
require "pythonic.tokyonight"
require "pythonic.virt_column"
--require "pythonic.lsp"
