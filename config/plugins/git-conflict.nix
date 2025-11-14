{
  plugins = {
    git-conflict = {
      enable = true;

      settings = {
        default_commands = true;
        default_mappings = {
          both = "<leader>cb";
          none = "<leader>c0";
          ours = "<leader>co";
          theirs = "<leader>ct";
          next = "<leader>n";
          prev = "<leader>p";
        };

        disable_diagnostics = false;
        highlights = {
          current = "DiffText";
          incoming = "DiffAdd";
        };

        list_opener = "copen";
      };
    };
  };
}
