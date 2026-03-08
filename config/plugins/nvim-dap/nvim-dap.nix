# @see https://nix-community.github.io/nixvim/plugins/dap/index.html
# @see https://github.com/mfussenegger/nvim-dap/
{ pkgs, ... }:

{
  extraPackages = with pkgs; [
    vscode-extensions.xdebug.php-debug
    nodejs_24  # Required for running the PHP debug adapter
  ];

  plugins = {
    dap = {
      enable = true;

      # Configure the PHP debug adapter
      adapters.executables.php = {
        command = "${pkgs.nodejs_24}/bin/node";
        args = [
          "${pkgs.vscode-extensions.xdebug.php-debug}/share/vscode/extensions/xdebug.php-debug/out/phpDebug.js"
        ];
      };

      # PHP debug configurations
      configurations.php = [
        {
          name = "Listen for Xdebug (DDEV)";
          type = "php";
          request = "launch";
          port = 9003;  # Xdebug 3 default port
          # Map DDEV container paths to local workspace
          pathMappings = {
            "/var/www/html" = ''''${workspaceFolder}'';
          };
        }
        {
          name = "Listen for Xdebug (Generic)";
          type = "php";
          request = "launch";
          port = 9003;
          # No path mapping for local development
        }
      ];
    };
  };
}
