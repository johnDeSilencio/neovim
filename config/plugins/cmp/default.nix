{
  plugins = {
    cmp = {
      enable = true;

      settings.sources = [
        { name = "calc"; }
        { name = "nvim_lsp"; }
        { name = "path"; }
      ];
    };
  };

  imports = [
    ./calc.nix
    ./lsp.nix
    ./path.nix
  ];

}
