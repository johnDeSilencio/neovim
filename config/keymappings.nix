{
  keymaps = [
    # Neo-tree bindings

    {
      action = "<cmd>Neotree toggle<cr>";
      key = "<leader>e";
      options = {
        desc = "Toggle Neotree";
      };
    }

    # Telescope bindings

    {
      action = "<cmd>Telescope live_grep<cr>";
      key = "<leader>fw";
    }
    {
      action = "<cmd>Telescope find_files<cr>";
      key = "<leader>ff";
    }
    {
      action = "<cmd>Telescope git_commits<cr>";
      key = "<leader>fg";
    }
    {
      action = "<cmd>Telescope oldfiles<cr>";
      key = "<leader>fh";
    }
    {
      action = "<cmd>Telescope colorscheme<cr>";
      key = "<leader>ch";
    }
    {
      action = "<cmd>Telescope man_pages<cr>";
      key = "<leader>fm";
    }

    # BufferLine bindings

    {
      mode = "n";
      key = "<Tab>";
      action = "<cmd>BufferLineCycleNext<cr>";
      options = {
        desc = "Cycle to the next buffer";
      };
    }
    {
      mode = "n";
      key = "<S-Tab>";
      action = "<cmd>BufferLineCyclePrev<cr>";
      options = {
        desc = "Cycle to the previous buffer";
      };
    }
    {
      mode = "n";
      key = "<S-l>";
      action = "<cmd>BufferLineCycleNext<cr>";
      options = {
        desc = "Cycle to the next buffer";
      };
    }
    {
      mode = "n";
      key = "<S-h>";
      action = "<cmd>BufferLineCyclePrev<cr>";
      options = {
        desc = "Cycle to the previous buffer";
      };
    }
    {
      mode = "n";
      key = "<leader>bd";
      action = "<cmd>bdelete<cr>";
      options = {
        desc = "Delete the current buffer";
      };
    }

    # Bacon integration
    {
      mode = "n";
      key = ",";
      action = "<cmd>BaconLoad<CR><cmd>w<CR><cmd>BaconNext<CR>";
      options = {
        desc = "Load bacon locations file and move to the next location";
      };
    }
  ];
}
