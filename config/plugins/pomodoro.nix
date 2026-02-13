{
  pkgs,
  ...
}:
{
  extraPlugins = with pkgs.vimPlugins; [
    pomo-nvim
  ];

  extraConfigLua = ''
    require("pomo").setup({
      sessions = {
        pomodoro = {
          { name = "Work", duration = "52m" },
          { name = "Break", duration = "17m" },
        },
      },
    })
  '';
}
