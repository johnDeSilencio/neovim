{
  nixpkgs,
  ...
}:
{
  plugins = {
    lualine = {
      enable = true;
      # TODO: Remove explicit stable installation once Nixvim is fixed on stable
      package = nixpkgs.vimPlugins.lualine-nvim;
    };
  };
}
