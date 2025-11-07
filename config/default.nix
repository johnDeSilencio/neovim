{
  # Import all your configuration modules here

  imports = [
    ./plugins/autopairs.nix
    ./plugins/bufferline.nix
    ./plugins/colorscheme.nix
    ./plugins/comment.nix
    ./plugins/conform.nix
    ./plugins/gitsigns.nix
    ./plugins/highlight-colors.nix
    ./plugins/icons.nix
    ./plugins/lsp.nix
    ./plugins/lualine.nix
    ./plugins/neotree.nix
    ./plugins/telescope.nix
    ./plugins/transparent.nix
    ./plugins/treesitter.nix

    ./keymappings.nix
    ./options.nix
  ];
}
