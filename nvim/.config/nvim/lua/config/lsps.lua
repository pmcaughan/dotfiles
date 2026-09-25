vim.lsp.enable('ty')
vim.lsp.enable('gopls')
vim.lsp.enable('ruby-lsp')
vim.lsp.enable('typescript-language-server')
-- vim.lsp.config('typescript-language-server')
-- vim.lsp.config('ruby-lsp')

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client and client.server_capabilities.documentSymbolProvider then
      require("nvim-navic").attach(client, args.buf)
    end
  end,
})
