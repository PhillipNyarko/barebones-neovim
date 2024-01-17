--[[ Every lua file inthe pythonic directory has to be imported to this file
for it to be visible upon neovim's startup (asides from the "init.lua" file) --]]

require "pythonic.remaps"
require "pythonic.options"

print("hello from pythonic")
