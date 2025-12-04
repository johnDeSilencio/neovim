{
  plugins = {
    cmp = {
      enable = true;

      settings = {
        mapping = {
          # Select the [n]ext item
          "<C-n>" = "cmp.mapping.select_next_item()";
          # Select the [p]revious item
          "<C-p>" = "cmp.mapping.select_prev_item()";

          # Scroll the documentation [u]p or [d]own
          "<C-u>" = "cmp.mapping.scroll_docs(-4)";
          "<C-d>" = "cmp.mapping.scroll_docs(4)";

          # Exit completion
          "<C-e>" = "cmp.mapping.abort()";

          # Accept completion
          "<CR>" = "cmp.mapping.confirm { select = true }";
          "<C-Space>" = "cmp.mapping.confirm {}";
        };

        sources = [
          { name = "buffer"; }
          { name = "calc"; }
          { name = "nvim_lsp"; }
          { name = "path"; }
        ];
      };
    };
  };

  imports = [
    ./buffer.nix
    ./calc.nix
    ./lsp.nix
    ./path.nix
  ];

}
