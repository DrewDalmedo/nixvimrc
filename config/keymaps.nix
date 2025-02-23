{
  keymaps = [
    # File explorer
    {
      mode = "n";
      key = "<leader>pf";
      action = "<cmd>Ex<cr>";
    }

    # Alternative to Escape (for HHKB)
    {
      mode = "i";
      key = "<C-;>";
      action = "<Esc>";
    }

    # Reload Neovim config
    {
      mode = "n";
      key = "<leader>sr";
      action = ":source $MYVIMRC<cr>";
    }

    # Telescope
    {
      mode = "n";
      key = "<leader>ff";
      action = ":Telescope find_files<cr>";
    }
    {
      mode = "n";
      key = "<leader>fg";
      action = ":Telescope live_grep<cr>";
    }
    {
      mode = "n";
      key = "<leader>fm";
      action = ":Telescope man_pages<cr>";
    }

    # Terminal
    {
      mode = "n";
      key = "<leader>t<CR>";
      action = ":lua require('glacier').terminal.toggles.toggle_terminal_tab()<CR>";
      options.silent = true;
    }
    {
      mode = "n";
      key = "<leader>tb";
      action = ":lua require('glacier').terminal.toggles.toggle_terminal_bottom_win()<CR>";
      options.silent = true;
    }
    {
      mode = "t";
      key = "<leader>dt";
      action = "<C-\\><C-n><cr>";
    }

    # Movements / navigation
    {
      mode = "n";
      key = "<C-d>";
      action = "<C-d>zz";
    }
    {
      mode = "n";
      key = "<C-u>";
      action = "<C-u>zz";
    }
    {
      mode = "n";
      key = "n";
      action = "nzzzv";
    }
    {
      mode = "n";
      key = "N";
      action = "Nzzzv";
    }

    # Directory navigation
    {
      mode = "n";
      key = "<leader>cc";
      action = "<cmd>cd %:p:h<cr>";
    }
    {
      mode = "n";
      key = "<leader>ch";
      action = "<cmd>cd ~<cr>";
    }

    # Clear highlighting
    {
      mode = "n";
      key = "<leader>nv";
      action = "<cmd>noh<cr>";
    }

    # Buffer bindings
    {
      mode = "n";
      key = "<leader>bn";
      action = ":bnext<cr>";
    }
    {
      mode = "n";
      key = "<leader>bp";
      action = ":bprevious<cr>";
    }
    {
      mode = "n";
      key = "<leader>bd";
      action = ":bdelete<cr>";
    }
    {
      mode = "n";
      key = "<leader>bl";
      action = ":ls<cr>";
    }
    {
      mode = "n";
      key = "<leader>bf";
      action = ":bfirst<cr>";
    }
    {
      mode = "n";
      key = "<leader>be";
      action = ":blast<cr>";
    }

    # Window bindings
    {
      mode = "n";
      key = "<leader>wv";
      action = ":vsplit<cr>";
    }
    {
      mode = "n";
      key = "<leader>ws";
      action = ":split<cr>";
    }
    {
      mode = "n";
      key = "<leader>wh";
      action = "<C-w>h";
    }
    {
      mode = "n";
      key = "<leader>wj";
      action = "<C-w>j";
    }
    {
      mode = "n";
      key = "<leader>wk";
      action = "<C-w>k";
    }
    {
      mode = "n";
      key = "<leader>wl";
      action = "<C-w>l";
    }
    {
      mode = "n";
      key = "<leader>w=";
      action = "<C-w>=";
    }
    {
      mode = "n";
      key = "<leader>wq";
      action = ":q<cr>";
    }
    {
      mode = "n";
      key = "<leader>wr";
      action = "<C-w>r";
    }

    # Window resizing
    {
      mode = "n";
      key = "<leader>w,";
      action = ":vertical resize -5<cr>";
    }
    {
      mode = "n";
      key = "<leader>w.";
      action = ":vertical resize +5<cr>";
    }
    {
      mode = "n";
      key = "<leader>w-";
      action = ":resize -5<cr>";
    }
    {
      mode = "n";
      key = "<leader>w+";
      action = ":resize +5<cr>";
    }

    # Tab bindings
    {
      mode = "n";
      key = "<leader>tt";
      action = ":tabnew | Telescope find_files<cr>";
    }
    {
      mode = "n";
      key = "<leader>tj";
      action = ":tabnext<cr>";
    }
    {
      mode = "n";
      key = "<leader>tk";
      action = ":tabprevious<cr>";
    }
    {
      mode = "n";
      key = "<leader>tq";
      action = ":tabclose<cr>";
    }
    {
      mode = "n";
      key = "<leader>tl";
      action = ":tabs<cr>";
    }
    {
      mode = "n";
      key = "<leader>tf";
      action = ":tabfirst<cr>";
    }
    {
      mode = "n";
      key = "<leader>te";
      action = ":tablast<cr>";
    }
    {
      mode = "n";
      key = "<leader>tm";
      action = ":tabmove<cr>";
    }
  ] ++
  # Quick tab navigation with numbers 1-9
  (builtins.map (n: {
    mode = "n";
    key = "<leader>t${toString n}";
    action = "${toString n}gt";
  }) (builtins.genList (n: n + 1) 9));
}
