{
  # Import all your configuration modules here

  imports = [
    # tree-sitter-rstml.nixvimModule

    ./plugins/autopairs.nix
    ./plugins/bacon.nix
    ./plugins/bufferline.nix
    ./plugins/cmp/default.nix
    ./plugins/colorscheme.nix
    ./plugins/comment.nix
    ./plugins/conform.nix
    ./plugins/crates.nix
    ./plugins/dap.nix
    ./plugins/dap-ui.nix
    ./plugins/git-conflict.nix
    ./plugins/gitsigns.nix
    ./plugins/hardtime.nix
    ./plugins/icons.nix
    ./plugins/lsp.nix
    ./plugins/lualine.nix
    ./plugins/mini-map.nix
    ./plugins/neotree.nix
    ./plugins/notify.nix
    ./plugins/pomodoro.nix
    ./plugins/startup/default.nix
    ./plugins/telescope.nix
    ./plugins/treesitter.nix
    ./plugins/ts-autotag.nix
    ./plugins/which-key.nix

    ./options.nix
  ];
}
