# @see https://github.com/joshuavial/aider.nvim/
# @see https://nix-community.github.io/nixvim/plugins/aider/index.html
{ pkgs, ... }:

{
  extraPackages = with pkgs; [
    aider-chat
  ];
  plugins = {
    aider = {
      enable = true;
      settings = {};
    };
  };
}
