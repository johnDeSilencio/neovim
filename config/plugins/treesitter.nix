{
  pkgs,
  ...
}:
{
  plugins = {
    treesitter = {
      enable = true;

      settings = {
        indent = {
          enable = true;
        };

        highlight = {
          enable = true;
        };
      };

      nixvimInjections = true;
      grammarPackages = pkgs.vimPlugins.nvim-treesitter.allGrammars ++ [
        # Install tree-sitter-rstml for better Leptos support
        # tree-sitter-rust-with-rstml-grammar
      ];
    };

    # treesitter-context = {
    #   enable = false;
    # };

    # treesitter-textobjects = {
    #   enable = true;

    #   settings = {
    #     select = {
    #       enable = true;
    #       lookahead = true;
    #     };
    #   };
    # };
  };
}
