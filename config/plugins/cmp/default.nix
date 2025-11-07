{
  plugins = {
    cmp = {
      enable = true;

      settings.sources = [
        { name = "calc"; }
      ];
    };
  };

  imports = [
    ./calc.nix
  ];

}
