{
  pkgs,
  ...
}:
{
  plugins = {
    telescope = {
      enable = true;

      extensions = {
        fzf-native = {
          enable = true;
        };
      };

      settings = {
        defaults = {
          vimgrep_arguments = [
            "${pkgs.ripgrep}/bin/rg"
            "-L"
            "--color=never"
            "--no-heading"
            "--with-filename"
            "--line-number"
            "--column"
            "--smart-case"
            "--fixed-strings"
          ];
          selection_caret = "  ";
          entry_prefix = "  ";
          layout_strategy = "flex";
          layout_config = {
            horizontal = {
              prompt_position = "top";
            };
          };
          sorting_strategy = "ascending";
          file_ignore_patterns = [ "^.git/" ];
          set_env.COLORTERM = "truecolor";
        };

        pickers = {
          colorscheme = {
            enable_preview = true;
          };
        };
      };
    };
  };

  keymaps = [
    {
      action = "<cmd>Telescope live_grep<cr>";
      key = "<leader>fw";
    }
    {
      action = "<cmd>Telescope find_files<cr>";
      key = "<leader>ff";
    }
    {
      action = "<cmd>Telescope git_commits<cr>";
      key = "<leader>fg";
    }
    {
      action = "<cmd>Telescope oldfiles<cr>";
      key = "<leader>fh";
    }
    {
      action = "<cmd>Telescope colorscheme<cr>";
      key = "<leader>ch";
    }
    {
      action = "<cmd>Telescope man_pages<cr>";
      key = "<leader>fm";
    }
  ];

  extraPackages = with pkgs; [ ripgrep ];
}
