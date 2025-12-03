{
  lib,
  pkgs,
  ...
}:
{
  plugins = {
    conform-nvim = {
      enable = true;

      settings = {
        format_on_save = {
          lspFallback = true;
          timeoutMs = 500;
        };

        notify_on_error = true;

        formatters_by_ft = {
          nix = [ "nixfmt" ];
          rust = [ "leptosfmt" ];
          typst = [ "typstyle" ];
          markdown = [ "dprint" ];
        };

        formatters = {
          leptosfmt = {
            command = "leptosfmt";
            args = [
              "--stdin"
              "--rustfmt"
            ];
          };
        };
      };
    };
  };

  extraPackages = with pkgs; [
    dprint
    leptosfmt
    nixfmt
    typstyle
  ];
}
