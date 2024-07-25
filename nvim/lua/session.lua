require("auto-session").setup {
    log_level = "error",
    auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
    --save_extra_cmds = {
        ---- tabby: tabs name
        --function()
            --local cmds = {}
            --for _, t in pairs(vim.api.nvim_list_tabpages()) do
                --local tabname = require("tabby.feature.tab_name").get_raw(t)
                --if tabname ~= "" then
                    --table.insert(cmds,
                        --'require("tabby.feature.tab_name").set(' .. t .. ', "' .. tabname:gsub('"', '\\"') .. '")')
                --end
            --end

            --if #cmds == 0 then
                --return ""
            --end

            --return "lua " .. table.concat(cmds, ";")
        --end,
    --},
}

