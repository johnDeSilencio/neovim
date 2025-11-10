{
  # Import all your configuration modules here

  imports = [
    ./plugins/autopairs.nix
    ./plugins/bufferline.nix
    ./plugins/cmp/default.nix
    ./plugins/colorscheme.nix
    ./plugins/comment.nix
    ./plugins/conform.nix
    ./plugins/crates.nix
    ./plugins/dap.nix
    ./plugins/dap-ui.nix
    ./plugins/gitsigns.nix
    ./plugins/highlight-colors.nix
    ./plugins/icons.nix
    ./plugins/lsp.nix
    ./plugins/lualine.nix
    ./plugins/neotree.nix
    ./plugins/startup/default.nix
    ./plugins/telescope.nix
    ./plugins/transparent.nix
    ./plugins/treesitter.nix
    ./plugins/ts-autotag.nix
    ./plugins/which-key.nix
    ./plugins/zellij.nix
    ./plugins/zellij-nav.nix

    ./keymappings.nix
    ./options.nix
  ];
}
