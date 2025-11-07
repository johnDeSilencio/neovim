{
  plugins = {
    cmp = {
      enable = true;

      settings.sources = [
        { name = "calc"; }
        { name = "nvim_lsp"; }
      ];
    };
  };

  imports = [
    ./calc.nix
    ./lsp.nix
  ];

}
