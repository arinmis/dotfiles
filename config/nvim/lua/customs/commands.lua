vim.api.nvim_create_user_command(
  'Rcr',
  function()
    vim.cmd([[%s/\r//g]])
  end,
  {}
)
