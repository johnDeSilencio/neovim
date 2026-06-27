{
  plugins = {
    showkeys = {
      enable = true;

      settings = {
        keyformat = {
          "<CR>" = "Enter";
        };

        maxkeys = 6;
        position = "bottom-right";
        timeout = 5;
      };
    };
  };

  keymaps = [
    {
      action = "<cmd>ShowkeysToggle<cr>";
      key = "<leader>tk";
      options = {
        desc = "Toggle showing key presses";
      };
    }
  ];
}
