{
  plugins.neo-tree = {
    enable = true;

    settings = {
      enable_diagnostics = true;
      enable_git_status = true;
      enable_modified_markers = true;
      enable_refresh_on_write = true;
      close_if_last_window = true;

      buffers = {
        followCurrentFile = {
          enabled = true;
        };

        bindToCwd = false;
      };

      window = {
        width = 40;
        height = 15;
        autoExpandWidth = false;
      };

      # Options: "NC", "double", "none", "rounded", "shadow", "single", or "solid"
      popup_border_style = "rounded";
    };
  };

  keymaps = [
    {
      action = "<cmd>Neotree toggle<cr>";
      key = "<leader>e";
      options = {
        desc = "Toggle Neotree";
      };
    }
  ];
}
