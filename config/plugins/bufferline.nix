{
  plugins = {
    bufferline = {
      enable = true;

      luaConfig = {
        post = ''
          vim.g.transparent_groups = vim.list_extend(
            vim.g.transparent_groups or {},
            vim.tbl_map(function(v)
              return v.hl_group
            end, vim.tbl_values(require("bufferline.config").highlights))
          )
        '';
      };
    };
  };

  keymaps = [
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
  ];
}
