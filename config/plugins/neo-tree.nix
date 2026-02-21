# @see https://github.com/nvim-neo-tree/neo-tree.nvim
# @see https://nix-community.github.io/nixvim/plugins/neo-tree/index.html
{
  plugins = {
    neo-tree = {
      enable = true;
      settings = {
        close_if_last_window = false;
        enable_diagnostics = true;
        enable_git_status = true;
        enable_modified_markers = true;
        popup_border_style = "rounded";
        log_level = "info";
        sources = [
          "filesystem"
          "buffers"
          "git_status"
        ];
        default_component_configs = {
          indent = {
            with_expanders = true;
          };
        };
        filesystem = {
          follow_current_file = {
            enabled = true;
          };
          use_libuv_file_watcher = true;
        };
        buffers = {
          renderers = {
            directory = [
              [ "indent" ]
              [ "icon" ]
              [ "name" ]
            ];
            file = [
              [ "indent" ]
              [ "icon" ]
              [ "name" ]
              [ "modified" ]
              [ "size" ]
              [ "last_modified" ]
            ];
          };
        };
        git_status = {
          renderers = {
            directory = [
              [ "indent" ]
              [ "icon" ]
              [ "name" ]
            ];
            file = [
              [ "indent" ]
              [ "icon" ]
              [ "name" ]
              [ "git_status" ]
            ];
          };
        };
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>r";
      action = "<cmd>Neotree toggle<CR>";
      options.desc = "Toggle file browser";
    }
  ];
}
