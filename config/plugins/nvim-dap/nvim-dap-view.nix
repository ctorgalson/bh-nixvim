# @see https://nix-community.github.io/nixvim/plugins/dap-view/index.html
# @see https://github.com/igorlfs/nvim-dap-view/

{
  plugins = {
    dap-view = {
      enable = true;
      settings = {
        winbar = {
          controls = {
            enabled = true;
          };
        };
        windows = {
          terminal = {
            position = "right";
            start_hidden = true;
          };
        };
      };
    };
  };
}
