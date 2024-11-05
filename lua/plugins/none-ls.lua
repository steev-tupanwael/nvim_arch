return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    local formatting = null_ls.builtins.formatting
    local diagnose = null_ls.builtins.diagnostics
    -- local completion = null_ls.builtins.completion.spell

    null_ls.setup({
      source = {
        formatting.stylua,
        formatting.black,
        diagnose.pylint,
        formatting.rubocop,
        diagnose.rubocop,
        formatting.prettier,
        -- diagnose.eslint_d,
        -- completion.htmlhint,
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end
}
