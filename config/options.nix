{
  globalOpts = {
    # Absolute line number gutter
    number = true;

    # Relative line number gutter
    relativenumber = true;

    # Always show the sign column
    signcolumn = "yes:3";

    # Enable 24-bit RGB color in the TUI
    termguicolors = true;

    # Enable mouse
    mouse = "a";

    #
    # Searching
    #

    # Don't highlight matches
    hlsearch = false;
    # Ignore case in searches by default
    ignorecase = true;
    # But make searches case-sensitive if uppercase is used
    smartcase = true;

    #
    # Tab settings
    #

    # A '\t' character looks like 4 spaces
    tabstop = 2;
    # Delete four spaces at a time
    softtabstop = 2;
    # Number of spaces inserted when indenting
    shiftwidth = 2;
    # Pressing the tab key will insert spaces
    expandtab = true;

    #
    # Clipboard
    #

    # System clipboard support
    clipboard = {
      # Use wl-copy for Wayland and xsel for Xorg
      providers.wl-copy.enable = true;
      register = "wl-copy";
    };

    #
    # Encoding
    #

    encoding = "utf-8";
    fileencoding = "utf-8";

    #
    # History
    #

    undofile = true;
    swapfile = true;
    backup = false;
    autoread = true;

    #
    # Scrolling
    #

    # Start scrolling when the cursor is X lines from the top or bottom
    scrolloff = 8;
  };

  globals.mapleader = " ";
}
