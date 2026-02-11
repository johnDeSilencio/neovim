{
  plugins = {
    mini-map = {
      enable = true;

      settings = {
        integrations = {
          "__unkeyed-1.builtin_search".__raw = "require('mini.map').gen_integration.builtin_search()";
          "__unkeyed-2.gitsigns".__raw = "require('mini.map').gen_integration.gitsigns()";
          "__unkeyed-3.diagnostic".__raw = "require('mini.map').gen_integration.diagnostic()";
        };

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
