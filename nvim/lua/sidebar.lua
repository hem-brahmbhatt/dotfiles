local sidebar = require("sidebar-nvim")

local currentPath = vim.loop.cwd()

sidebar.setup({
    sections = { "git", "diagnostics", "buffers", "todos" },
    buffers = {
        ignored_buffers = {
            "^(?!"..string.gsub(currentPath, "/","\\/")..").+"
        }
    },
    update_interval = 10000
})



vim.keymap.set("n", "<C-s>", function()
  sidebar.toggle()
end);
