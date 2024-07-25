local configPath = vim.fn.stdpath('config')..'/plugin'

local vimFiles = vim.fn.readdir(configPath)

local function sourceVim(filename)
  vim.cmd('source '..vim.fn.stdpath('config')..'/plugin/'..filename)
end

for k,v in pairs(vimFiles) do
  sourceVim(v)
end


