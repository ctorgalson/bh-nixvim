{ pkgs, ... }:

# @see https://github.com/kevinm6/nvim-opencode
# @see https://nix-community.github.io/nixvim/plugins/opencode/index.html
{
  plugins = {
    opencode = {
      enable = true;
      settings = {
        provider = "ollama";
        ollama = {
          model = "qwen2.5-coder:3b";
          url = "http://localhost:11434";
        };
      };
    };
  };
  extraPackages = with pkgs; [
    opencode
  ];
}
