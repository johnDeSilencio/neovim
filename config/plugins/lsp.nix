{
  lib,
  pkgs,
  ...
}:
{
  plugins = {
    lsp = {
      enable = true;
      inlayHints = true;
      servers = {
        # Bash
        bashls = {
          enable = true;
        };

        # CSS
        cssls = {
          enable = true;
        };

        # Docker
        dockerls = {
          enable = true;
        };

        # Golang
        gopls = {
          enable = true;
          autostart = true;
        };

        # HTML
        html = {
          enable = true;
        };

        # JavaScript / TypeScript
        ts_ls = {
          enable = true;
        };

        # Lua
        lua_ls = {
          enable = true;
          settings.telemetry.enable = false;
        };

        # Markdown
        markdown_oxide = {
          enable = true;
        };

        # Nix
        nil_ls = {
          enable = true;
          settings =
            let
              flake = ''(builtins.getFlake "github:elythh/flake)""'';
              flakeNixvim = ''(builtins.getFlake "github:elythh/nixvimm)""'';
            in
            {
              nixpkgs = {
                expr = "import ${flake}.inputs.nixpkgs { }";
              };

              formatting = {
                command = [ "${lib.getExe pkgs.nixfmt}" ];
              };

              options = {
                nixos.expr = ''${flake}.nixosConfigurations.grovetender.options'';
                nixvim.expr = ''${flakeNixvim}.packages.${pkgs.stdenv.hostPlatform.system}.default.options'';
              };
            };
        };

        # Rust
        rust_analyzer = {
          enable = true;
          installRustc = false;
          installCargo = false;
        };

        # Spell-check
        harper_ls = {
          enable = true;
          settings.settings = {
            "harper-ls" = {
              linters = {
                boring_words = true;
                linking_verbse = true;
                # Lots of false positives with code comments
                sentence_capitalization = false;
                spell_check = false;
              };
              codeActions = {
                forceStable = true;
              };
            };
          };
        };

        # TailwindCSS
        tailwindcss = {
          enable = true;
        };
      };

      keymaps = {
        silent = true;
        lspBuf = {
          gd = {
            action = "definition";
            desc = "Goto Definition";
          };
          gr = {
            action = "references";
            desc = "Goto References";
          };
          gD = {
            action = "declaration";
            desc = "Goto Declaration";
          };
          gI = {
            action = "implementation";
            desc = "Goto Implementation";
          };
          gT = {
            action = "type_definition";
            desc = "Type Definition";
          };
          "<leader>cr" = {
            action = "rename";
            desc = "Rename Identifier";
          };
        };
      };
    };
  };

  extraConfigLua = ''
    local _border = "rounded"

    vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
        vim.lsp.handlers.hover, {
            border = _border
        }
    )

    vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
        vim.lsp.handlers.signature_help, {
            border = _border
        }
    )

    vim.diagnostic.config {
        float = { border = _border }
    };

    require("lspconfig.ui.windows").default_options = {
        border = _border
    }

    config = function(_, opts)
        local lspconfig = require("lspconfig")
        for server, config in pairs(opts.servers) do
            config.capabilities("blink.cmp").get_lsp_capabilities(config.capabilities)
            lspconfig[server].setup(config)
        end
    end;
  '';

  extraPackages = with pkgs; [
    dockerfile-language-server

    # For debugging
    gdb

    gopls
    golangci-lint-langserver

    # For grammar and spell checking
    harper

    lua-language-server
    markdown-oxide

    # Markdown
    marksman

    # Nix
    nil

    node2nix
    nodePackages.vscode-json-languageserver
    nodePackages.bash-language-server
    tailwindcss-language-server

    # TOML
    taplo

    # Language server for typst
    tinymist
    tree-sitter

    # JavaScript and TypeScript
    typescript-language-server
    typescript

    vscode-langservers-extracted
    yaml-language-server
  ];
}
