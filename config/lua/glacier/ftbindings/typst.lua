local M = {}

local function get_bullet_type(line)
  -- Return the bullet type (- or +) if present, nil otherwise
  local bullet = line:match("^%s*([%-+])")
  return bullet
end

local function starts_with_bullet(line)
  -- Trim leading whitespace and check if line starts with - or +
  return line:match("^%s*[%-+]")
end

local function get_indent(line)
  -- Get the indentation level of the line
  return line:match("^(%s*)")
end

local function is_empty_bullet(line)
  -- Check if line is just a bullet point with optional whitespace
  return line:match("^%s*[%-+]%s*$")
end

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

      -- Handle Enter in insert mode
      vim.keymap.set('i', '<CR>', function()
        local line = vim.api.nvim_get_current_line()
        if is_empty_bullet(line) then
          -- Clear the current line and move to next line
          return '<C-u><CR>'
        elseif starts_with_bullet(line) then
          local indent = get_indent(line)
          local bullet = get_bullet_type(line) or '-'
          return '<CR>' .. indent .. bullet .. ' '
        end
        return '<CR>'
      end, {
        buffer = true,
        expr = true,
        desc = "Smart Enter for lists"
      })

      -- Handle o in normal mode
      vim.keymap.set('n', 'o', function()
        local line = vim.api.nvim_get_current_line()
        if starts_with_bullet(line) then
          local indent = get_indent(line)
          local bullet = get_bullet_type(line) or '-'
          return 'o' .. indent .. bullet .. ' '
        end
        return 'o'
      end, {
        buffer = true,
        expr = true,
        desc = "Smart o for lists"
      })

      -- Handle O in normal mode
      vim.keymap.set('n', 'O', function()
        local curr_line_nr = vim.api.nvim_win_get_cursor(0)[1]
        local prev_line = vim.api.nvim_buf_get_lines(0, curr_line_nr - 2, curr_line_nr - 1, false)[1]
        if prev_line and starts_with_bullet(prev_line) then
          local indent = get_indent(prev_line)
          local bullet = get_bullet_type(prev_line) or '-'
          return 'O' .. indent .. bullet .. ' '
        end
        return 'O'
      end, {
        buffer = true,
        expr = true,
        desc = "Smart O for lists"
      })
    end,
  })
end

return M
