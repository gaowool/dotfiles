require("nvim-tree").setup(
{
    filters = {
        -- 不显示 .git 目录中的内容
        custom = {
            ".git/"
        },
        dotfiles = true
    },
    -- 以图标显示git 状态
    git = {
        enable = true
    }
}
)
vim.api.nvim_set_keymap("n","<C-l>", ":NvimTreeToggle<CR>", {noremap = true, silent = true})
vim.opt.termguicolors = true
require("bufferline").setup{
options = {
        -- 模式改为 tabs ，只显示真实的tabs不显示buffer
        mode = "tabs",
    }

}

