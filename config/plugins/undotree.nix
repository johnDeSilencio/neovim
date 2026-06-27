{
  plugins = {
    undotree = {
      enable = true;

      settings = {
        SplitWidth = 40;
      };
    };
  };

  keymaps = [
    {
      action = "<cmd>UndotreeToggle<cr>";
      key = "<leader>tu";
      options = {
        desc = "Toggle undo tree";
      };
    }
  ];
}
