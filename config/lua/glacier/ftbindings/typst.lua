local M = {}

function M.setup()
  vim.api.nvim_create_autocmd('FileType', {
    pattern = 'typst',
    callback = function()
      vim.keymap.set('n', '<C-b>', 'viw<esc>I*<esc>ea*<esc>', { 
        noremap = true, 
        silent = true,
        buffer = true,
        desc = "Add asterisks around word"
      })
    end,
  })
end

return M
