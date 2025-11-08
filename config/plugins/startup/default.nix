{
  lib,
  ...
}:
{
  plugins = {
    startup = {
      enable = true;

      settings = {
        header = {
          type = "text";
          align = "center";
          fold_section = false;
          title = "Header";
          margin = 5;
          content = [
            "[[   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          ]]"
            "[[    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ]]"
            "[[          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     ]]"
            "[[           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ]]"
            "[[          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ]]"
            "[[   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ]]"
            "[[  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ]]"
            "[[ ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ]]"
            "[[ ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ ]]"
            "[[      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ]]"
            "[[       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ]]"
          ];
          highlight = "Statement";
          default_color = "";
          oldfiles_amount = 0;
        };

        quote = {
          type = "text";
          oldfiles_directory = false;
          align = "center";
          fold_section = false;
          title = "Quote";
          margin = 5;
          content = [ "Loading..." ];
          highlight = "Constant";
          default_color = "";
          oldfiles_amount = 0;
        };

        body = {
          type = "mapping";
          align = "center";
          fold_section = false;
          title = "Commands";
          margin = 5;
          content = [
            [
              " Find File"
              "Telescope find_files"
              "<leader>ff"
            ]
            [
              "󰍉 Find Word"
              "Telescope live_grep"
              "<leader>lg"
            ]
            [
              " Recent Files"
              "Telescope oldfiles"
              "<leader>of"
            ]
            [
              " File Browser"
              "Telescope file_browser"
              "<leader>fb"
            ]
            [
              " Colorschemes"
              "Telescope colorscheme"
              "<leader>cs"
            ]
            [
              " New File"
              "lua require'startup'.new_file()"
              "<leader>nf"
            ]
          ];
          highlight = "String";
          default_color = "";
          oldfiles_amount = 0;
        };

        parts = [
          "header"
          "quote"
          "body"
          # "body_2"
          # "footer"
          # "clock"
          # "footer_2"
        ];
      };

      luaConfig = {
        post = ''
          -- List of quotes that can be used
          ${builtins.readFile ./quotes.lua}

          local function random_quote()
            math.randomseed(os.time() + vim.loop.hrtime())

            return quotes[math.random(#quotes)]
          end

          local startup = require("startup")

          -- Replace placeholder content with random quote
          startup.settings.quote.content = random_quote()
        '';
      };
    };
  };
}
