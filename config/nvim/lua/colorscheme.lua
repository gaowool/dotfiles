-- define your colorscheme here
local colorscheme = 'monokai_pro'

local is_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not is_ok then
    vim.notify('colorscheme ' .. colorscheme .. ' not found!')
    return
end

vim.diagnostic.config({
        virtual_text = true,
        signs = true,
 -- 在输入模式下也更新提示，设置为 true 也许会影响性能
})
local signs = { Error = "󰅙", Info = "󰋼", Hint = "󰌵", Warn = "" }
for type, icon in pairs(signs) do
 local hl = "DiagnosticSign" .. type
 vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

