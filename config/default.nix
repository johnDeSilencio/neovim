{
  # Import all your configuration modules here
  imports = [
    ./plugins/autopairs.nix
    ./plugins/bufferline.nix
    ./plugins/colorscheme.nix
    ./plugins/icons.nix
    ./plugins/lualine.nix
    ./plugins/neotree.nix
    ./plugins/telescope.nix
    ./plugins/treesitter.nix

    ./keymappings.nix
    ./options.nix
  ];
}
