-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.cmd("colorscheme nvimgelion")
vim.cmd("set number")
-- Highlight YAML front matter
vim.api.nvim_set_var("vim_markdown_frontmatter ", 1)

return {
  -- tmux vim
  { "christoomey/vim-tmux-navigator" },

  -- markdown support
  { "godlygeek/tabular" }, -- required by vim-markdown
  { "plasticboy/vim-markdown" },
}
