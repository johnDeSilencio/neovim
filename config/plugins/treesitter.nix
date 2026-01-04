{
  pkgs,
  ...
}:
let
  tree-sitter-rust-with-rstml-grammar = pkgs.tree-sitter.buildGrammar {
    language = "rust_with_rstml";
    version = "4ab78c0bb76735dbf4e1bd1a2ec43e953949edb7";
    src = pkgs.fetchFromGitHub {
      owner = "rayliwell";
      repo = "tree-sitter-rstml";
      rev = "4ab78c0bb76735dbf4e1bd1a2ec43e953949edb7";
      sha256 = "sha256-SFV+MdmY5z6DI86VEZMf/lu75QQmM7H7VYSxQg3gkRI=";
    };
    location = "rust_with_rstml";
  };
in
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
        tree-sitter-rust-with-rstml-grammar
      ];
    };

    treesitter-context = {
      enable = false;
    };

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

  extraConfigLua = ''
    local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
    parser_config.rust_with_rustml = {
      install_info = {
        url = "${tree-sitter-rust-with-rstml-grammar}",
      },
      filetype = "rust",
    }
  '';
}
