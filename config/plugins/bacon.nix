{
  plugins = {
    bacon = {
      enable = true;

      settings = {
        quickfix = {
          enabled = false;
          event_trigger = true;
        };
      };
    };
  };

  keymaps = [
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
