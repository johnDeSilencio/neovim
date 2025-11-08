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
          local function random_quote()
            local quotes = {
                {
                    "Debugging is twice as hard as writing the code in the first place. Therefore, if you write the code as cleverly as possible, you are, by definition, not smart enough to debug it.",
                    "",
                    "- Brian Kernighan",
                },
                {
                    "If you don't fail at least 90% of the time, you're not aiming high enough.",
                    "",
                    "- Alan Kay",
                },
                {
                    "Always code as if the person who ends up maintaining your code is a violent psychopath who knows where you live.",
                    "",
                    "- John Woods",
                },
                {
                    "Perfection is achieved, not when there is nothing more to add, but when there is nothing left to take away.",
                },
                {
                    "If you don't make mistakes, you're not working on hard enough problems.",
                    "",
                    "- Frank Wilczek",
                },
                {
                    "Use tracer bullets to find the target.",
                    "",
                    "Tracer bullets let you home in on your target by trying things and seeing how close they land.",
                },
                {
                    "Always design for concurrency.",
                    "",
                    "Allow for concurrency, and you'll design cleaner interfaces with fewer assumptions.",
                },
                {
                    "Test your software, or your users will.",
                    "",
                    "Test ruthlessly. Don't make your users find bugs for you.",
                },
                {
                    "Don't live with broken windows.",
                    "",
                    "Fix bad designs, wrong decisions, and poor code when you see them.",
                },
                {
                    "Keep knowledge in plain text.",
                    "",
                    "Plain text won't become obsolete. It helps leverage your work and simplifies debugging and testing.",
                },
                {
                    "Use a single editor well.",
                    "",
                    "The editor should be an extension of your hand; make sure your editor is configurable, extensible, and programmable.",
                },
                {
                    "Crash early.",
                    "",
                    "A dead program normally does a lot less damage than a crippled one.",
                },
                {
                    "Design to test.",
                    "",
                    "Start thinking about testing before you write a line of code.",
                },
                {
                    "Work with a user to think like a user.",
                    "",
                    "It's the best way to gain insight into how the system will really be used.",
                },
                {
                    "Test early. Test often. Test automatically.",
                    "",
                    "Tests that run with every build are much more effective than test plans that sit on a shelf.",
                },
                {
                    "Use saboteurs to test your testing.",
                    "",
                    "Introduce bugs on purpose in a separate copy of the source to verify that testing will catch them.",
                },
                {
                    "There's an old story about the person who wished his computer were as easy to use as his telephone. That wish has come true, since I no longer know how to use my telephone.",
                    "",
                    "- Bjarne Stroustrup",
                },
                {
                    'There are only two industries that refer to their customers as "users".',
                    "",
                    "- Edward Tufte",
                },
                {
                    "Easy things should be easy and hard things should be possible.",
                    "",
                    "- Larry Wall",
                },
                { "They did not know it was impossible, so they did it!", "", "- Mark Twain" },
                {
                    "If debugging is the process of removing bugs, then programming must be the process of putting them in.",
                    "",
                    "- Edsger W. Dijkstra",
                },
                {
                    "The average user doesn't give a damn what happens, as long as (1) it works and (2) it's fast.",
                    "",
                    "- Daniel J. Bernstein",
                },
            }

            -- Use current time for RNG seed
            math.randomseed(os.time() + vim.loop.hrtime())

            -- Get random, multi-line quote from list of quotes
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
