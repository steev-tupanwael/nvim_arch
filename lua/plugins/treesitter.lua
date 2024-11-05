return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      autotag = { enable = true },
      ensure_installed = {
        "lua",
        "javascript",
        "typescript",
        "html",
        "css",
        "python",
        "markdown",
      },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = { enable = true },
      auto_install = true,
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = '<C-space>',
          node_incremental = '<C-space>',
          scope_incremental = '<C-p>',
          node_decremental = '<C-del>',
        },
      },
    })
  end
}
