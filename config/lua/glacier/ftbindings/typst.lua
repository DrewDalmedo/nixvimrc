local M = {}

function M.setup()
  vim.api.nvim_create_autocmd('FileType', {
    pattern = 'typst',
    callback = function()
      vim.keymap.set('v', '<C-b>', 'x<esc>i**<esc>P', { 
        noremap = true, 
        silent = true,
        buffer = true,
        desc = "Add asterisks around word"
      })
    end,
  })
end

return M
