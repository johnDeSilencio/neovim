{
  plugins = {
    mini-map = {
      enable = true;

      settings = {
        window = {
          show_integration_count = true;
          side = "right";
          width = 15;
          winblend = 10;
          zindex = 20;
        };
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>mm";
      action.__raw = ''
        function()
          require('mini.map').toggle()
        end
      '';
      options = {
        desc = "Toggle minimap";
      };
    }
  ];
}
