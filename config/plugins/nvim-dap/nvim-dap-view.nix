# @see https://nix-community.github.io/nixvim/plugins/dap-view/index.html
# @see https://github.com/igorlfs/nvim-dap-view/
# @see https://igorlfs.github.io/nvim-dap-view/home

{
  plugins = {
    dap-view = {
      enable = true;
      settings = {
        # Automatically open/close with debug sessions
        auto_toggle = false;

        # Winbar configuration
        winbar = {
          show = true;
          show_keymap_hints = true;
        };

        # Windows configuration
        windows = {
          # Main window sizing
          size = 0.25;
          position = "below";

          # Terminal configuration
          terminal = {
            size = 0.5;
            position = "right";
            # To hide terminal for specific adapters:
            # hide = [ "php" ];
          };
        };
      };
    };
  };
}
