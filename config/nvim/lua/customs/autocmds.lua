-- remove carriage return characters on file save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  command = "%s/\\r//g",
})
