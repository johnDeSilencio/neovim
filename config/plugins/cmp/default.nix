{
  plugins = {
    cmp = {
      enable = true;

      settings.sources = [
        { name = "buffer"; }
        { name = "calc"; }
        { name = "nvim_lsp"; }
        { name = "path"; }
      ];
    };
  };

  imports = [
    ./buffer.nix
    ./calc.nix
    ./lsp.nix
    ./path.nix
  ];

}
