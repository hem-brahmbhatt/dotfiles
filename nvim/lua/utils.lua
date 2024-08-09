local utils = { }

local scopes = {o = vim.o, b = vim.bo, w = vim.wo}

function utils.opt(scope, key, value)
  scopes[scope][key] = value
  if scope ~= 'o' then scopes['o'][key] = value end
end

function utils.map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

function utils.dump(o)
  if type(o) == 'table' then
    local s = '{ '
    for k,v in pairs(o) do
      if type(k) ~= 'number' then k = '"'..k..'"' end
      s = s .. '['..k..'] = ' .. utils.dump(v) .. ','
    end
    return s .. '} '
  else
    return tostring(o)
  end
end

function utils.buf_get_var(id, name)
    local status, value = pcall(function() return vim.api.nvim_buf_get_var(id, name) end);
    if not status then
        return false
    end
    return value
end

function utils.lsp_on_attach()
    local function isCodeActionSupported(action)
        local code_action_found = false
        for _, client in ipairs(vim.lsp.buf_get_clients()) do
            if client.supports_method(action) then
                code_action_found = true
                break
            end
        end
        return code_action_found
    end
    -- cache the hover action supported flag against the buffer
    vim.api.nvim_buf_set_var(
        0,
        "hoverActionSupported",
        isCodeActionSupported("textDocument/hover")
    )
end


return utils
