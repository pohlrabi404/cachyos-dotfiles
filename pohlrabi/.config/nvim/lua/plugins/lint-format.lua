return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require('null-ls')
    require('null-ls').setup({
      sources = {
        -- LINTING-FORMATTER
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
      },
    })
    vim.api.nvim_create_autocmd('BufWritePre', {
      pattern = '*',
      callback = function()
        vim.lsp.buf.format({ async = false })
      end,
    })
  end
}
